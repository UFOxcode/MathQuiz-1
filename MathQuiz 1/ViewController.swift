//
//  ViewController.swift
//  MathQuiz 1
//
//  Created by UFO Xcode on 2020/1/13.
//  Copyright © 2020 UFO Xcode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var card: UIView!
    @IBOutlet weak var imageQuiz: UIImageView!
    
    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var darkFillView: UIView!
    @IBOutlet weak var toggleMenuButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

  
    
    
    @IBAction func panCard(_ sender: UIPanGestureRecognizer) {
    
        
    }
    
    
    
    @IBAction func btnNext(_ sender: UIButton) {
        
       
        UIView.animate(withDuration: 1, animations: {
            
            self.card.transform = CGAffineTransform(translationX: -20, y: -100).scaledBy(x: 0.1, y: 0.1).rotated(by: 45)
        })

        
    }
    
    
    @IBAction func toggleMenu(_ sender: UIButton) {
        
        if darkFillView.transform == .identity {
            UIView.animate(withDuration: 1, animations:{
                self.darkFillView.transform = CGAffineTransform(scaleX: 11, y: 11)
                self.menuView.transform = CGAffineTransform(translationX: 0, y: -271)
                self.toggleMenuButton.transform = CGAffineTransform(rotationAngle: self.piPi(degree: 180))
            }) { (true) in
            }
        } else {
            UIView.animate(withDuration: 1, animations:{
                self.darkFillView.transform = .identity
                self.menuView.transform = .identity
                self.toggleMenuButton.transform = .identity
                
                
            }) { (true) in
            }
            
        }
    }
    
    //// 做func 來算 pi 的角度 就不用想了。。。很方便
    func piPi(degree: Double) -> CGFloat {
        return CGFloat(degree * .pi / degree)
    }
    
    
}

