//
//  ViewController.swift
//  Day2_second
//
//  Created by cse on 2019. 7. 8..
//  Copyright © 2019년 mitny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count=1
    
    var firstImage:UIImage?
    var secondImage:UIImage?
    var thirdImage:UIImage?
    
    @IBOutlet weak var Image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        firstImage=UIImage(named:"First.jpg")
        secondImage=UIImage(named: "Second.jpg")
        thirdImage=UIImage(named: "Third.jpg")
        Image.image=firstImage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Back(_ sender: UIButton) {
        if(count==1){
            let dialog=UIAlertController(title: "이전 이미지가 없습니다.", message: "다음 버튼을 눌러 이미지를 확인해주세요.", preferredStyle: .alert)
            let action = UIAlertAction(title:"Confirm",style:UIAlertActionStyle.default)
            dialog.addAction(action)
            
            self.present(dialog, animated: true, completion: nil)
        }
        else if(count==2){
            Image.image=firstImage
            count=count-1
        }
        else if(count==3){
            Image.image=secondImage
            count=count-1
        }
    }
    
    @IBAction func Front(_ sender: UIButton) {
        if(count==1){
            Image.image=secondImage
            count=count+1        }
        else if(count==2){
            Image.image=thirdImage
            count=count+1
        }
        else if(count==3){
            let dialog=UIAlertController(title: "다음 이미지가 없습니다.", message: "이전 버튼을 눌러 이미지를 확인해주세요.", preferredStyle: .alert)
            let action = UIAlertAction(title:"Confirm",style:UIAlertActionStyle.default)
            dialog.addAction(action)
            
            self.present(dialog, animated: true, completion: nil)
        }
    }


}

