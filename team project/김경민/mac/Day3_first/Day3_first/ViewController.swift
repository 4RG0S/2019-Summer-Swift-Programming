//
//  ViewController.swift
//  Day3_first
//
//  Created by cse on 2019. 7. 16..
//  Copyright © 2019년 mitny. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var NowTime: UITextField!
    @IBOutlet weak var SelectTime: UITextField!
    
    @IBOutlet weak var datepicker: UIDatePicker!
    
    var timer: Timer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.reload), userInfo: nil, repeats: true)
        
    }
    @objc func reload(){
        let date = NSDate()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        let stringDate = dateFormatter.string(from: date as Date)
        
        NowTime.text=stringDate
        if NowTime == SelectTime {
            self.view.backgroundColor = UIColor.red
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func DatePicker(_ sender: AnyObject) {
        let dateform = DateFormatter()
        dateform.dateFormat = "HH:mm"
        let strDate = dateform.string(from: datepicker.date)
        SelectTime.text = strDate    }


}

