//
//  ViewController.swift
//  NotificationCenterTask
//
//  Created by Apple on 03/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var FIrstVCLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillDisappear(_ animated: Bool) {
        NotificationCenter.default.post(name: Notification.Name(rawValue: myNotificationKey), object: self)
    }
    
   
    
    @IBAction func ButtonTapped(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

