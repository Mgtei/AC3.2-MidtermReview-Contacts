//
//  ApiRequestManager.swift
//  AC3.2-MidtermReview-Contacts
//
//  Created by Margaret Ikeda on 12/6/16.
//  Copyright © 2016 Margaret Ikeda. All rights reserved.
//

import Foundation
class APIRequestManager {
    
    static let manager = APIRequestManager()
    private init() {}
    
    func getData(endpoint: String, callback: @escaping (Data?) -> Void) {
        guard let myURL = URL(string: endpoint) else { return }
        let session = URLSession(configuration: URLSessionConfiguration.default)
        session.dataTask(with: myURL) { (data, response, error) in
            if error != nil {
                print("Error during session: \(error)")
            }
            guard let validData = data else { return }
            callback(validData)
            }.resume()
    }
}
