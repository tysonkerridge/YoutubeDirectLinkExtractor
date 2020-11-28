//
//  RemoteYouTubeVideo.swift
//  YoutubeDirectLinkExtractor
//
//  Created by Tyson Kerridge on 28/11/20.
//  Copyright © 2020 Andrey Sevrikov. All rights reserved.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let remoteYouTubeVideo = try? newJSONDecoder().decode(RemoteYouTubeVideo.self, from: jsonData)

import Foundation

// MARK: - RemoteYouTubeVideo
public struct RemoteYouTubeVideo: Codable {
    public let responseContext: RemoteResponseContext?
    public let playabilityStatus: RemotePlayabilityStatus?
    public let streamingData: RemoteStreamingData?
    public let playbackTracking: RemotePlaybackTracking?
    public let captions: RemoteCaptions?
    public let videoDetails: RemoteVideoDetails?
    public let annotations: [RemoteAnnotation]?
    public let playerConfig: RemotePlayerConfig?
    public let storyboards: RemoteStoryboards?
    public let microformat: RemoteMicroformat?
    public let cards: RemoteCards?
    public let trackingParams: String?
    public let attestation: RemoteAttestation?
    public let videoQualityPromoSupportedRenderers: RemoteVideoQualityPromoSupportedRenderers?
    public let endscreen: RemoteEndscreen?

    enum CodingKeys: String, CodingKey {
        case responseContext = "responseContext"
        case playabilityStatus = "playabilityStatus"
        case streamingData = "streamingData"
        case playbackTracking = "playbackTracking"
        case captions = "captions"
        case videoDetails = "videoDetails"
        case annotations = "annotations"
        case playerConfig = "playerConfig"
        case storyboards = "storyboards"
        case microformat = "microformat"
        case cards = "cards"
        case trackingParams = "trackingParams"
        case attestation = "attestation"
        case videoQualityPromoSupportedRenderers = "videoQualityPromoSupportedRenderers"
        case endscreen = "endscreen"
    }

    public init(responseContext: RemoteResponseContext?, playabilityStatus: RemotePlayabilityStatus?, streamingData: RemoteStreamingData?, playbackTracking: RemotePlaybackTracking?, captions: RemoteCaptions?, videoDetails: RemoteVideoDetails?, annotations: [RemoteAnnotation]?, playerConfig: RemotePlayerConfig?, storyboards: RemoteStoryboards?, microformat: RemoteMicroformat?, cards: RemoteCards?, trackingParams: String?, attestation: RemoteAttestation?, videoQualityPromoSupportedRenderers: RemoteVideoQualityPromoSupportedRenderers?, endscreen: RemoteEndscreen?) {
        self.responseContext = responseContext
        self.playabilityStatus = playabilityStatus
        self.streamingData = streamingData
        self.playbackTracking = playbackTracking
        self.captions = captions
        self.videoDetails = videoDetails
        self.annotations = annotations
        self.playerConfig = playerConfig
        self.storyboards = storyboards
        self.microformat = microformat
        self.cards = cards
        self.trackingParams = trackingParams
        self.attestation = attestation
        self.videoQualityPromoSupportedRenderers = videoQualityPromoSupportedRenderers
        self.endscreen = endscreen
    }
}

// MARK: - RemoteAnnotation
public struct RemoteAnnotation: Codable {
    public let playerAnnotationsExpandedRenderer: RemotePlayerAnnotationsExpandedRenderer?

    enum CodingKeys: String, CodingKey {
        case playerAnnotationsExpandedRenderer = "playerAnnotationsExpandedRenderer"
    }

    public init(playerAnnotationsExpandedRenderer: RemotePlayerAnnotationsExpandedRenderer?) {
        self.playerAnnotationsExpandedRenderer = playerAnnotationsExpandedRenderer
    }
}

// MARK: - RemotePlayerAnnotationsExpandedRenderer
public struct RemotePlayerAnnotationsExpandedRenderer: Codable {
    public let featuredChannel: RemoteFeaturedChannel?
    public let allowSwipeDismiss: Bool?
    public let annotationID: String?

    enum CodingKeys: String, CodingKey {
        case featuredChannel = "featuredChannel"
        case allowSwipeDismiss = "allowSwipeDismiss"
        case annotationID = "annotationId"
    }

    public init(featuredChannel: RemoteFeaturedChannel?, allowSwipeDismiss: Bool?, annotationID: String?) {
        self.featuredChannel = featuredChannel
        self.allowSwipeDismiss = allowSwipeDismiss
        self.annotationID = annotationID
    }
}

// MARK: - RemoteFeaturedChannel
public struct RemoteFeaturedChannel: Codable {
    public let startTimeMS: String?
    public let endTimeMS: String?
    public let watermark: RemoteWatermarkClass?
    public let trackingParams: String?
    public let navigationEndpoint: RemoteNavigationEndpoint?
    public let channelName: String?
    public let subscribeButton: RemoteSubscribeButton?

    enum CodingKeys: String, CodingKey {
        case startTimeMS = "startTimeMs"
        case endTimeMS = "endTimeMs"
        case watermark = "watermark"
        case trackingParams = "trackingParams"
        case navigationEndpoint = "navigationEndpoint"
        case channelName = "channelName"
        case subscribeButton = "subscribeButton"
    }

    public init(startTimeMS: String?, endTimeMS: String?, watermark: RemoteWatermarkClass?, trackingParams: String?, navigationEndpoint: RemoteNavigationEndpoint?, channelName: String?, subscribeButton: RemoteSubscribeButton?) {
        self.startTimeMS = startTimeMS
        self.endTimeMS = endTimeMS
        self.watermark = watermark
        self.trackingParams = trackingParams
        self.navigationEndpoint = navigationEndpoint
        self.channelName = channelName
        self.subscribeButton = subscribeButton
    }
}

// MARK: - RemoteNavigationEndpoint
public struct RemoteNavigationEndpoint: Codable {
    public let clickTrackingParams: String?
    public let commandMetadata: RemoteNavigationEndpointCommandMetadata?
    public let browseEndpoint: RemoteBrowseEndpoint?

    enum CodingKeys: String, CodingKey {
        case clickTrackingParams = "clickTrackingParams"
        case commandMetadata = "commandMetadata"
        case browseEndpoint = "browseEndpoint"
    }

    public init(clickTrackingParams: String?, commandMetadata: RemoteNavigationEndpointCommandMetadata?, browseEndpoint: RemoteBrowseEndpoint?) {
        self.clickTrackingParams = clickTrackingParams
        self.commandMetadata = commandMetadata
        self.browseEndpoint = browseEndpoint
    }
}

// MARK: - RemoteBrowseEndpoint
public struct RemoteBrowseEndpoint: Codable {
    public let browseID: String?

    enum CodingKeys: String, CodingKey {
        case browseID = "browseId"
    }

    public init(browseID: String?) {
        self.browseID = browseID
    }
}

// MARK: - RemoteNavigationEndpointCommandMetadata
public struct RemoteNavigationEndpointCommandMetadata: Codable {
    public let webCommandMetadata: RemotePurpleWebCommandMetadata?

    enum CodingKeys: String, CodingKey {
        case webCommandMetadata = "webCommandMetadata"
    }

    public init(webCommandMetadata: RemotePurpleWebCommandMetadata?) {
        self.webCommandMetadata = webCommandMetadata
    }
}

// MARK: - RemotePurpleWebCommandMetadata
public struct RemotePurpleWebCommandMetadata: Codable {
    public let url: String?
    public let webPageType: String?
    public let rootVe: Int?

    enum CodingKeys: String, CodingKey {
        case url = "url"
        case webPageType = "webPageType"
        case rootVe = "rootVe"
    }

    public init(url: String?, webPageType: String?, rootVe: Int?) {
        self.url = url
        self.webPageType = webPageType
        self.rootVe = rootVe
    }
}

// MARK: - RemoteSubscribeButton
public struct RemoteSubscribeButton: Codable {
    public let subscribeButtonRenderer: RemoteSubscribeButtonRenderer?

    enum CodingKeys: String, CodingKey {
        case subscribeButtonRenderer = "subscribeButtonRenderer"
    }

    public init(subscribeButtonRenderer: RemoteSubscribeButtonRenderer?) {
        self.subscribeButtonRenderer = subscribeButtonRenderer
    }
}

// MARK: - RemoteSubscribeButtonRenderer
public struct RemoteSubscribeButtonRenderer: Codable {
    public let buttonText: RemoteResponseText?
    public let subscribed: Bool?
    public let enabled: Bool?
    public let type: String?
    public let channelID: String?
    public let showPreferences: Bool?
    public let subscribedButtonText: RemoteResponseText?
    public let unsubscribedButtonText: RemoteResponseText?
    public let trackingParams: String?
    public let unsubscribeButtonText: RemoteResponseText?
    public let serviceEndpoints: [RemoteSubscribeCommand]?
    public let subscribeAccessibility: RemoteSubscribeAccessibilityClass?
    public let unsubscribeAccessibility: RemoteSubscribeAccessibilityClass?
    public let signInEndpoint: RemoteSignInEndpoint?

    enum CodingKeys: String, CodingKey {
        case buttonText = "buttonText"
        case subscribed = "subscribed"
        case enabled = "enabled"
        case type = "type"
        case channelID = "channelId"
        case showPreferences = "showPreferences"
        case subscribedButtonText = "subscribedButtonText"
        case unsubscribedButtonText = "unsubscribedButtonText"
        case trackingParams = "trackingParams"
        case unsubscribeButtonText = "unsubscribeButtonText"
        case serviceEndpoints = "serviceEndpoints"
        case subscribeAccessibility = "subscribeAccessibility"
        case unsubscribeAccessibility = "unsubscribeAccessibility"
        case signInEndpoint = "signInEndpoint"
    }

