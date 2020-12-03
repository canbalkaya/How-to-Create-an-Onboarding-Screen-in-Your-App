//
//  LandscapeManager.swift
//  How to Create an Onboarding Screen in Your App
//
//  Created by Can Balkaya on 12/3/20.
//

import Foundation

class LandscapeManager {
    static let shared = LandscapeManager()
    
    var isFirstLaunch: Bool {
        get {
            !UserDefaults.standard.bool(forKey: #function)
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: #function)
        }
    }
}
