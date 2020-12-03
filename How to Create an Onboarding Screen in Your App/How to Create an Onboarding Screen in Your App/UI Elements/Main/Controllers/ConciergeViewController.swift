//
//  ConciergeViewController.swift
//  How to Create an Onboarding Screen in Your App
//
//  Created by Can Balkaya on 12/3/20.
//

import UIKit

class ConciergeViewController: UIViewController {

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if LandscapeManager.shared.isFirstLaunch {
            performSegue(withIdentifier: "toOnboarding", sender: nil)
            LandscapeManager.shared.isFirstLaunch = true
        } else {
            performSegue(withIdentifier: "toMain", sender: nil)
        }
    }
}
