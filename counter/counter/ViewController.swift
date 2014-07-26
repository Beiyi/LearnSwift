//
//  ViewController.swift
//  counter
//
//  Created by beiyi on 14-7-24.
//  Copyright (c) 2014 beiyi.zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    @IBAction func plusBtn(sender: AnyObject) {
        count++
        self.vote.text = "票数\(count)"
    }
                            
    @IBAction func zero(sender: AnyObject) {
    count = 0
    self.vote.text = "票数\(count)"

    }
    
    @IBOutlet var vote: UILabel
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

