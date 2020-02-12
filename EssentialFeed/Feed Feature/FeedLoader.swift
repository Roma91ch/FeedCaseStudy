//
//  FeedLoader.swift
//  FeedStudy
//
//  Created by Roman Chopovenko on 02.02.2020.
//  Copyright © 2020 romito. All rights reserved.
//

import Foundation

public enum LoadFeedResult<Error: Swift.Error> {
    case success([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    associatedtype Error: Swift.Error
    func load(completion: @escaping (LoadFeedResult<Error>) -> Void)
}
