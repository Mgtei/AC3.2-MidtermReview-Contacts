//
//  Contacts.swift
//  AC3.2-MidtermReview-Contacts
//
//  Created by Margaret Ikeda on 12/6/16.
//  Copyright © 2016 Margaret Ikeda. All rights reserved.
//

import Foundation
class Contacts {
    let firstName: String
    let lastName: String
    let email: String
    
    init(firstName: String, lastName: String, email: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
    }
    func getData() {
        let baseUrl = "https://api.fieldbook.com/v1/"
        let bookId = "5846f3815fcbbc0300398b83"
        let url = URL(baseUrl + bookId)
    }
}
//    func newRequest() {
//        let url = URL(string: "https://randomuser.me/api")!
//        var request: URLRequest = URLRequest(url: url)
//        request.httpMethod = "GET"
//        //below will be important any time we do anything other than GET
//        request.addValue("application/json", forHTTPHeaderField: "Accept")
//
//        let session = URLSession(configuration: URLSessionConfiguration.default)
//        session.dataTask(with: request) { (data: Data?, _, _) in
//            if data != nil {
//                print("Hellz yeah DATA: \(data)")
//
//                do {
//                    let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String : Any]
//
//                    if let validJson = json {
//                        print(validJson)
//                    }
//                }
//                catch {
//                    print("Problems casting json: \(error)")
//                }
//            }
//            }.resume()
//}
