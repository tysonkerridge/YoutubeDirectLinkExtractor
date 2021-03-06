//
//  YoutubeDirectLinkExtractor.swift
//  Andrey Sevrikov
//
//  Created by Andrey Sevrikov on 04/03/2018.
//  Copyright © 2018 Andrey Sevrikov. All rights reserved.
//

import Foundation

public class YoutubeDirectLinkExtractor {
    
    private let infoBasePrefix = "https://www.youtube.com/get_video_info?html5=1&video_id="
    private let userAgent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0.3 Safari/604.5.6"
   
    private var session: URLSession
    
    // MARK: - Public
    
    public init(session: URLSession) {
        self.session = session
    }
    
    public convenience init() {
        self.init(session: URLSession.shared)
    }
    
    public func extractInfo(for source: ExtractionSource,
                            success: @escaping (RemoteYouTubeVideo) -> Void,
                            failure: @escaping (Swift.Error) -> Void) {
        
        extractRawInfo(for: source) { info, error in
            
            if let error = error {
                failure(error)
                return
            }
            
            guard let info = info else {
                failure(Error.unkown)
                return
            }
            
            success(info)
        }
    }
    
    // MARK: - Internal
    
    func extractRawInfo(for source: ExtractionSource,
                        completion: @escaping (RemoteYouTubeVideo?, Swift.Error?) -> Void) {
        
        guard let id = source.videoId else {
            completion(nil, Error.cantExtractVideoId)
            return
        }
        
        guard let infoUrl = URL(string: "\(infoBasePrefix)\(id)") else {
            completion(nil, Error.cantConstructRequestUrl)
            return
        }
        
        let r = NSMutableURLRequest(url: infoUrl)
        r.httpMethod = "GET"
        r.setValue(userAgent, forHTTPHeaderField: "User-Agent")
        
        session.dataTask(with: r as URLRequest) { data, response, error in
            
            guard let data = data else {
                completion(nil, error ?? Error.noDataInResponse)
                return
            }
            
            guard let dataString = String(data: data, encoding: .utf8) else {
                completion(nil, Error.cantConvertDataToString)
                return
            }
            
            let pairs = dataString.queryComponents()
            
            guard
                let playerResponse = pairs["player_response"],
                !playerResponse.isEmpty,
                let playerResponseData = playerResponse.data(using: .utf8)
            else {
                let error = YoutubeError(errorDescription: pairs["reason"])
                completion(nil, error ?? Error.cantExtractURLFromYoutubeResponse)
                return
            }
            
            do {
                let info = try JSONDecoder().decode(RemoteYouTubeVideo.self, from: playerResponseData)
                completion(info, nil)
            } catch {
                completion(nil, error)
            }
            
        }.resume()
        
    }
}