    public init(buttonText: RemoteResponseText?, subscribed: Bool?, enabled: Bool?, type: String?, channelID: String?, showPreferences: Bool?, subscribedButtonText: RemoteResponseText?, unsubscribedButtonText: RemoteResponseText?, trackingParams: String?, unsubscribeButtonText: RemoteResponseText?, serviceEndpoints: [RemoteSubscribeCommand]?, subscribeAccessibility: RemoteSubscribeAccessibilityClass?, unsubscribeAccessibility: RemoteSubscribeAccessibilityClass?, signInEndpoint: RemoteSignInEndpoint?) {
        self.buttonText = buttonText
        self.subscribed = subscribed
        self.enabled = enabled
        self.type = type
        self.channelID = channelID
        self.showPreferences = showPreferences
        self.subscribedButtonText = subscribedButtonText
        self.unsubscribedButtonText = unsubscribedButtonText
        self.trackingParams = trackingParams
        self.unsubscribeButtonText = unsubscribeButtonText
        self.serviceEndpoints = serviceEndpoints
        self.subscribeAccessibility = subscribeAccessibility
        self.unsubscribeAccessibility = unsubscribeAccessibility
        self.signInEndpoint = signInEndpoint
    }
}

// MARK: - RemoteResponseText
public struct RemoteResponseText: Codable {
    public let runs: [RemoteResponseTextRun]?

    enum CodingKeys: String, CodingKey {
        case runs = "runs"
    }

    public init(runs: [RemoteResponseTextRun]?) {
        self.runs = runs
    }
}

// MARK: - RemoteResponseTextRun
public struct RemoteResponseTextRun: Codable {
    public let text: String?

    enum CodingKeys: String, CodingKey {
        case text = "text"
    }

    public init(text: String?) {
        self.text = text
    }
}

// MARK: - RemoteSubscribeCommand
public struct RemoteSubscribeCommand: Codable {
    public let clickTrackingParams: String?
    public let commandMetadata: RemoteSubscribeCommandCommandMetadata?
    public let subscribeEndpoint: RemoteSubscribeEndpoint?
    public let signalServiceEndpoint: RemoteSignalServiceEndpoint?

    enum CodingKeys: String, CodingKey {
        case clickTrackingParams = "clickTrackingParams"
        case commandMetadata = "commandMetadata"
        case subscribeEndpoint = "subscribeEndpoint"
        case signalServiceEndpoint = "signalServiceEndpoint"
    }

    public init(clickTrackingParams: String?, commandMetadata: RemoteSubscribeCommandCommandMetadata?, subscribeEndpoint: RemoteSubscribeEndpoint?, signalServiceEndpoint: RemoteSignalServiceEndpoint?) {
        self.clickTrackingParams = clickTrackingParams
        self.commandMetadata = commandMetadata
        self.subscribeEndpoint = subscribeEndpoint
        self.signalServiceEndpoint = signalServiceEndpoint
    }
}

// MARK: - RemoteSubscribeCommandCommandMetadata
public struct RemoteSubscribeCommandCommandMetadata: Codable {
    public let webCommandMetadata: RemoteFluffyWebCommandMetadata?

    enum CodingKeys: String, CodingKey {
        case webCommandMetadata = "webCommandMetadata"
    }

    public init(webCommandMetadata: RemoteFluffyWebCommandMetadata?) {
        self.webCommandMetadata = webCommandMetadata
    }
}

// MARK: - RemoteFluffyWebCommandMetadata
public struct RemoteFluffyWebCommandMetadata: Codable {
    public let url: String?
    public let sendPost: Bool?
    public let apiURL: String?

    enum CodingKeys: String, CodingKey {
        case url = "url"
        case sendPost = "sendPost"
        case apiURL = "apiUrl"
    }

    public init(url: String?, sendPost: Bool?, apiURL: String?) {
        self.url = url
        self.sendPost = sendPost
        self.apiURL = apiURL
    }
}

// MARK: - RemoteSignalServiceEndpoint
public struct RemoteSignalServiceEndpoint: Codable {
    public let signal: String?
    public let actions: [RemoteSignalServiceEndpointAction]?

    enum CodingKeys: String, CodingKey {
        case signal = "signal"
        case actions = "actions"
    }

    public init(signal: String?, actions: [RemoteSignalServiceEndpointAction]?) {
        self.signal = signal
        self.actions = actions
    }
}

// MARK: - RemoteSignalServiceEndpointAction
public struct RemoteSignalServiceEndpointAction: Codable {
    public let clickTrackingParams: String?
    public let openPopupAction: RemoteOpenPopupAction?

    enum CodingKeys: String, CodingKey {
        case clickTrackingParams = "clickTrackingParams"
        case openPopupAction = "openPopupAction"
    }

    public init(clickTrackingParams: String?, openPopupAction: RemoteOpenPopupAction?) {
        self.clickTrackingParams = clickTrackingParams
        self.openPopupAction = openPopupAction
    }
}

// MARK: - RemoteOpenPopupAction
public struct RemoteOpenPopupAction: Codable {
    public let popup: RemotePopup?
    public let popupType: String?

    enum CodingKeys: String, CodingKey {
        case popup = "popup"
        case popupType = "popupType"
    }

    public init(popup: RemotePopup?, popupType: String?) {
        self.popup = popup
        self.popupType = popupType
    }
}

// MARK: - RemotePopup
public struct RemotePopup: Codable {
    public let confirmDialogRenderer: RemoteConfirmDialogRenderer?

    enum CodingKeys: String, CodingKey {
        case confirmDialogRenderer = "confirmDialogRenderer"
    }

    public init(confirmDialogRenderer: RemoteConfirmDialogRenderer?) {
        self.confirmDialogRenderer = confirmDialogRenderer
    }
}

// MARK: - RemoteConfirmDialogRenderer
public struct RemoteConfirmDialogRenderer: Codable {
    public let trackingParams: String?
    public let dialogMessages: [RemoteResponseText]?
    public let confirmButton: RemoteButton?
    public let cancelButton: RemoteButton?
    public let primaryIsCancel: Bool?

    enum CodingKeys: String, CodingKey {
        case trackingParams = "trackingParams"
        case dialogMessages = "dialogMessages"
        case confirmButton = "confirmButton"
        case cancelButton = "cancelButton"
        case primaryIsCancel = "primaryIsCancel"
    }

    public init(trackingParams: String?, dialogMessages: [RemoteResponseText]?, confirmButton: RemoteButton?, cancelButton: RemoteButton?, primaryIsCancel: Bool?) {
        self.trackingParams = trackingParams
        self.dialogMessages = dialogMessages
        self.confirmButton = confirmButton
        self.cancelButton = cancelButton
        self.primaryIsCancel = primaryIsCancel
    }
}

// MARK: - RemoteButton
public struct RemoteButton: Codable {
    public let buttonRenderer: RemoteCancelButtonButtonRenderer?

    enum CodingKeys: String, CodingKey {
        case buttonRenderer = "buttonRenderer"
    }

    public init(buttonRenderer: RemoteCancelButtonButtonRenderer?) {
        self.buttonRenderer = buttonRenderer
    }
}

// MARK: - RemoteCancelButtonButtonRenderer
public struct RemoteCancelButtonButtonRenderer: Codable {
    public let style: String?
    public let size: String?
    public let isDisabled: Bool?
    public let text: RemoteResponseText?
    public let accessibility: RemoteAccessibilityDataClass?
    public let trackingParams: String?
    public let serviceEndpoint: RemoteUnsubscribeCommand?

    enum CodingKeys: String, CodingKey {
        case style = "style"
        case size = "size"
        case isDisabled = "isDisabled"
        case text = "text"
        case accessibility = "accessibility"
        case trackingParams = "trackingParams"
        case serviceEndpoint = "serviceEndpoint"
    }

    public init(style: String?, size: String?, isDisabled: Bool?, text: RemoteResponseText?, accessibility: RemoteAccessibilityDataClass?, trackingParams: String?, serviceEndpoint: RemoteUnsubscribeCommand?) {
        self.style = style
        self.size = size
        self.isDisabled = isDisabled
        self.text = text
        self.accessibility = accessibility
        self.trackingParams = trackingParams
        self.serviceEndpoint = serviceEndpoint
    }
}

// MARK: - RemoteAccessibilityDataClass
public struct RemoteAccessibilityDataClass: Codable {
    public let label: String?

    enum CodingKeys: String, CodingKey {
        case label = "label"
    }

    public init(label: String?) {
        self.label = label
    }
}

// MARK: - RemoteUnsubscribeCommand
public struct RemoteUnsubscribeCommand: Codable {
    public let clickTrackingParams: String?
    public let commandMetadata: RemoteSubscribeCommandCommandMetadata?
    public let unsubscribeEndpoint: RemoteSubscribeEndpoint?

    enum CodingKeys: String, CodingKey {
        case clickTrackingParams = "clickTrackingParams"
        case commandMetadata = "commandMetadata"
        case unsubscribeEndpoint = "unsubscribeEndpoint"
    }

    public init(clickTrackingParams: String?, commandMetadata: RemoteSubscribeCommandCommandMetadata?, unsubscribeEndpoint: RemoteSubscribeEndpoint?) {
        self.clickTrackingParams = clickTrackingParams
        self.commandMetadata = commandMetadata
        self.unsubscribeEndpoint = unsubscribeEndpoint
    }
}

// MARK: - RemoteSubscribeEndpoint
public struct RemoteSubscribeEndpoint: Codable {
    public let channelIDS: [String]?
    public let params: String?

    enum CodingKeys: String, CodingKey {
        case channelIDS = "channelIds"
        case params = "params"
    }

