//
//  ViewController.swift
//  CBT
//
//  Created by nakagawakeita on 2016/04/17.
//  Copyright © 2016年 continue.Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var label: UILabel!
    
    @IBAction func button1(sender: UIButton) {
                label.text = "CBT"
        
    }

    @IBAction func unWindows(segue: UIStoryboardSegue){
    }

}

