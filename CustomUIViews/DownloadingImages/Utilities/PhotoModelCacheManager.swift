//
//  PhotoModelCacheManager.swift
//  CustomUIViews
//
//  Created by Jaejun Shin on 23/11/2022.
//

import Foundation
import SwiftUI

class PhotoModelCacheManager {
    static let instance = PhotoModelCacheManager()
    private init() { }

    var photoCache: NSCache<NSString, UIImage> = {
        var cache = NSCache<NSString, UIImage>()
        cache.countLimit = 200
        cache.totalCostLimit = 1024 * 1024 * 300

        return cache
    }()

    func add(key: String, value: UIImage) {
        photoCache.setObject(value, forKey: key as NSString)
    }

    func get(key: String) -> UIImage? {
        photoCache.object(forKey: key as NSString)
    }
}