    public init(channelIDS: [String]?, params: String?) {
        self.channelIDS = channelIDS
        self.params = params
    }
}

// MARK: - RemoteSignInEndpoint
public struct RemoteSignInEndpoint: Codable {
    public let clickTrackingParams: String?
    public let commandMetadata: RemoteSignInEndpointCommandMetadata?

    enum CodingKeys: String, CodingKey {
        case clickTrackingParams = "clickTrackingParams"
        case commandMetadata = "commandMetadata"
    }

    public init(clickTrackingParams: String?, commandMetadata: RemoteSignInEndpointCommandMetadata?) {
        self.clickTrackingParams = clickTrackingParams
        self.commandMetadata = commandMetadata
    }
}

// MARK: - RemoteSignInEndpointCommandMetadata
public struct RemoteSignInEndpointCommandMetadata: Codable {
    public let webCommandMetadata: RemoteTentacledWebCommandMetadata?

    enum CodingKeys: String, CodingKey {
        case webCommandMetadata = "webCommandMetadata"
    }

    public init(webCommandMetadata: RemoteTentacledWebCommandMetadata?) {
        self.webCommandMetadata = webCommandMetadata
    }
}

// MARK: - RemoteTentacledWebCommandMetadata
public struct RemoteTentacledWebCommandMetadata: Codable {
    public let url: String?

    enum CodingKeys: String, CodingKey {
        case url = "url"
    }

    public init(url: String?) {
        self.url = url
    }
}

// MARK: - RemoteSubscribeAccessibilityClass
public struct RemoteSubscribeAccessibilityClass: Codable {
    public let accessibilityData: RemoteAccessibilityDataClass?

    enum CodingKeys: String, CodingKey {
        case accessibilityData = "accessibilityData"
    }

    public init(accessibilityData: RemoteAccessibilityDataClass?) {
        self.accessibilityData = accessibilityData
    }
}

// MARK: - RemoteWatermarkClass
public struct RemoteWatermarkClass: Codable {
    public let thumbnails: [RemoteThumbnailElement]?

    enum CodingKeys: String, CodingKey {
        case thumbnails = "thumbnails"
    }

    public init(thumbnails: [RemoteThumbnailElement]?) {
        self.thumbnails = thumbnails
    }
}

// MARK: - RemoteThumbnailElement
public struct RemoteThumbnailElement: Codable {
    public let url: String?
    public let width: Int?
    public let height: Int?

    enum CodingKeys: String, CodingKey {
        case url = "url"
        case width = "width"
        case height = "height"
    }

    public init(url: String?, width: Int?, height: Int?) {
        self.url = url
        self.width = width
        self.height = height
    }
}

// MARK: - RemoteAttestation
public struct RemoteAttestation: Codable {
    public let playerAttestationRenderer: RemotePlayerAttestationRenderer?

    enum CodingKeys: String, CodingKey {
        case playerAttestationRenderer = "playerAttestationRenderer"
    }

    public init(playerAttestationRenderer: RemotePlayerAttestationRenderer?) {
        self.playerAttestationRenderer = playerAttestationRenderer
    }
}

// MARK: - RemotePlayerAttestationRenderer
public struct RemotePlayerAttestationRenderer: Codable {
    public let challenge: String?
    public let botguardData: RemoteBotguardData?

    enum CodingKeys: String, CodingKey {
        case challenge = "challenge"
        case botguardData = "botguardData"
    }

    public init(challenge: String?, botguardData: RemoteBotguardData?) {
        self.challenge = challenge
        self.botguardData = botguardData
    }
}

// MARK: - RemoteBotguardData
public struct RemoteBotguardData: Codable {
    public let program: String?
    public let interpreterURL: String?

    enum CodingKeys: String, CodingKey {
        case program = "program"
        case interpreterURL = "interpreterUrl"
    }

    public init(program: String?, interpreterURL: String?) {
        self.program = program
        self.interpreterURL = interpreterURL
    }
}

// MARK: - RemoteCaptions
public struct RemoteCaptions: Codable {
    public let playerCaptionsRenderer: RemotePlayerCaptionsRenderer?
    public let playerCaptionsTracklistRenderer: RemotePlayerCaptionsTracklistRenderer?

    enum CodingKeys: String, CodingKey {
        case playerCaptionsRenderer = "playerCaptionsRenderer"
        case playerCaptionsTracklistRenderer = "playerCaptionsTracklistRenderer"
    }

    public init(playerCaptionsRenderer: RemotePlayerCaptionsRenderer?, playerCaptionsTracklistRenderer: RemotePlayerCaptionsTracklistRenderer?) {
        self.playerCaptionsRenderer = playerCaptionsRenderer
        self.playerCaptionsTracklistRenderer = playerCaptionsTracklistRenderer
    }
}

// MARK: - RemotePlayerCaptionsRenderer
public struct RemotePlayerCaptionsRenderer: Codable {
    public let baseURL: String?
    public let visibility: String?

    enum CodingKeys: String, CodingKey {
        case baseURL = "baseUrl"
        case visibility = "visibility"
    }

    public init(baseURL: String?, visibility: String?) {
        self.baseURL = baseURL
        self.visibility = visibility
    }
}

// MARK: - RemotePlayerCaptionsTracklistRenderer
public struct RemotePlayerCaptionsTracklistRenderer: Codable {
    public let captionTracks: [RemoteCaptionTrack]?
    public let audioTracks: [RemoteAudioTrack]?
    public let translationLanguages: [RemoteTranslationLanguage]?
    public let defaultAudioTrackIndex: Int?

    enum CodingKeys: String, CodingKey {
        case captionTracks = "captionTracks"
        case audioTracks = "audioTracks"
        case translationLanguages = "translationLanguages"
        case defaultAudioTrackIndex = "defaultAudioTrackIndex"
    }

    public init(captionTracks: [RemoteCaptionTrack]?, audioTracks: [RemoteAudioTrack]?, translationLanguages: [RemoteTranslationLanguage]?, defaultAudioTrackIndex: Int?) {
        self.captionTracks = captionTracks
        self.audioTracks = audioTracks
        self.translationLanguages = translationLanguages
        self.defaultAudioTrackIndex = defaultAudioTrackIndex
    }
}

// MARK: - RemoteAudioTrack
public struct RemoteAudioTrack: Codable {
    public let captionTrackIndices: [Int]?
    public let defaultCaptionTrackIndex: Int?
    public let visibility: String?
    public let hasDefaultTrack: Bool?

    enum CodingKeys: String, CodingKey {
        case captionTrackIndices = "captionTrackIndices"
        case defaultCaptionTrackIndex = "defaultCaptionTrackIndex"
        case visibility = "visibility"
        case hasDefaultTrack = "hasDefaultTrack"
    }

    public init(captionTrackIndices: [Int]?, defaultCaptionTrackIndex: Int?, visibility: String?, hasDefaultTrack: Bool?) {
        self.captionTrackIndices = captionTrackIndices
        self.defaultCaptionTrackIndex = defaultCaptionTrackIndex
        self.visibility = visibility
        self.hasDefaultTrack = hasDefaultTrack
    }
}

// MARK: - RemoteCaptionTrack
public struct RemoteCaptionTrack: Codable {
    public let baseURL: String?
    public let name: RemoteHeaderText?
    public let vssID: String?
    public let languageCode: String?
    public let isTranslatable: Bool?
    public let kind: String?

    enum CodingKeys: String, CodingKey {
        case baseURL = "baseUrl"
        case name = "name"
        case vssID = "vssId"
        case languageCode = "languageCode"
        case isTranslatable = "isTranslatable"
        case kind = "kind"
    }

    public init(baseURL: String?, name: RemoteHeaderText?, vssID: String?, languageCode: String?, isTranslatable: Bool?, kind: String?) {
        self.baseURL = baseURL
        self.name = name
        self.vssID = vssID
        self.languageCode = languageCode
        self.isTranslatable = isTranslatable
        self.kind = kind
    }
}

// MARK: - RemoteHeaderText
public struct RemoteHeaderText: Codable {
    public let simpleText: String?

    enum CodingKeys: String, CodingKey {
        case simpleText = "simpleText"
    }

    public init(simpleText: String?) {
        self.simpleText = simpleText
    }
}

// MARK: - RemoteTranslationLanguage
public struct RemoteTranslationLanguage: Codable {
    public let languageCode: String?
    public let languageName: RemoteHeaderText?

    enum CodingKeys: String, CodingKey {
        case languageCode = "languageCode"
        case languageName = "languageName"
    }

    public init(languageCode: String?, languageName: RemoteHeaderText?) {
        self.languageCode = languageCode
        self.languageName = languageName
    }
}

// MARK: - RemoteCards
public struct RemoteCards: Codable {
    public let cardCollectionRenderer: RemoteCardCollectionRenderer?

    enum CodingKeys: String, CodingKey {
        case cardCollectionRenderer = "cardCollectionRenderer"
    }

    public init(cardCollectionRenderer: RemoteCardCollectionRenderer?) {
        self.cardCollectionRenderer = cardCollectionRenderer
    }
}

// MARK: - RemoteCardCollectionRenderer
public struct RemoteCardCollectionRenderer: Codable {
    public let cards: [RemoteCard]?
    public let headerText: RemoteHeaderText?
    public let icon: RemoteCloseButton?
    public let closeButton: RemoteCloseButton?
    public let trackingParams: String?
    public let allowTeaserDismiss: Bool?
    public let logIconVisibilityUpdates: Bool?

    enum CodingKeys: String, CodingKey {
        case cards = "cards"
        case headerText = "headerText"
        case icon = "icon"
        case closeButton = "closeButton"
        case trackingParams = "trackingParams"
        case allowTeaserDismiss = "allowTeaserDismiss"
        case logIconVisibilityUpdates = "logIconVisibilityUpdates"
    }

