//
//  MetaSDK.swift
//  LumosStefanFramework
//
//  Created by Stefan Petkovic on 24.10.22..
//

import Foundation
import Adjust
import Amplitude

public class MetaSDK {
    public init(with amplitudeApiKey: String, and adjustToken: String) {
        setUpAdjust(with: adjustToken)
        setUpAmplitude(amplitudeApiKey: amplitudeApiKey)
    }
    
    private func setUpAdjust(with adjustToken: String) {
        let yourAppToken = adjustToken
        let environment = ADJEnvironmentSandbox
        let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)

        Adjust.appDidLaunch(adjustConfig)
    }
    
    private func setUpAmplitude(amplitudeApiKey: String) {
        let amplitudeInstance = Amplitude.instance()
        amplitudeInstance.trackingSessionEvents = true
        amplitudeInstance.initializeApiKey(amplitudeApiKey)
        amplitudeInstance.setUserId(Bundle.main.bundleIdentifier ?? "")
    }
    
    public func setAmplitudeUserId(id: String) {
        Amplitude.instance().setUserId(id)
    }
    
    public func trackEvent(with eventType: String, eventProperties: [AnyHashable: Any]? = nil) {
        Amplitude.instance().logEvent(eventType, withEventProperties: eventProperties)
        Amplitude.instance().printEventsCount()
    }
}
