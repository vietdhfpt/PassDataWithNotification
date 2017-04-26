//
//  ViewController.swift
//  PassDataWithNotification
//
//  Created by Đỗ Việt on 4/26/17.
//  Copyright © 2017 Do Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // nhận dữ liệu notification thông qua key "Notication"
        NotificationCenter.default.addObserver(self, selector: #selector(handleNotification(_:)), name: NSNotification.Name.init("Notification"), object: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // xử lý dữ liệu
    func handleNotification(_ notification: Notification) {
        
        guard let dict = notification.userInfo else { return }
        
        guard let value = dict["name"] as? String else { return }
        
        nameLabel.text = value
        
    }

    // - Sử dụng notication thì cần phải deinit khi k còn sử dụng nữa.
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}

