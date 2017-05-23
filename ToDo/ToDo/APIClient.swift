//
//  APIClient.swift
//  ToDo
//
//  Created by Xavi Moll on 23/05/2017.
//  Copyright © 2017 Xavi Moll. All rights reserved.
//

import Foundation

protocol SessionProtocol {
    func dataTask( with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask
}

class APIClient {
    lazy var session: SessionProtocol = URLSession.shared
    
    func loginUser(withName username: String, password: String, completion: @escaping (Token?, Error?) -> Void) {
        let query = "username=\(username)&password=\(password)"
        guard let url = URL(string:
            "https://awesometodos.com/login?\(query)") else {
                fatalError()
        }
        session.dataTask(with: url) { (data, response, error) in
    
        }
    }
}

extension URLSession: SessionProtocol {}
