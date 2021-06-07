//
//  VideoInfo.swift
//  YoutubeDirectLinkExtractor
//
//  Created by Andrey Sevrikov on 05/03/2018.
//  Copyright © 2018 Andrey Sevrikov. All rights reserved.
//

import Foundation
import AVFoundation

extension RemoteYouTubeVideo {
    
    /// - Note: This can take some time so best to do off main queue.
    public var highestQualityPlayableLink: String? {
        let urls = streamingData?.formats?.compactMap { format in
            format.url.flatMap { url in
                format.bitrate.map { (url, $0) }
            }
        }.sorted(by: { $0.1 > $1.1 }).map { $0.0 } ?? []
        return firstPlayable(from: urls)
    }
    
    /// - Note: This can take some time so best to do off main queue.
    public var lowestQualityPlayableLink: String? {
        let urls = streamingData?.formats?.compactMap { format in
            format.url.flatMap { url in
                format.bitrate.map { (url, $0) }
            }
        }.sorted(by: { $0.1 < $1.1 }).map { $0.0 } ?? []
        return firstPlayable(from: urls)
    }
    
    /// - Note: This can take some time so best to do off main queue.
    private func firstPlayable(from urls: [String]) -> String? {
        for urlString in urls {
            guard let url = URL(string: urlString) else {
                continue
            }
            let asset = AVAsset(url: url)
            if asset.isPlayable {
                return urlString
            }
        }
        
        return nil
    }
    
    public func getHighestQualityPlayableLink(
        workQueue: DispatchQueue = .global(qos: .utility),
        returnQueue: DispatchQueue = .main,
        completion: @escaping (String?) -> Void
    ) {
        workQueue.async {
            let link = self.highestQualityPlayableLink
            returnQueue.async {
                completion(link)
            }
        }
    }
    
    public func getLowestQualityPlayableLink(
        workQueue: DispatchQueue = .global(qos: .utility),
        returnQueue: DispatchQueue = .main,
        completion: @escaping (String?) -> Void
    ) {
        workQueue.async {
            let link = self.lowestQualityPlayableLink
            returnQueue.async {
                completion(link)
            }
        }
    }
    
}
