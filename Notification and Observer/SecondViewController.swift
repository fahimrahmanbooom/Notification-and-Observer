//
//  SecondViewController.swift
//  Notification and Observer
//
//  Created by Fahim Rahman on 6/3/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = "First VC colour is white now"
        
        let notiOneName = Notification.Name(rawValue: colorChangeNotificationKeyOne)
        NotificationCenter.default.post(name: notiOneName, object: nil)
    }
}
