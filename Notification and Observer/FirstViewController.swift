//
//  FirstViewController.swift
//  Notification and Observer
//
//  Created by Fahim Rahman on 6/3/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import UIKit

let colorChangeNotificationKeyOne = "changeFirstVcColorToWhite"
let colorChangeNotificationKeyTwo = "changeFirstVcColorToTeal"

class FirstViewController: UIViewController {

    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    
    let notiOneName = Notification.Name(rawValue: colorChangeNotificationKeyOne)
    let notiTwoName = Notification.Name(rawValue: colorChangeNotificationKeyTwo)
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        observer()
    }
    
        
    func observer() {
        
            NotificationCenter.default.addObserver(self, selector: #selector(FirstViewController.changeViewControllerColorToWhite(_:)), name: self.notiOneName, object: nil)

            NotificationCenter.default.addObserver(self, selector: #selector(FirstViewController.changeViewControllerColorToTeal(_:)), name: self.notiTwoName, object: nil)
    }
    
    
    
    @objc func changeViewControllerColorToWhite(_: Notification) {
        self.view.backgroundColor = UIColor.white
    }
    
    @objc func changeViewControllerColorToTeal(_ : Notification) {
        self.view.backgroundColor = UIColor.systemTeal
    }
    
    
    
    @IBAction func buttonOne(_ sender: UIButton) {
        
        let vc = storyboard?.instantiateViewController(identifier: "secondViewController") as! SecondViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        
        let vc = storyboard?.instantiateViewController(identifier: "thirdViewController") as! ThirdViewController
        navigationController?.pushViewController(vc, animated: true)
    }
}
