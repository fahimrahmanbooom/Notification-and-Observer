//
//  FirstViewController.swift
//  Notification and Observer
//
//  Created by Fahim Rahman on 6/3/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import UIKit

let colorChangeNotificationKey = "changeFirstVcColor"

class FirstViewController: UIViewController {

    let notiName = Notification.Name(rawValue: colorChangeNotificationKey)
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        observer()
    }
    
        
    func observer() {
        
        NotificationCenter.default.addObserver(self, selector: #selector(FirstViewController.changeViewControllerColor(_:)), name: self.notiName, object: nil)
    }
    
    @objc func changeViewControllerColor(_: NSNotification) {
        self.view.backgroundColor = UIColor.white
    }
    
    
    @IBAction func button(_ sender: UIButton) {
        
        let vc = storyboard?.instantiateViewController(identifier: "secondViewController") as! SecondViewController
        navigationController?.pushViewController(vc, animated: true)
    }
}