    public init(cards: [RemoteCard]?, headerText: RemoteHeaderText?, icon: RemoteCloseButton?, closeButton: RemoteCloseButton?, trackingParams: String?, allowTeaserDismiss: Bool?, logIconVisibilityUpdates: Bool?) {
        self.cards = cards
        self.headerText = headerText
        self.icon = icon
        self.closeButton = closeButton
        self.trackingParams = trackingParams
        self.allowTeaserDismiss = allowTeaserDismiss
        self.logIconVisibilityUpdates = logIconVisibilityUpdates
    }
}

// MARK: - RemoteCard
public struct RemoteCard: Codable {
    public let cardRenderer: RemoteCardRenderer?

    enum CodingKeys: String, CodingKey {
        case cardRenderer = "cardRenderer"
    }

    public init(cardRenderer: RemoteCardRenderer?) {
        self.cardRenderer = cardRenderer
    }
}

// MARK: - RemoteCardRenderer
public struct RemoteCardRenderer: Codable {
    public let teaser: RemoteTeaser?
    public let content: RemoteContent?
    public let cueRanges: [RemoteCueRange]?
    public let icon: RemoteCloseButton?
    public let trackingParams: String?
    public let cardID: String?
    public let feature: String?

    enum CodingKeys: String, CodingKey {
        case teaser = "teaser"
        case content = "content"
        case cueRanges = "cueRanges"
        case icon = "icon"
        case trackingParams = "trackingParams"
        case cardID = "cardId"
        case feature = "feature"
    }

    public init(teaser: RemoteTeaser?, content: RemoteContent?, cueRanges: [RemoteCueRange]?, icon: RemoteCloseButton?, trackingParams: String?, cardID: String?, feature: String?) {
        self.teaser = teaser
        self.content = content
        self.cueRanges = cueRanges
        self.icon = icon
        self.trackingParams = trackingParams
        self.cardID = cardID
        self.feature = feature
    }
}

// MARK: - RemoteContent
public struct RemoteContent: Codable {
    public let playlistInfoCardContentRenderer: RemotePlaylistInfoCardContentRenderer?

    enum CodingKeys: String, CodingKey {
        case playlistInfoCardContentRenderer = "playlistInfoCardContentRenderer"
    }

    public init(playlistInfoCardContentRenderer: RemotePlaylistInfoCardContentRenderer?) {
        self.playlistInfoCardContentRenderer = playlistInfoCardContentRenderer
    }
}

// MARK: - RemotePlaylistInfoCardContentRenderer
public struct RemotePlaylistInfoCardContentRenderer: Codable {
    public let playlistThumbnail: RemoteWatermarkClass?
    public let playlistVideoCount: RemoteHeaderText?
    public let playlistTitle: RemoteHeaderText?
    public let channelName: RemoteHeaderText?
    public let videoCountText: RemoteHeaderText?
    public let action: RemotePlaylistInfoCardContentRendererAction?
    public let trackingParams: String?

    enum CodingKeys: String, CodingKey {
        case playlistThumbnail = "playlistThumbnail"
        case playlistVideoCount = "playlistVideoCount"
        case playlistTitle = "playlistTitle"
        case channelName = "channelName"
        case videoCountText = "videoCountText"
        case action = "action"
        case trackingParams = "trackingParams"
    }

    public init(playlistThumbnail: RemoteWatermarkClass?, playlistVideoCount: RemoteHeaderText?, playlistTitle: RemoteHeaderText?, channelName: RemoteHeaderText?, videoCountText: RemoteHeaderText?, action: RemotePlaylistInfoCardContentRendererAction?, trackingParams: String?) {
        self.playlistThumbnail = playlistThumbnail
        self.playlistVideoCount = playlistVideoCount
        self.playlistTitle = playlistTitle
        self.channelName = channelName
        self.videoCountText = videoCountText
        self.action = action
        self.trackingParams = trackingParams
    }
}

// MARK: - RemotePlaylistInfoCardContentRendererAction
public struct RemotePlaylistInfoCardContentRendererAction: Codable {
    public let clickTrackingParams: String?
    public let commandMetadata: RemoteNavigationEndpointCommandMetadata?
    public let watchEndpoint: RemoteActionWatchEndpoint?

    enum CodingKeys: String, CodingKey {
        case clickTrackingParams = "clickTrackingParams"
        case commandMetadata = "commandMetadata"
        case watchEndpoint = "watchEndpoint"
    }

    public init(clickTrackingParams: String?, commandMetadata: RemoteNavigationEndpointCommandMetadata?, watchEndpoint: RemoteActionWatchEndpoint?) {
        self.clickTrackingParams = clickTrackingParams
        self.commandMetadata = commandMetadata
        self.watchEndpoint = watchEndpoint
    }
}

// MARK: - RemoteActionWatchEndpoint
public struct RemoteActionWatchEndpoint: Codable {
    public let videoID: String?
    public let playlistID: String?

    enum CodingKeys: String, CodingKey {
        case videoID = "videoId"
        case playlistID = "playlistId"
    }

    public init(videoID: String?, playlistID: String?) {
        self.videoID = videoID
        self.playlistID = playlistID
    }
}

// MARK: - RemoteCueRange
public struct RemoteCueRange: Codable {
    public let startCardActiveMS: String?
    public let endCardActiveMS: String?
    public let teaserDurationMS: String?
    public let iconAfterTeaserMS: String?

    enum CodingKeys: String, CodingKey {
        case startCardActiveMS = "startCardActiveMs"
        case endCardActiveMS = "endCardActiveMs"
        case teaserDurationMS = "teaserDurationMs"
        case iconAfterTeaserMS = "iconAfterTeaserMs"
    }

    public init(startCardActiveMS: String?, endCardActiveMS: String?, teaserDurationMS: String?, iconAfterTeaserMS: String?) {
        self.startCardActiveMS = startCardActiveMS
        self.endCardActiveMS = endCardActiveMS
        self.teaserDurationMS = teaserDurationMS
        self.iconAfterTeaserMS = iconAfterTeaserMS
    }
}

// MARK: - RemoteCloseButton
public struct RemoteCloseButton: Codable {
    public let infoCardIconRenderer: RemoteInfoCardIconRenderer?

    enum CodingKeys: String, CodingKey {
        case infoCardIconRenderer = "infoCardIconRenderer"
    }

    public init(infoCardIconRenderer: RemoteInfoCardIconRenderer?) {
        self.infoCardIconRenderer = infoCardIconRenderer
    }
}

// MARK: - RemoteInfoCardIconRenderer
public struct RemoteInfoCardIconRenderer: Codable {
    public let trackingParams: String?

    enum CodingKeys: String, CodingKey {
        case trackingParams = "trackingParams"
    }

    public init(trackingParams: String?) {
        self.trackingParams = trackingParams
    }
}

// MARK: - RemoteTeaser
public struct RemoteTeaser: Codable {
    public let simpleCardTeaserRenderer: RemoteSimpleCardTeaserRenderer?

    enum CodingKeys: String, CodingKey {
        case simpleCardTeaserRenderer = "simpleCardTeaserRenderer"
    }

    public init(simpleCardTeaserRenderer: RemoteSimpleCardTeaserRenderer?) {
        self.simpleCardTeaserRenderer = simpleCardTeaserRenderer
    }
}

// MARK: - RemoteSimpleCardTeaserRenderer
public struct RemoteSimpleCardTeaserRenderer: Codable {
    public let message: RemoteHeaderText?
    public let trackingParams: String?
    public let prominent: Bool?
    public let logVisibilityUpdates: Bool?

    enum CodingKeys: String, CodingKey {
        case message = "message"
        case trackingParams = "trackingParams"
        case prominent = "prominent"
        case logVisibilityUpdates = "logVisibilityUpdates"
    }

    public init(message: RemoteHeaderText?, trackingParams: String?, prominent: Bool?, logVisibilityUpdates: Bool?) {
        self.message = message
        self.trackingParams = trackingParams
        self.prominent = prominent
        self.logVisibilityUpdates = logVisibilityUpdates
    }
}

// MARK: - RemoteEndscreen
public struct RemoteEndscreen: Codable {
    public let endscreenRenderer: RemoteEndscreenRenderer?

    enum CodingKeys: String, CodingKey {
        case endscreenRenderer = "endscreenRenderer"
    }

    public init(endscreenRenderer: RemoteEndscreenRenderer?) {
        self.endscreenRenderer = endscreenRenderer
    }
}

// MARK: - RemoteEndscreenRenderer
public struct RemoteEndscreenRenderer: Codable {
    public let elements: [RemoteElement]?
    public let startMS: String?
    public let trackingParams: String?

    enum CodingKeys: String, CodingKey {
        case elements = "elements"
        case startMS = "startMs"
        case trackingParams = "trackingParams"
    }

    public init(elements: [RemoteElement]?, startMS: String?, trackingParams: String?) {
        self.elements = elements
        self.startMS = startMS
        self.trackingParams = trackingParams
    }
}

// MARK: - RemoteElement
public struct RemoteElement: Codable {
    public let endscreenElementRenderer: RemoteEndscreenElementRenderer?

    enum CodingKeys: String, CodingKey {
        case endscreenElementRenderer = "endscreenElementRenderer"
    }

    public init(endscreenElementRenderer: RemoteEndscreenElementRenderer?) {
        self.endscreenElementRenderer = endscreenElementRenderer
    }
}

