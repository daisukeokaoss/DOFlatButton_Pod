//
//  ViewController.swift
//  DOFlatButton
//
//  Created by 岡大輔 on 06/27/2016.
//  Copyright (c) 2016 岡大輔. All rights reserved.
//

import UIKit

import DOFlatButton

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let button1:DOFlatButton = DOFlatButton(type: UIButtonType.Custom)
        
        button1.frame = CGRectMake(60, 164 - 20 - 40, 200, 60);
        
        button1.faceColor = UIColor(red: 86.0/255.0, green: 161.0/255.0, blue: 217.0/255.0, alpha: 1.0)
        button1.sideColor = UIColor(red: 79.0/255.0, green: 127.0/255.0, blue: 179.0/255.0, alpha: 1.0)
        button1.radius = 8.0
        button1.margin = 4.0
        button1.depth  = 3.0
        
        button1.titleLabel?.font = UIFont.boldSystemFontOfSize(16)
        button1.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        button1.setTitle("DOFlatButton", forState: UIControlState.Normal)
        
        self.view.addSubview(button1)
        
        let button2 = DOFlatButton(type: UIButtonType.Custom)
        button2.frame = CGRectMake(60, 224 - 20, 200, 60)
        button2.faceColor = UIColor(red: 243.0/255.0, green: 152.0/255.0, blue: 0, alpha: 1.0)
        button2.sideColor = UIColor(red: 170.0/255.0, green: 105.0/255.0, blue: 0, alpha: 1.0)
        button2.radius = 6.0
        button2.margin = 7.0
        button2.depth  = 6.0
        
        button2.titleLabel?.font = UIFont.boldSystemFontOfSize(16)
        button2.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        button2.setTitle("DOFlatButton", forState: UIControlState.Normal)
        
        self.view.addSubview(button2)
        
        let button3:DOFlatButton = DOFlatButton(type: UIButtonType.Custom)
        button3.frame = CGRectMake(60, 284 + 20, 200, 60);
        button3.faceColor = UIColor(red: 86.0/255.0, green: 161.0/255.0, blue: 217.0/255.0, alpha: 1.0)
        button3.sideColor = UIColor(red: 86.0/255.0, green: 161.0/255.0, blue: 217.0/255.0, alpha: 1.0)
        button3.borderColor = UIColor(red: 79.0/255.0, green: 127.0/255.0, blue: 179.0/255.0, alpha: 1.0)
        button3.radius = 8.0
        button3.margin = 4.0
        button3.depth = 4.0
        button3.borderWidth = 2.0
        
        
        button3.titleLabel?.font = UIFont.boldSystemFontOfSize(16)
        button3.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        button3.setTitle("DOFlatButton", forState: UIControlState.Normal)
        
        self.view.addSubview(button3)
        
        let button4:DOFlatButton = DOFlatButton(type: UIButtonType.Custom)
        button4.frame = CGRectMake(60, 344 + 20 + 40, 200, 60);
        button4.faceColor = UIColor(white: 0.75, alpha: 1.0)
        button4.sideColor = UIColor(white: 0.55, alpha: 1.0)
        button4.radius = 8.0
        button4.margin = 4.0
        button4.depth  = 3.0
        
        button4.titleLabel?.font = UIFont.boldSystemFontOfSize(16)
        button4.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        button4.setTitle("DOFlatButton", forState: UIControlState.Normal)
        
        button4.enabled = false
        
        self.view.addSubview(button4)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

