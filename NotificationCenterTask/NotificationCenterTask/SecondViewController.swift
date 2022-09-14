//
//  SecondViewController.swift
//  NotificationCenterTask
//
//  Created by Apple on 03/12/21.
//

import UIKit
let myNotificationKey = "com.bobthedeveloper.notificationKey"

class SecondViewController: UIViewController {
    @IBOutlet weak var SecondVCLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(doThisWhenNotify),
                                               name: NSNotification.Name(rawValue: myNotificationKey),
                                               object: nil)
        
        
    }
    
    @objc func doThisWhenNotify() {
        SecondVCLabel.text = "Notification Completed B!😜"
        DispatchQueue.main.asyncAfter(deadline: .now()+3) {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func TabToNotifyBack(_ sender: UIButton) {
        
       
    }
}

