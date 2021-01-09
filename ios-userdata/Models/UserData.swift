import Foundation

struct BaseResponse: Codable {
    let results: [Results]
    let info: Info
}

struct Results: Codable {
    
    //let gender: String?
    let name: Name?
    //let location: Location?
    
}

struct Name: Codable {
    let title: String?
    let first: String?
    let last: String?
}

//struct Location: Codable {
//    let street: Street?
//}
//
//struct Street: Codable {
//    let name: String?
//    let number: String?
//}

struct Info: Codable {
    let seed: String?
    let results: Int?
    let page: Int?
    let version: String?
    
}
