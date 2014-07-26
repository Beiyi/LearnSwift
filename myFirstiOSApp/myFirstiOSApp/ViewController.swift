//
//  ViewController.swift
//  myFirstiOSApp
//
//  Created by beiyi on 14-7-6.
//  Copyright (c) 2014 beiyi.zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var apptitle: UILabel
    
    @IBOutlet var text1: UITextField
    @IBOutlet var text2: UITextField
    @IBOutlet var stuText: UITextField
    @IBOutlet var result: UILabel
    
    @IBAction func didClicked(sender: UIButton) {
        var value1 = self.text1.text.toInt()!
        var value2 = self.text2.text.toInt()!
        var 结果 = value1 + value2
        
        if 结果 == self.stuText.text.toInt()
        {
        self.result.text = "答对了！答案是\(结果)"
        }
        else
        {
            self.result.text = "这个答案还不对哦"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

