//
//  TrackManager.swift
//  LumosStefanFramework
//
//  Created by Stefan Petkovic on 24.10.22..
//

import Foundation
import Adjust
import Amplitude

public class TrackManager {
    public init() {
        setUpAdjust()
        setUpAmplitude()
    }
    
    private func setUpAdjust() {
        let yourAppToken = "mzy0q92o2328"
        let environment = ADJEnvironmentSandbox
        let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)

        Adjust.appDidLaunch(adjustConfig)
    }
    
    private func setUpAmplitude() {
        let amplitudeInstance = Amplitude.instance()
        amplitudeInstance.trackingSessionEvents = true
        amplitudeInstance.initializeApiKey("e32eaf896ec7f5651e8bc96450559e19")
        amplitudeInstance.setUserId(Bundle.main.bundleIdentifier ?? "")
        amplitudeInstance.logEvent("app_start")
    }
}
