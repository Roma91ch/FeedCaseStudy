//
//  FeedLoader.swift
//  FeedStudy
//
//  Created by Roman Chopovenko on 02.02.2020.
//  Copyright © 2020 romito. All rights reserved.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
