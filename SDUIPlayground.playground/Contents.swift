import UIKit

let json = """
{
    "type": "featuredImage",
    "rating": 4,
    "isVisible": true
}
"""

enum DecodingError: Error {
    case dataCorruptedError
}

struct JSON: Decodable {
    var value: Any
    
    private struct CodingKeys: CodingKey {
        var stringValue: String
        
        init?(stringValue: String) {
            self.stringValue = stringValue
        }
        
        var intValue: Int?
        
        init?(intValue: Int) {
            self.stringValue = "\(intValue)"
            self.intValue = intValue
        }
    }
    
    init(from decoder: Decoder) throws {
        if let container = try? decoder.container(keyedBy: CodingKeys.self) {
            var result = [String: Any]()
            for key in container.allKeys {
                result[key.stringValue] = try container.decode(JSON.self, forKey: key).value
            }
            value = result
        } else if let container = try? decoder.singleValueContainer() {
            if let stringValue = try? container.decode(String.self) {
                value = stringValue
            } else if let intValue = try? container.decode(Int.self) {
                value = intValue
            } else if let doubleValue = try? container.decode(Double.self) {
                value = doubleValue
            } else if let boolValue = try? container.decode(Bool.self) {
                value = boolValue
            } else if let arrayValue = try? container.decode([JSON].self) {
                value = arrayValue.map{ $0 }
            } else {
                throw DecodingError.dataCorruptedError
            }
        } else {
            throw DecodingError.dataCorruptedError
        }
    }
    
}
do {
    print(try JSONDecoder().decode(JSON.self, from: json.data(using: .utf8)!))
} catch {
    print(error)
}
