//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Roman Chopovenko on 12.02.2020.
//  Copyright © 2020 romito. All rights reserved.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