// MARK: - RemoteEndscreenElementRenderer
public struct RemoteEndscreenElementRenderer: Codable {
    public let style: String?
    public let image: RemoteWatermarkClass?
    public let videoDuration: RemoteHeaderText?
    public let endscreenElementRendererLeft: Double?
    public let width: Double?
    public let top: Double?
    public let aspectRatio: Double?
    public let startMS: String?
    public let endMS: String?
    public let title: RemoteTitle?
    public let metadata: RemoteHeaderText?
    public let endpoint: RemoteEndscreenElementRendererEndpoint?
    public let trackingParams: String?
    public let id: String?

    enum CodingKeys: String, CodingKey {
        case style = "style"
        case image = "image"
        case videoDuration = "videoDuration"
        case endscreenElementRendererLeft = "left"
        case width = "width"
        case top = "top"
        case aspectRatio = "aspectRatio"
        case startMS = "startMs"
        case endMS = "endMs"
        case title = "title"
        case metadata = "metadata"
        case endpoint = "endpoint"
        case trackingParams = "trackingParams"
        case id = "id"
    }

    public init(style: String?, image: RemoteWatermarkClass?, videoDuration: RemoteHeaderText?, endscreenElementRendererLeft: Double?, width: Double?, top: Double?, aspectRatio: Double?, startMS: String?, endMS: String?, title: RemoteTitle?, metadata: RemoteHeaderText?, endpoint: RemoteEndscreenElementRendererEndpoint?, trackingParams: String?, id: String?) {
        self.style = style
        self.image = image
        self.videoDuration = videoDuration
        self.endscreenElementRendererLeft = endscreenElementRendererLeft
        self.width = width
        self.top = top
        self.aspectRatio = aspectRatio
        self.startMS = startMS
        self.endMS = endMS
        self.title = title
        self.metadata = metadata
        self.endpoint = endpoint
        self.trackingParams = trackingParams
        self.id = id
    }
}

// MARK: - RemoteEndscreenElementRendererEndpoint
public struct RemoteEndscreenElementRendererEndpoint: Codable {
    public let clickTrackingParams: String?
    public let commandMetadata: RemoteNavigationEndpointCommandMetadata?
    public let watchEndpoint: RemoteEndpointWatchEndpoint?

    enum CodingKeys: String, CodingKey {
        case clickTrackingParams = "clickTrackingParams"
        case commandMetadata = "commandMetadata"
        case watchEndpoint = "watchEndpoint"
    }

    public init(clickTrackingParams: String?, commandMetadata: RemoteNavigationEndpointCommandMetadata?, watchEndpoint: RemoteEndpointWatchEndpoint?) {
        self.clickTrackingParams = clickTrackingParams
        self.commandMetadata = commandMetadata
        self.watchEndpoint = watchEndpoint
    }
}

// MARK: - RemoteEndpointWatchEndpoint
public struct RemoteEndpointWatchEndpoint: Codable {
    public let videoID: String?

    enum CodingKeys: String, CodingKey {
        case videoID = "videoId"
    }

    public init(videoID: String?) {
        self.videoID = videoID
    }
}

// MARK: - RemoteTitle
public struct RemoteTitle: Codable {
    public let accessibility: RemoteSubscribeAccessibilityClass?
    public let simpleText: String?

    enum CodingKeys: String, CodingKey {
        case accessibility = "accessibility"
        case simpleText = "simpleText"
    }

    public init(accessibility: RemoteSubscribeAccessibilityClass?, simpleText: String?) {
        self.accessibility = accessibility
        self.simpleText = simpleText
    }
}

// MARK: - RemoteMicroformat
public struct RemoteMicroformat: Codable {
    public let playerMicroformatRenderer: RemotePlayerMicroformatRenderer?

    enum CodingKeys: String, CodingKey {
        case playerMicroformatRenderer = "playerMicroformatRenderer"
    }

    public init(playerMicroformatRenderer: RemotePlayerMicroformatRenderer?) {
        self.playerMicroformatRenderer = playerMicroformatRenderer
    }
}

// MARK: - RemotePlayerMicroformatRenderer
public struct RemotePlayerMicroformatRenderer: Codable {
    public let thumbnail: RemoteWatermarkClass?
    public let embed: RemoteEmbed?
    public let title: RemoteHeaderText?
    public let playerMicroformatRendererDescription: RemoteHeaderText?
    public let lengthSeconds: String?
    public let ownerProfileURL: String?
    public let externalChannelID: String?
    public let availableCountries: [String]?
    public let isUnlisted: Bool?
    public let hasYpcMetadata: Bool?
    public let viewCount: String?
    public let category: String?
    public let publishDate: String?
    public let ownerChannelName: String?
    public let uploadDate: String?

    enum CodingKeys: String, CodingKey {
        case thumbnail = "thumbnail"
        case embed = "embed"
        case title = "title"
        case playerMicroformatRendererDescription = "description"
        case lengthSeconds = "lengthSeconds"
        case ownerProfileURL = "ownerProfileUrl"
        case externalChannelID = "externalChannelId"
        case availableCountries = "availableCountries"
        case isUnlisted = "isUnlisted"
        case hasYpcMetadata = "hasYpcMetadata"
        case viewCount = "viewCount"
        case category = "category"
        case publishDate = "publishDate"
        case ownerChannelName = "ownerChannelName"
        case uploadDate = "uploadDate"
    }

    public init(thumbnail: RemoteWatermarkClass?, embed: RemoteEmbed?, title: RemoteHeaderText?, playerMicroformatRendererDescription: RemoteHeaderText?, lengthSeconds: String?, ownerProfileURL: String?, externalChannelID: String?, availableCountries: [String]?, isUnlisted: Bool?, hasYpcMetadata: Bool?, viewCount: String?, category: String?, publishDate: String?, ownerChannelName: String?, uploadDate: String?) {
        self.thumbnail = thumbnail
        self.embed = embed
        self.title = title
        self.playerMicroformatRendererDescription = playerMicroformatRendererDescription
        self.lengthSeconds = lengthSeconds
        self.ownerProfileURL = ownerProfileURL
        self.externalChannelID = externalChannelID
        self.availableCountries = availableCountries
        self.isUnlisted = isUnlisted
        self.hasYpcMetadata = hasYpcMetadata
        self.viewCount = viewCount
        self.category = category
        self.publishDate = publishDate
        self.ownerChannelName = ownerChannelName
        self.uploadDate = uploadDate
    }
}

// MARK: - RemoteEmbed
public struct RemoteEmbed: Codable {
    public let iframeURL: String?
    public let flashURL: String?
    public let width: Int?
    public let height: Int?
    public let flashSecureURL: String?

    enum CodingKeys: String, CodingKey {
        case iframeURL = "iframeUrl"
        case flashURL = "flashUrl"
        case width = "width"
        case height = "height"
        case flashSecureURL = "flashSecureUrl"
    }

    public init(iframeURL: String?, flashURL: String?, width: Int?, height: Int?, flashSecureURL: String?) {
        self.iframeURL = iframeURL
        self.flashURL = flashURL
        self.width = width
        self.height = height
        self.flashSecureURL = flashSecureURL
    }
}

// MARK: - RemotePlayabilityStatus
public struct RemotePlayabilityStatus: Codable {
    public let status: String?
    public let playableInEmbed: Bool?
    public let miniplayer: RemoteMiniplayer?
    public let contextParams: String?

    enum CodingKeys: String, CodingKey {
        case status = "status"
        case playableInEmbed = "playableInEmbed"
        case miniplayer = "miniplayer"
        case contextParams = "contextParams"
    }

    public init(status: String?, playableInEmbed: Bool?, miniplayer: RemoteMiniplayer?, contextParams: String?) {
        self.status = status
        self.playableInEmbed = playableInEmbed
        self.miniplayer = miniplayer
        self.contextParams = contextParams
    }
}

// MARK: - RemoteMiniplayer
public struct RemoteMiniplayer: Codable {
    public let miniplayerRenderer: RemoteMiniplayerRenderer?

    enum CodingKeys: String, CodingKey {
        case miniplayerRenderer = "miniplayerRenderer"
    }

    public init(miniplayerRenderer: RemoteMiniplayerRenderer?) {
        self.miniplayerRenderer = miniplayerRenderer
    }
}

// MARK: - RemoteMiniplayerRenderer
public struct RemoteMiniplayerRenderer: Codable {
    public let playbackMode: String?

    enum CodingKeys: String, CodingKey {
        case playbackMode = "playbackMode"
    }

    public init(playbackMode: String?) {
        self.playbackMode = playbackMode
    }
}

// MARK: - RemotePlaybackTracking
public struct RemotePlaybackTracking: Codable {
    public let videostatsPlaybackURL: RemotePtrackingURLClass?
    public let videostatsDelayplayURL: RemotePtrackingURLClass?
    public let videostatsWatchtimeURL: RemotePtrackingURLClass?
    public let ptrackingURL: RemotePtrackingURLClass?
    public let qoeURL: RemotePtrackingURLClass?
    public let setAwesomeURL: RemoteAtrURLClass?
    public let atrURL: RemoteAtrURLClass?
    public let youtubeRemarketingURL: RemoteAtrURLClass?

    enum CodingKeys: String, CodingKey {
        case videostatsPlaybackURL = "videostatsPlaybackUrl"
        case videostatsDelayplayURL = "videostatsDelayplayUrl"
        case videostatsWatchtimeURL = "videostatsWatchtimeUrl"
        case ptrackingURL = "ptrackingUrl"
        case qoeURL = "qoeUrl"
        case setAwesomeURL = "setAwesomeUrl"
        case atrURL = "atrUrl"
        case youtubeRemarketingURL = "youtubeRemarketingUrl"
    }

