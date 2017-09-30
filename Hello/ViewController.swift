//
//  ViewController.swift
//  Hello
//
//  Created by chenr on 2017/9/25.
//  Copyright © 2017年 chenr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var myViews = [Custom]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let btnOK = UIButton(frame: CGRect(x: 90, y: 450, width: 100, height: 50))
        btnOK.setTitle("[ Add ]", for: UIControlState.normal)
        
        let btnMove = UIButton(frame: CGRect(x: 200, y: 450, width: 100, height: 50))
        btnMove.setTitle("[ Move ]", for: UIControlState.normal)
        
        let btnClear = UIButton(frame: CGRect(x: 300, y: 450, width: 100, height: 50))
        btnClear.setTitle("[ Clear ]", for: UIControlState.normal)
      
        self.view.addSubview(btnOK)
        self.view.addSubview(btnMove)
        self.view.addSubview(btnClear)
        
        btnOK.addTarget(self, action: #selector(btnOKClick), for: UIControlEvents.touchUpInside)
        btnMove.addTarget(self, action: #selector(btnMoveClick), for: UIControlEvents.touchUpInside)
        btnClear.addTarget(self, action: #selector(btnClearClick), for: UIControlEvents.touchUpInside)
    }
    
        
    func btnOKClick() {
        
        //let rand1 = arc4random() % 100
        let xpoint = Int(arc4random() % UInt32(self.view.frame.size.width))
        let ypoint = Int(arc4random() % UInt32(self.view.frame.size.height))
        
        let myView = Custom(frame: CGRect(x: xpoint, y: ypoint, width: 150, height: 150))
        
        //self.view.addSubview(myView)
        
        myView.backgroundColor = UIColor.clear
        myViews.append(myView)
        
        self.view.insertSubview(myView, at: 0)
    }
    
    func btnMoveClick() {

        for view in myViews {
            UIView.transition(with: self.view, duration: 3.0, options: .allowAnimatedContent,
                animations: {
                                
                let new_xpoint = Int(arc4random() % UInt32(self.view.frame.size.width))
                let new_ypoint = Int(arc4random() % UInt32(self.view.frame.size.height))
                                
                view.center = CGPoint(x: new_xpoint, y: new_ypoint)
                
            },
                completion: nil)
        }
        
    }
    
    
    func btnClearClick() {
        /*for view in myViews {
            view.removeFromSuperview()
        }*/
        
        for view in self.view.subviews {
            
            if view is Custom {
                view.removeFromSuperview()
            }
        }
    }

}

