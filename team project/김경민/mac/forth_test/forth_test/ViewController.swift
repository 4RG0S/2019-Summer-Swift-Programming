//
//  ViewController.swift
//  forth_test
//
//  Created by cse on 2019. 7. 23..
//  Copyright © 2019년 cse. All rights reserved.
//
import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var Array=["1.jpg","2.jpg","3.jpg","4.jpg"]

    @IBOutlet weak var selected: UIPickerView!
    
    @IBOutlet weak var itemName: UITextField!
    @IBOutlet weak var image: UIImageView{
        let myImage: UIImage = UIImage(named: )
        image.image = UIImage
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selected.delegate = self
        selected.dataSource = self
    }
    public func numberOfComponentsInPickerView(pickerView:UIPickerView) -> Int{
        return 1
    }
    
    public func pickerView(_pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return Array.count
    }
    func pickerView(_pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        itemName.text = Array[row]
        return Array[row]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet var select: [UIPickerView]!


}

