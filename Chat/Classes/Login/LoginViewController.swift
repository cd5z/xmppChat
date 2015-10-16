//
//  CDLoginViewController.swift
//  Chat
//
//  Created by lcd on 15/9/16.
//  Copyright © 2015年 lcd. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var userField: UITextField!
    @IBOutlet weak var pswField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButtonClicked(sender: AnyObject) {
        print(self.userField.text)
        if (self.userField.text == "" || self.pswField.text == "") {
            print("请输入用户名/密码");
            return;
        }
        //保存用户名/密码到沙盒
        NSUserDefaults.standardUserDefaults().setObject(self.userField.text, forKey: "username")
        NSUserDefaults.standardUserDefaults().setObject(self.pswField.text, forKey: "password")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        XMPPManager.sharedXMPPManager.xmppLogin(userField.text!, password: pswField.text!)

        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