    public init(videostatsPlaybackURL: RemotePtrackingURLClass?, videostatsDelayplayURL: RemotePtrackingURLClass?, videostatsWatchtimeURL: RemotePtrackingURLClass?, ptrackingURL: RemotePtrackingURLClass?, qoeURL: RemotePtrackingURLClass?, setAwesomeURL: RemoteAtrURLClass?, atrURL: RemoteAtrURLClass?, youtubeRemarketingURL: RemoteAtrURLClass?) {
        self.videostatsPlaybackURL = videostatsPlaybackURL
        self.videostatsDelayplayURL = videostatsDelayplayURL
        self.videostatsWatchtimeURL = videostatsWatchtimeURL
        self.ptrackingURL = ptrackingURL
        self.qoeURL = qoeURL
        self.setAwesomeURL = setAwesomeURL
        self.atrURL = atrURL
        self.youtubeRemarketingURL = youtubeRemarketingURL
    }
}

// MARK: - RemoteAtrURLClass
public struct RemoteAtrURLClass: Codable {
    public let baseURL: String?
    public let elapsedMediaTimeSeconds: Int?

    enum CodingKeys: String, CodingKey {
        case baseURL = "baseUrl"
        case elapsedMediaTimeSeconds = "elapsedMediaTimeSeconds"
    }

    public init(baseURL: String?, elapsedMediaTimeSeconds: Int?) {
        self.baseURL = baseURL
        self.elapsedMediaTimeSeconds = elapsedMediaTimeSeconds
    }
}

// MARK: - RemotePtrackingURLClass
public struct RemotePtrackingURLClass: Codable {
    public let baseURL: String?

    enum CodingKeys: String, CodingKey {
        case baseURL = "baseUrl"
    }

    public init(baseURL: String?) {
        self.baseURL = baseURL
    }
}

// MARK: - RemotePlayerConfig
public struct RemotePlayerConfig: Codable {
    public let audioConfig: RemoteAudioConfig?
    public let streamSelectionConfig: RemoteStreamSelectionConfig?
    public let daiConfig: RemoteDaiConfig?
    public let mediaCommonConfig: RemoteMediaCommonConfig?
    public let webPlayerConfig: RemoteWebPlayerConfig?

    enum CodingKeys: String, CodingKey {
        case audioConfig = "audioConfig"
        case streamSelectionConfig = "streamSelectionConfig"
        case daiConfig = "daiConfig"
        case mediaCommonConfig = "mediaCommonConfig"
        case webPlayerConfig = "webPlayerConfig"
    }

    public init(audioConfig: RemoteAudioConfig?, streamSelectionConfig: RemoteStreamSelectionConfig?, daiConfig: RemoteDaiConfig?, mediaCommonConfig: RemoteMediaCommonConfig?, webPlayerConfig: RemoteWebPlayerConfig?) {
        self.audioConfig = audioConfig
        self.streamSelectionConfig = streamSelectionConfig
        self.daiConfig = daiConfig
        self.mediaCommonConfig = mediaCommonConfig
        self.webPlayerConfig = webPlayerConfig
    }
}

// MARK: - RemoteAudioConfig
public struct RemoteAudioConfig: Codable {
    public let loudnessDB: Double?
    public let perceptualLoudnessDB: Double?
    public let enablePerFormatLoudness: Bool?

    enum CodingKeys: String, CodingKey {
        case loudnessDB = "loudnessDb"
        case perceptualLoudnessDB = "perceptualLoudnessDb"
        case enablePerFormatLoudness = "enablePerFormatLoudness"
    }

    public init(loudnessDB: Double?, perceptualLoudnessDB: Double?, enablePerFormatLoudness: Bool?) {
        self.loudnessDB = loudnessDB
        self.perceptualLoudnessDB = perceptualLoudnessDB
        self.enablePerFormatLoudness = enablePerFormatLoudness
    }
}

// MARK: - RemoteDaiConfig
public struct RemoteDaiConfig: Codable {
    public let enableServerStitchedDai: Bool?

    enum CodingKeys: String, CodingKey {
        case enableServerStitchedDai = "enableServerStitchedDai"
    }

    public init(enableServerStitchedDai: Bool?) {
        self.enableServerStitchedDai = enableServerStitchedDai
    }
}

// MARK: - RemoteMediaCommonConfig
public struct RemoteMediaCommonConfig: Codable {
    public let dynamicReadaheadConfig: RemoteDynamicReadaheadConfig?

    enum CodingKeys: String, CodingKey {
        case dynamicReadaheadConfig = "dynamicReadaheadConfig"
    }

    public init(dynamicReadaheadConfig: RemoteDynamicReadaheadConfig?) {
        self.dynamicReadaheadConfig = dynamicReadaheadConfig
    }
}

// MARK: - RemoteDynamicReadaheadConfig
public struct RemoteDynamicReadaheadConfig: Codable {
    public let maxReadAheadMediaTimeMS: Int?
    public let minReadAheadMediaTimeMS: Int?
    public let readAheadGrowthRateMS: Int?

    enum CodingKeys: String, CodingKey {
        case maxReadAheadMediaTimeMS = "maxReadAheadMediaTimeMs"
        case minReadAheadMediaTimeMS = "minReadAheadMediaTimeMs"
        case readAheadGrowthRateMS = "readAheadGrowthRateMs"
    }

    public init(maxReadAheadMediaTimeMS: Int?, minReadAheadMediaTimeMS: Int?, readAheadGrowthRateMS: Int?) {
        self.maxReadAheadMediaTimeMS = maxReadAheadMediaTimeMS
        self.minReadAheadMediaTimeMS = minReadAheadMediaTimeMS
        self.readAheadGrowthRateMS = readAheadGrowthRateMS
    }
}

// MARK: - RemoteStreamSelectionConfig
public struct RemoteStreamSelectionConfig: Codable {
    public let maxBitrate: String?

    enum CodingKeys: String, CodingKey {
        case maxBitrate = "maxBitrate"
    }

    public init(maxBitrate: String?) {
        self.maxBitrate = maxBitrate
    }
}

// MARK: - RemoteWebPlayerConfig
public struct RemoteWebPlayerConfig: Codable {
    public let webPlayerActionsPorting: RemoteWebPlayerActionsPorting?

    enum CodingKeys: String, CodingKey {
        case webPlayerActionsPorting = "webPlayerActionsPorting"
    }

    public init(webPlayerActionsPorting: RemoteWebPlayerActionsPorting?) {
        self.webPlayerActionsPorting = webPlayerActionsPorting
    }
}

// MARK: - RemoteWebPlayerActionsPorting
public struct RemoteWebPlayerActionsPorting: Codable {
    public let getSharePanelCommand: RemoteGetSharePanelCommand?
    public let subscribeCommand: RemoteSubscribeCommand?
    public let unsubscribeCommand: RemoteUnsubscribeCommand?
    public let addToWatchLaterCommand: RemoteAddToWatchLaterCommand?
    public let removeFromWatchLaterCommand: RemoteRemoveFromWatchLaterCommand?

    enum CodingKeys: String, CodingKey {
        case getSharePanelCommand = "getSharePanelCommand"
        case subscribeCommand = "subscribeCommand"
        case unsubscribeCommand = "unsubscribeCommand"
        case addToWatchLaterCommand = "addToWatchLaterCommand"
        case removeFromWatchLaterCommand = "removeFromWatchLaterCommand"
    }

    public init(getSharePanelCommand: RemoteGetSharePanelCommand?, subscribeCommand: RemoteSubscribeCommand?, unsubscribeCommand: RemoteUnsubscribeCommand?, addToWatchLaterCommand: RemoteAddToWatchLaterCommand?, removeFromWatchLaterCommand: RemoteRemoveFromWatchLaterCommand?) {
        self.getSharePanelCommand = getSharePanelCommand
        self.subscribeCommand = subscribeCommand
        self.unsubscribeCommand = unsubscribeCommand
        self.addToWatchLaterCommand = addToWatchLaterCommand
        self.removeFromWatchLaterCommand = removeFromWatchLaterCommand
    }
}

// MARK: - RemoteAddToWatchLaterCommand
public struct RemoteAddToWatchLaterCommand: Codable {
    public let clickTrackingParams: String?
    public let commandMetadata: RemoteSubscribeCommandCommandMetadata?
    public let playlistEditEndpoint: RemoteAddToWatchLaterCommandPlaylistEditEndpoint?

    enum CodingKeys: String, CodingKey {
        case clickTrackingParams = "clickTrackingParams"
        case commandMetadata = "commandMetadata"
        case playlistEditEndpoint = "playlistEditEndpoint"
    }

    public init(clickTrackingParams: String?, commandMetadata: RemoteSubscribeCommandCommandMetadata?, playlistEditEndpoint: RemoteAddToWatchLaterCommandPlaylistEditEndpoint?) {
        self.clickTrackingParams = clickTrackingParams
        self.commandMetadata = commandMetadata
        self.playlistEditEndpoint = playlistEditEndpoint
    }
}

// MARK: - RemoteAddToWatchLaterCommandPlaylistEditEndpoint
public struct RemoteAddToWatchLaterCommandPlaylistEditEndpoint: Codable {
    public let playlistID: String?
    public let actions: [RemotePurpleAction]?

    enum CodingKeys: String, CodingKey {
        case playlistID = "playlistId"
        case actions = "actions"
    }

    public init(playlistID: String?, actions: [RemotePurpleAction]?) {
        self.playlistID = playlistID
        self.actions = actions
    }
}

// MARK: - RemotePurpleAction
public struct RemotePurpleAction: Codable {
    public let addedVideoID: String?
    public let action: String?

    enum CodingKeys: String, CodingKey {
        case addedVideoID = "addedVideoId"
        case action = "action"
    }

    public init(addedVideoID: String?, action: String?) {
        self.addedVideoID = addedVideoID
        self.action = action
    }
}

