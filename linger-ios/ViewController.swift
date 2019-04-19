//
//  ViewController.swift
//  linger-ios
//
//  Created by Natalia Braz on 31/03/19.
//  Copyright © 2019 Natalia Braz. All rights reserved.
//

import UIKit
import React
import CodePush

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func callScores(sender: UIButton) {
        callReact(module: "Scores")
    }
    
    @IBAction func callNotScores(sender: UIButton) {
        callReact(module: "NotScores")
    }
    
    
    func callReact(module: String) {
        let jsCodeLocation = CodePush.bundleURL()

        let mockData:NSDictionary = ["scores":
            [
                ["name":"Alex", "value":"42"],
                ["name":"Joel", "value":"16"]
            ],
            "AppName": module
        ]
        
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "linger",
            initialProperties: mockData as [NSObject : AnyObject],
            launchOptions: nil
        )
        
        let vc = UIViewController()
        vc.view = rootView
        self.present(vc, animated: true, completion: nil)
    }

}
