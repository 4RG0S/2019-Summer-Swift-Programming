//
//  ViewController.swift
//  Day2_third
//
//  Created by cse on 2019. 7. 8..
//  Copyright © 2019년 mitny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Time: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Date(_ sender: UIDatePicker) {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat="yyyy-MM-dd"
        let sttDate = dateFormatter.stringFromDate(DatePicker.date)
        self.DateLabel.text = strDate
        
    }

}

