//
//  SecondViewController.swift
//  iOSOrientation
//
//  Created by Thieu Mao on 4/25/17.
//  Copyright © 2017 Hay Nhanh. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Second ViewController")
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        
////        AppUtility.lockOrientation(.portrait)
//        // Or to rotate and lock
//         AppUtility.lockOrientation(.portrait, andRotateTo: .portrait)
//        
//    }
//    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        
//        // Don't forget to reset when view is being removed
//        AppUtility.lockOrientation(.all)
//    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIDevice.current.setValue(UIInterfaceOrientationMask.portrait.rawValue, forKey: "orientation")
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }

    
}
