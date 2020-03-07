//
//  ThirdViewController.swift
//  Notification and Observer
//
//  Created by Fahim Rahman on 7/3/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "First VC colour is teal now"
        
        let notiTwoName = Notification.Name(rawValue: colorChangeNotificationKeyTwo)
        NotificationCenter.default.post(name: notiTwoName, object: nil)
    }
}
