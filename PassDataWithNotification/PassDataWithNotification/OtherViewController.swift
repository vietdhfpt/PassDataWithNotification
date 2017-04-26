//
//  OtherViewController.swift
//  PassDataWithNotification
//
//  Created by Đỗ Việt on 4/26/17.
//  Copyright © 2017 Do Viet. All rights reserved.
//

import UIKit

class OtherViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // bắn dữ liệu
    @IBAction func passData(_ sender: UIBarButtonItem) {
        
        let dict = ["name": nameTextField.text]
        
        // phát sóng notification thông qua key 'Notification'
        NotificationCenter.default.post(name: NSNotification.Name.init("Notification"), object: nil, userInfo: dict)
        
        _ = navigationController?.popViewController(animated: true)
        
    }
    
}
