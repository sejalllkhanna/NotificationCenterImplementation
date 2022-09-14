//
//  ThirdViewController.swift
//  NotificationCenterTask
//
//  Created by Apple on 03/12/21.
//

import UIKit
let notificationKey = "notificationKey"
class ThirdViewController: UIViewController {

    @IBOutlet weak var ThirdVCLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(bringToThird),
                                               name: NSNotification.Name(rawValue: notificationKey),
                                               object: nil)
    }
    @objc func bringToThird(){
       
    }

}
