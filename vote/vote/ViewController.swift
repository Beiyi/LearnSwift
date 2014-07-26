//
//  ViewController.swift
//  vote
//
//  Created by 张北一 on 14-7-25.
//  Copyright (c) 2014年 beiyi.zhang. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet var tbview: UITableView
    
    @IBAction func addcell(sender: UIButton) {
        ivoter.addcounter(0)
        tbview.reloadData()
    }
    
    /*----------------------------------------------*/

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*----------------------------------------------*/

    
    override func viewWillAppear(animated: Bool) {
        tbview.reloadData()
    }
    
    /*func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!){
        if (editingStyle == UITableViewCellEditingStyle.Delete){
            ivoter.add(indexPath.row)
            //println(ivoter.counterArray[indexPath.row])
            tbview.reloadData()
        }
    }*/
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!){
        
            ivoter.add(indexPath.row)
            println(ivoter.counterArray[indexPath.row])
            tbview.reloadData()
        }

    
/*----------------------------------------------*/
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int{
        return ivoter.counterArray.count
    }
    
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
        
        var cell = tableView.dequeueReusableCellWithIdentifier("vcell") as UITableViewCell
        cell.textLabel.text = "\(indexPath.row)号候选人"
        cell.detailTextLabel.text = "\(ivoter.counterArray[indexPath.row])"
        return cell
    }


}

