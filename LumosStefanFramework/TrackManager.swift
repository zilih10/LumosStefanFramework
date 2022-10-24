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
    }
    
    private func setUpAdjust() {
        let yourAppToken = "mzy0q92o2328"
        let environment = ADJEnvironmentSandbox
        let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)

        Adjust.appDidLaunch(adjustConfig)
    }
    
    private func setUpAmplitude() {
    }
}
