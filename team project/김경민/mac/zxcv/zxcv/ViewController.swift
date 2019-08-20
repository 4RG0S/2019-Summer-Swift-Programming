//
//  ViewController.swift
//  zxcv
//
//  Created by cse on 2019. 7. 2..
//  Copyright © 2019년 cse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hello: UILabel!
    @IBOutlet weak var input: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sending(sender: UIButton) {
        hello.text="Hello, "+input.text!
    }

}

