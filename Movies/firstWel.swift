//
//  firstWel.swift
//  Movies
//
//  Created by Thuy Pham lam on 8/15/24.
//

import UIKit
import SwiftUI

class firstWel: UIViewController, CAAnimationDelegate {
    
    
    @IBOutlet var gg: UIView!
    
    
    
    
    
    @IBOutlet weak var specialBUtton: UIButton!
    

    
    
    @IBOutlet weak var hiddenButton3: UIButton!
    
    
    
    
    
    
    
    
    @IBOutlet weak var showCase: UIButton!
    var isButtonOn = false
    
    
    @IBAction func showFull(_ sender: UIButton) {
        isButtonOn.toggle()
        if isButtonOn {
            loadGG()
          
            loadGG3()
           
            
        } else{
            unloadGG()
        
            unloadGG3()
            
           
            
            
        }
    }
        
        
    func loadGG() {
        specialBUtton.setTitle("BMI", for: .normal)
        specialBUtton.backgroundColor = .gray
      
    }
    
        
    func unloadGG(){
        specialBUtton.setTitle("", for: .normal)
        specialBUtton.backgroundColor = .systemYellow
    }
        
    
        
    func loadGG3(){
        hiddenButton3.setTitle("CALCULATOR", for: .normal)
        hiddenButton3.backgroundColor = .gray
       
    }
    func unloadGG3() {
        hiddenButton3.setTitle("", for: .normal)
        hiddenButton3.backgroundColor = .systemYellow
        
    }

   
    
    
    
    
    
    
    
    //func gg() {
       // let containerView = UIView(frame: view.bounds)
        //let showcaseView = UIView(frame: view.bounds)
        //containerView.addSubview(specialBUtton)
        //containerView.addSubview(hiddenButton2)
        //containerView.addSubview(hiddenButton3)
        //containerView.addSubview(hiddenButton4)
        //showcaseView.addSubview(showCase)
        //showcaseView.addSubview(allow)
        //view.addSubview(showcaseView)
        //view.addSubview(containerView)
        
        //let fadeInAnimation = CABasicAnimation(keyPath: "opacity")
        //fadeInAnimation.fromValue = 0
        //fadeInAnimation.toValue = 1
        //fadeInAnimation.duration = 2
        //fadeInAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut) // For smooth animation
        //fadeInAnimation.fillMode = .forwards
        //fadeInAnimation.isRemovedOnCompletion = false

       // containerView.layer.add(fadeInAnimation, forKey: "fadeIn")
        
        
        
       // let moveRightAnimation = CABasicAnimation(keyPath: "position.x")
     //   moveRightAnimation.fromValue = containerView.layer.position.x
  //      moveRightAnimation.toValue = containerView.layer.position.x + 100
  //      moveRightAnimation.duration = 1.0
  //      moveRightAnimation.fillMode = .forwards
  //      moveRightAnimation.isRemovedOnCompletion = false
  //      moveRightAnimation.delegate = self
   //     moveRightAnimation.timingFunction = //CAMediaTimingFunction(name: .easeInEaseOut)
//        moveRightAnimation.fillMode = .forwards
  //      moveRightAnimation.isRemovedOnCompletion = false

//        containerView.layer.add(moveRightAnimation, forKey: "moveRight")
       

//    }
    
  //  func ungg() {
  //      let containerView = UIView(frame: view.bounds)
   //     let showcaseView = UIView(frame: view.bounds)
  //      containerView.addSubview(specialBUtton)
   //     containerView.addSubview(hiddenButton2)
  //      containerView.addSubview(hiddenButton3)
  //      containerView.addSubview(hiddenButton4)
  //      showcaseView.addSubview(showCase)
 //       showcaseView.addSubview(allow)
 //       view.addSubview(showcaseView)
  //      view.addSubview(containerView)

        
        
   //     let moveBackAnimation = CABasicAnimation(keyPath: "position.x")
//        moveBackAnimation.fromValue = containerView.layer.position.x + 100
 //       moveBackAnimation.toValue = containerView.layer.position.x
   //     moveBackAnimation.duration = 1.0
  //      moveBackAnimation.fillMode = .forwards
   //     moveBackAnimation.isRemovedOnCompletion = false
 //       containerView.layer.add(moveBackAnimation, forKey: //"moveBack")
        
       
        
  //      let fadeOutAnimation = CABasicAnimation(keyPath: "opacity")
 //       fadeOutAnimation.fromValue = 1
  //      fadeOutAnimation.toValue = 0
  //      fadeOutAnimation.duration = 1
  //      fadeOutAnimation.timingFunction = //CAMediaTimingFunction(name: .easeInEaseOut) // For smooth animation
 //       fadeOutAnimation.i
 //       fadeOutAnimation.fillMode = .forwards
  //      fadeOutAnimation.isRemovedOnCompletion = false

   //     containerView.layer.add(fadeOutAnimation, forKey: "fadeOut")
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
    }
}
    
    


    
    
    
    
    
    
    
    
    
    
    
    
    
    
        

            
            
            

        
        
        
        
        
        
        
        
        
        