// MARK: - RemoteGetSharePanelCommand
public struct RemoteGetSharePanelCommand: Codable {
    public let clickTrackingParams: String?
    public let commandMetadata: RemoteSubscribeCommandCommandMetadata?
    public let webPlayerShareEntityServiceEndpoint: RemoteWebPlayerShareEntityServiceEndpoint?

    enum CodingKeys: String, CodingKey {
        case clickTrackingParams = "clickTrackingParams"
        case commandMetadata = "commandMetadata"
        case webPlayerShareEntityServiceEndpoint = "webPlayerShareEntityServiceEndpoint"
    }

    public init(clickTrackingParams: String?, commandMetadata: RemoteSubscribeCommandCommandMetadata?, webPlayerShareEntityServiceEndpoint: RemoteWebPlayerShareEntityServiceEndpoint?) {
        self.clickTrackingParams = clickTrackingParams
        self.commandMetadata = commandMetadata
        self.webPlayerShareEntityServiceEndpoint = webPlayerShareEntityServiceEndpoint
    }
}

// MARK: - RemoteWebPlayerShareEntityServiceEndpoint
public struct RemoteWebPlayerShareEntityServiceEndpoint: Codable {
    public let serializedShareEntity: String?

    enum CodingKeys: String, CodingKey {
        case serializedShareEntity = "serializedShareEntity"
    }

    public init(serializedShareEntity: String?) {
        self.serializedShareEntity = serializedShareEntity
    }
}

// MARK: - RemoteRemoveFromWatchLaterCommand
public struct RemoteRemoveFromWatchLaterCommand: Codable {
    public let clickTrackingParams: String?
    public let commandMetadata: RemoteSubscribeCommandCommandMetadata?
    public let playlistEditEndpoint: RemoteRemoveFromWatchLaterCommandPlaylistEditEndpoint?

    enum CodingKeys: String, CodingKey {
        case clickTrackingParams = "clickTrackingParams"
        case commandMetadata = "commandMetadata"
        case playlistEditEndpoint = "playlistEditEndpoint"
    }

    public init(clickTrackingParams: String?, commandMetadata: RemoteSubscribeCommandCommandMetadata?, playlistEditEndpoint: RemoteRemoveFromWatchLaterCommandPlaylistEditEndpoint?) {
        self.clickTrackingParams = clickTrackingParams
        self.commandMetadata = commandMetadata
        self.playlistEditEndpoint = playlistEditEndpoint
    }
}

// MARK: - RemoteRemoveFromWatchLaterCommandPlaylistEditEndpoint
public struct RemoteRemoveFromWatchLaterCommandPlaylistEditEndpoint: Codable {
    public let playlistID: String?
    public let actions: [RemoteFluffyAction]?

    enum CodingKeys: String, CodingKey {
        case playlistID = "playlistId"
        case actions = "actions"
    }

    public init(playlistID: String?, actions: [RemoteFluffyAction]?) {
        self.playlistID = playlistID
        self.actions = actions
    }
}

// MARK: - RemoteFluffyAction
public struct RemoteFluffyAction: Codable {
    public let action: String?
    public let removedVideoID: String?

    enum CodingKeys: String, CodingKey {
        case action = "action"
        case removedVideoID = "removedVideoId"
    }

    public init(action: String?, removedVideoID: String?) {
        self.action = action
        self.removedVideoID = removedVideoID
    }
}

// MARK: - RemoteResponseContext
public struct RemoteResponseContext: Codable {
    public let serviceTrackingParams: [RemoteServiceTrackingParam]?
    public let webResponseContextExtensionData: RemoteWebResponseContextExtensionData?

    enum CodingKeys: String, CodingKey {
        case serviceTrackingParams = "serviceTrackingParams"
        case webResponseContextExtensionData = "webResponseContextExtensionData"
    }

    public init(serviceTrackingParams: [RemoteServiceTrackingParam]?, webResponseContextExtensionData: RemoteWebResponseContextExtensionData?) {
        self.serviceTrackingParams = serviceTrackingParams
        self.webResponseContextExtensionData = webResponseContextExtensionData
    }
}

// MARK: - RemoteServiceTrackingParam
public struct RemoteServiceTrackingParam: Codable {
    public let service: String?
    public let params: [RemoteParam]?

    enum CodingKeys: String, CodingKey {
        case service = "service"
        case params = "params"
    }

    public init(service: String?, params: [RemoteParam]?) {
        self.service = service
        self.params = params
    }
}

// MARK: - RemoteParam
public struct RemoteParam: Codable {
    public let key: String?
    public let value: String?

    enum CodingKeys: String, CodingKey {
        case key = "key"
        case value = "value"
    }

    public init(key: String?, value: String?) {
        self.key = key
        self.value = value
    }
}

// MARK: - RemoteWebResponseContextExtensionData
public struct RemoteWebResponseContextExtensionData: Codable {
    public let hasDecorated: Bool?

    enum CodingKeys: String, CodingKey {
        case hasDecorated = "hasDecorated"
    }

    public init(hasDecorated: Bool?) {
        self.hasDecorated = hasDecorated
    }
}

// MARK: - RemoteStoryboards
public struct RemoteStoryboards: Codable {
    public let playerStoryboardSpecRenderer: RemotePlayerStoryboardSpecRenderer?

    enum CodingKeys: String, CodingKey {
        case playerStoryboardSpecRenderer = "playerStoryboardSpecRenderer"
    }

    public init(playerStoryboardSpecRenderer: RemotePlayerStoryboardSpecRenderer?) {
        self.playerStoryboardSpecRenderer = playerStoryboardSpecRenderer
    }
}

// MARK: - RemotePlayerStoryboardSpecRenderer
public struct RemotePlayerStoryboardSpecRenderer: Codable {
    public let spec: String?

    enum CodingKeys: String, CodingKey {
        case spec = "spec"
    }

    public init(spec: String?) {
        self.spec = spec
    }
}

// MARK: - RemoteStreamingData
public struct RemoteStreamingData: Codable {
    public let expiresInSeconds: String?
    public let formats: [RemoteFormat]?
    public let adaptiveFormats: [RemoteFormat]?
    public let hlsManifestURL: String?

    enum CodingKeys: String, CodingKey {
        case expiresInSeconds = "expiresInSeconds"
        case formats = "formats"
        case adaptiveFormats = "adaptiveFormats"
        case hlsManifestURL = "hlsManifestUrl"
    }

    public init(expiresInSeconds: String?, formats: [RemoteFormat]?, adaptiveFormats: [RemoteFormat]?, hlsManifestURL: String?) {
        self.expiresInSeconds = expiresInSeconds
        self.formats = formats
        self.adaptiveFormats = adaptiveFormats
        self.hlsManifestURL = hlsManifestURL
    }
}

// MARK: - RemoteFormat
public struct RemoteFormat: Codable {
    public let itag: Int?
    public let url: String?
    public let mimeType: String?
    public let bitrate: Int?
    public let width: Int?
    public let height: Int?
    public let initRange: RemoteRange?
    public let indexRange: RemoteRange?
    public let lastModified: String?
    public let contentLength: String?
    public let quality: String?
    public let fps: Int?
    public let qualityLabel: String?
    public let projectionType: RemoteProjectionType?
    public let averageBitrate: Int?
    public let approxDurationMS: String?
    public let colorInfo: RemoteColorInfo?
    public let highReplication: Bool?
    public let audioQuality: String?
    public let audioSampleRate: String?
    public let audioChannels: Int?
    public let loudnessDB: Double?

    enum CodingKeys: String, CodingKey {
        case itag = "itag"
        case url = "url"
        case mimeType = "mimeType"
        case bitrate = "bitrate"
        case width = "width"
        case height = "height"
        case initRange = "initRange"
        case indexRange = "indexRange"
        case lastModified = "lastModified"
        case contentLength = "contentLength"
        case quality = "quality"
        case fps = "fps"
        case qualityLabel = "qualityLabel"
        case projectionType = "projectionType"
        case averageBitrate = "averageBitrate"
        case approxDurationMS = "approxDurationMs"
        case colorInfo = "colorInfo"
        case highReplication = "highReplication"
        case audioQuality = "audioQuality"
        case audioSampleRate = "audioSampleRate"
        case audioChannels = "audioChannels"
        case loudnessDB = "loudnessDb"
    }

    public init(itag: Int?, url: String?, mimeType: String?, bitrate: Int?, width: Int?, height: Int?, initRange: RemoteRange?, indexRange: RemoteRange?, lastModified: String?, contentLength: String?, quality: String?, fps: Int?, qualityLabel: String?, projectionType: RemoteProjectionType?, averageBitrate: Int?, approxDurationMS: String?, colorInfo: RemoteColorInfo?, highReplication: Bool?, audioQuality: String?, audioSampleRate: String?, audioChannels: Int?, loudnessDB: Double?) {
        self.itag = itag
        self.url = url
        self.mimeType = mimeType
        self.bitrate = bitrate
        self.width = width
        self.height = height
        self.initRange = initRange
        self.indexRange = indexRange
        self.lastModified = lastModified
        self.contentLength = contentLength
        self.quality = quality
        self.fps = fps
        self.qualityLabel = qualityLabel
        self.projectionType = projectionType
        self.averageBitrate = averageBitrate
        self.approxDurationMS = approxDurationMS
        self.colorInfo = colorInfo
        self.highReplication = highReplication
        self.audioQuality = audioQuality
        self.audioSampleRate = audioSampleRate
        self.audioChannels = audioChannels
        self.loudnessDB = loudnessDB
    }
}

// MARK: - RemoteColorInfo
public struct RemoteColorInfo: Codable {
    public let primaries: String?
    public let transferCharacteristics: String?
    public let matrixCoefficients: String?

