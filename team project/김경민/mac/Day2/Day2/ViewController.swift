//
//  ViewController.swift
//  Day2
//
//  Created by cse on 2019. 7. 8..
//  Copyright © 2019년 mitny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isZoom=false
    var imgOff: UIImage?
    var imgOn: UIImage?

    @IBOutlet weak var btnText: UIButton!
    @IBOutlet weak var Image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imgOff=UIImage(named: "Unknown2.jpg")
        imgOn=UIImage(named: "Unknown.jpg")
        Image.image=imgOn
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Zoom(_ sender: UIButton) {
        let scale: CGFloat=2.0
        var newWeight:CGFloat,newHeight:CGFloat
        
        if(isZoom){
            newHeight=Image.frame.height/scale
            newWeight=Image.frame.width/scale
            btnText.setTitle("Zoom in", for: .normal)
        }
        else{
            newWeight=self.Image.frame.width*scale
            newHeight=self.Image.frame.height*scale
            self.btnText.setTitle("Zoom out", for: .normal)
        }
        isZoom = !isZoom
        Image.frame.size=CGSize(width: newWeight, height: newHeight)
    }
    @IBAction func Switch(_ sender: UISwitch) {
        if sender.isOn{
            Image.image=imgOn
        }
        else{
            Image.image=imgOff
        }
    }


}

