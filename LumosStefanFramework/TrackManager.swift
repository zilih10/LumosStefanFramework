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
        setUpAmplitude()
    }
    
    private func setUpAmplitude() {
        let yourAppToken = "e32eaf896ec7f5651e8bc96450559e19"
        let environment = ADJEnvironmentSandbox
        let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)

        Adjust.appDidLaunch(adjustConfig)
    }
}
