import UIKit

protocol Encryption {
    func doEncryption(key: UInt8) -> Self?
}


extension String : Encryption{
    func doEncryption(key: UInt8) -> String? {
        return String(bytes: self.utf8.map({ $0 ^ key}), encoding: .utf8)
    }
}


let hello = "hello"
let encryptedString = hello.doEncryption(key: 48)
let decryptedString = encryptedString?.doEncryption(key: 48)
