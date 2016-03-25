//
//  RegisterViewController.swift
//  Chat
//
//  Created by lcd on 15/9/16.
//  Copyright © 2015年 lcd. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let buttonItem = UIBarButtonItem(title: "返回", style:UIBarButtonItemStyle.Bordered, target: self, action: #selector(RegisterViewController.backToMain))
        self.navigationItem.leftBarButtonItem = buttonItem;

    }


    func backToMain() {
        self .dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
