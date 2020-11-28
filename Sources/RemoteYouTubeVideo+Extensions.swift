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
    
    public var highestQualityPlayableLink: String? {
        let urls = streamingData?.formats?.compactMap { $0.url } ?? []
        return firstPlayable(from: urls)
    }
    
    public var lowestQualityPlayableLink: String? {
        let urls = streamingData?.formats?.reversed().compactMap { $0.url } ?? []
        return firstPlayable(from: urls)
    }
    
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
    
}
