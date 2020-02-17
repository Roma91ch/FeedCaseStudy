//
//  URLSessionHTTPClient.swift
//  EssentialFeed
//
//  Created by Roman Chopovenko on 17.02.2020.
//  Copyright © 2020 romito. All rights reserved.
//

import Foundation

public class URLSessionHTTPClient: HTTPClient {
    private let session: URLSession
    
    public init(session: URLSession = .shared) {
        self.session = session
    }
    
    private struct UnexpectedValuesRepresenteationValue: Error {}
    
    public func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void) {
        session.dataTask(with: url, completionHandler: {data, response, error in
            if let error = error {
                completion(.failure(error))
            } else if let data = data, let response = response as? HTTPURLResponse {
                completion(.success(data, response))
            } else {
                completion(.failure(UnexpectedValuesRepresenteationValue()))
            }
        }).resume()
    }
}