    enum CodingKeys: String, CodingKey {
        case primaries = "primaries"
        case transferCharacteristics = "transferCharacteristics"
        case matrixCoefficients = "matrixCoefficients"
    }

    public init(primaries: String?, transferCharacteristics: String?, matrixCoefficients: String?) {
        self.primaries = primaries
        self.transferCharacteristics = transferCharacteristics
        self.matrixCoefficients = matrixCoefficients
    }
}

// MARK: - RemoteRange
public struct RemoteRange: Codable {
    public let start: String?
    public let end: String?

    enum CodingKeys: String, CodingKey {
        case start = "start"
        case end = "end"
    }

    public init(start: String?, end: String?) {
        self.start = start
        self.end = end
    }
}

public enum RemoteProjectionType: String, Codable {
    case rectangular = "RECTANGULAR"
}

// MARK: - RemoteVideoDetails
public struct RemoteVideoDetails: Codable {
    public let videoID: String?
    public let title: String?
    public let lengthSeconds: String?
    public let keywords: [String]?
    public let channelID: String?
    public let isOwnerViewing: Bool?
    public let shortDescription: String?
    public let isCrawlable: Bool?
    public let thumbnail: RemoteWatermarkClass?
    public let averageRating: Double?
    public let allowRatings: Bool?
    public let viewCount: String?
    public let author: String?
    public let isPrivate: Bool?
    public let isUnpluggedCorpus: Bool?
    public let isLiveContent: Bool?

    enum CodingKeys: String, CodingKey {
        case videoID = "videoId"
        case title = "title"
        case lengthSeconds = "lengthSeconds"
        case keywords = "keywords"
        case channelID = "channelId"
        case isOwnerViewing = "isOwnerViewing"
        case shortDescription = "shortDescription"
        case isCrawlable = "isCrawlable"
        case thumbnail = "thumbnail"
        case averageRating = "averageRating"
        case allowRatings = "allowRatings"
        case viewCount = "viewCount"
        case author = "author"
        case isPrivate = "isPrivate"
        case isUnpluggedCorpus = "isUnpluggedCorpus"
        case isLiveContent = "isLiveContent"
    }

    public init(videoID: String?, title: String?, lengthSeconds: String?, keywords: [String]?, channelID: String?, isOwnerViewing: Bool?, shortDescription: String?, isCrawlable: Bool?, thumbnail: RemoteWatermarkClass?, averageRating: Double?, allowRatings: Bool?, viewCount: String?, author: String?, isPrivate: Bool?, isUnpluggedCorpus: Bool?, isLiveContent: Bool?) {
        self.videoID = videoID
        self.title = title
        self.lengthSeconds = lengthSeconds
        self.keywords = keywords
        self.channelID = channelID
        self.isOwnerViewing = isOwnerViewing
        self.shortDescription = shortDescription
        self.isCrawlable = isCrawlable
        self.thumbnail = thumbnail
        self.averageRating = averageRating
        self.allowRatings = allowRatings
        self.viewCount = viewCount
        self.author = author
        self.isPrivate = isPrivate
        self.isUnpluggedCorpus = isUnpluggedCorpus
        self.isLiveContent = isLiveContent
    }
}

// MARK: - RemoteVideoQualityPromoSupportedRenderers
public struct RemoteVideoQualityPromoSupportedRenderers: Codable {
    public let videoQualityPromoRenderer: RemoteVideoQualityPromoRenderer?

    enum CodingKeys: String, CodingKey {
        case videoQualityPromoRenderer = "videoQualityPromoRenderer"
    }

    public init(videoQualityPromoRenderer: RemoteVideoQualityPromoRenderer?) {
        self.videoQualityPromoRenderer = videoQualityPromoRenderer
    }
}

// MARK: - RemoteVideoQualityPromoRenderer
public struct RemoteVideoQualityPromoRenderer: Codable {
    public let triggerCriteria: RemoteTriggerCriteria?
    public let text: RemoteText?
    public let endpoint: RemoteNavigationEndpointClass?
    public let trackingParams: String?
    public let snackbar: RemoteSnackbar?

    enum CodingKeys: String, CodingKey {
        case triggerCriteria = "triggerCriteria"
        case text = "text"
        case endpoint = "endpoint"
        case trackingParams = "trackingParams"
        case snackbar = "snackbar"
    }

    public init(triggerCriteria: RemoteTriggerCriteria?, text: RemoteText?, endpoint: RemoteNavigationEndpointClass?, trackingParams: String?, snackbar: RemoteSnackbar?) {
        self.triggerCriteria = triggerCriteria
        self.text = text
        self.endpoint = endpoint
        self.trackingParams = trackingParams
        self.snackbar = snackbar
    }
}

// MARK: - RemoteNavigationEndpointClass
public struct RemoteNavigationEndpointClass: Codable {
    public let clickTrackingParams: String?
    public let commandMetadata: RemoteNavigationEndpointCommandMetadata?
    public let urlEndpoint: RemoteURLEndpoint?

    enum CodingKeys: String, CodingKey {
        case clickTrackingParams = "clickTrackingParams"
        case commandMetadata = "commandMetadata"
        case urlEndpoint = "urlEndpoint"
    }

    public init(clickTrackingParams: String?, commandMetadata: RemoteNavigationEndpointCommandMetadata?, urlEndpoint: RemoteURLEndpoint?) {
        self.clickTrackingParams = clickTrackingParams
        self.commandMetadata = commandMetadata
        self.urlEndpoint = urlEndpoint
    }
}

// MARK: - RemoteURLEndpoint
public struct RemoteURLEndpoint: Codable {
    public let url: String?
    public let target: String?

    enum CodingKeys: String, CodingKey {
        case url = "url"
        case target = "target"
    }

    public init(url: String?, target: String?) {
        self.url = url
        self.target = target
    }
}

// MARK: - RemoteSnackbar
public struct RemoteSnackbar: Codable {
    public let notificationActionRenderer: RemoteNotificationActionRenderer?

    enum CodingKeys: String, CodingKey {
        case notificationActionRenderer = "notificationActionRenderer"
    }

    public init(notificationActionRenderer: RemoteNotificationActionRenderer?) {
        self.notificationActionRenderer = notificationActionRenderer
    }
}

// MARK: - RemoteNotificationActionRenderer
public struct RemoteNotificationActionRenderer: Codable {
    public let responseText: RemoteResponseText?
    public let actionButton: RemoteActionButton?
    public let trackingParams: String?

    enum CodingKeys: String, CodingKey {
        case responseText = "responseText"
        case actionButton = "actionButton"
        case trackingParams = "trackingParams"
    }

    public init(responseText: RemoteResponseText?, actionButton: RemoteActionButton?, trackingParams: String?) {
        self.responseText = responseText
        self.actionButton = actionButton
        self.trackingParams = trackingParams
    }
}

// MARK: - RemoteActionButton
public struct RemoteActionButton: Codable {
    public let buttonRenderer: RemoteActionButtonButtonRenderer?

    enum CodingKeys: String, CodingKey {
        case buttonRenderer = "buttonRenderer"
    }

    public init(buttonRenderer: RemoteActionButtonButtonRenderer?) {
        self.buttonRenderer = buttonRenderer
    }
}

// MARK: - RemoteActionButtonButtonRenderer
public struct RemoteActionButtonButtonRenderer: Codable {
    public let text: RemoteResponseText?
    public let navigationEndpoint: RemoteNavigationEndpointClass?
    public let trackingParams: String?

    enum CodingKeys: String, CodingKey {
        case text = "text"
        case navigationEndpoint = "navigationEndpoint"
        case trackingParams = "trackingParams"
    }

    public init(text: RemoteResponseText?, navigationEndpoint: RemoteNavigationEndpointClass?, trackingParams: String?) {
        self.text = text
        self.navigationEndpoint = navigationEndpoint
        self.trackingParams = trackingParams
    }
}

// MARK: - RemoteText
public struct RemoteText: Codable {
    public let runs: [RemotePurpleRun]?

    enum CodingKeys: String, CodingKey {
        case runs = "runs"
    }

    public init(runs: [RemotePurpleRun]?) {
        self.runs = runs
    }
}

// MARK: - RemotePurpleRun
public struct RemotePurpleRun: Codable {
    public let text: String?
    public let bold: Bool?

    enum CodingKeys: String, CodingKey {
        case text = "text"
        case bold = "bold"
    }

    public init(text: String?, bold: Bool?) {
        self.text = text
        self.bold = bold
    }
}

// MARK: - RemoteTriggerCriteria
public struct RemoteTriggerCriteria: Codable {
    public let connectionWhitelists: [String]?
    public let joinLatencySeconds: Int?
    public let rebufferTimeSeconds: Int?
    public let watchTimeWindowSeconds: Int?
    public let refractorySeconds: Int?

    enum CodingKeys: String, CodingKey {
        case connectionWhitelists = "connectionWhitelists"
        case joinLatencySeconds = "joinLatencySeconds"
        case rebufferTimeSeconds = "rebufferTimeSeconds"
        case watchTimeWindowSeconds = "watchTimeWindowSeconds"
        case refractorySeconds = "refractorySeconds"
    }

    public init(connectionWhitelists: [String]?, joinLatencySeconds: Int?, rebufferTimeSeconds: Int?, watchTimeWindowSeconds: Int?, refractorySeconds: Int?) {
        self.connectionWhitelists = connectionWhitelists
        self.joinLatencySeconds = joinLatencySeconds
        self.rebufferTimeSeconds = rebufferTimeSeconds
        self.watchTimeWindowSeconds = watchTimeWindowSeconds
        self.refractorySeconds = refractorySeconds
    }
}
