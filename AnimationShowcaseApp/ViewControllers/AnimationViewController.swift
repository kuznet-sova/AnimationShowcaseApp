//
//  ViewController.swift
//  AnimationShowcaseApp
//
//  Created by Ирина Кузнецова on 16.06.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

import Spring

class AnimationViewController: UIViewController {

    @IBOutlet var infoAboutAnimationLebel: UILabel!
    @IBOutlet var animationView: SpringView!
    @IBOutlet var changeAnimationButton: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoAboutAnimationLebel.text =
        """
        Animation: squeeze
        Curve: easeInOut
        Force: 1
        Delay: 1
        Duration: 1
        """
    }

    @IBAction func changeAnimation() {
        switch changeAnimationButton.titleLabel?.text {
                case "Start":
                    infoAboutAnimationLebel.text =
                    """
                    Animation: flash
                    Curve: easeIn
                    Force: 1
                    Delay: 1
                    Duration: 0.5
                    """
                    
                    animationView.animation = "flash"
                    animationView.curve = "easeIn"
                    animationView.force = 1
                    animationView.delay = 1
                    animationView.duration =  0.5
                    animationView.animate()
                    
//                    changeAnimationButton.titleLabel?.text = "slideUp"
                case "slideUp":
                    infoAboutAnimationLebel.text =
                    """
                    Animation: slideUp
                    Curve: linear
                    Force: 2.7
                    Delay: 0.5
                    Duration: 1.7
                    """
                    
                    animationView.animation = "slideUp"
                    animationView.curve = "linear"
                    animationView.force = 2.7
                    animationView.delay = 0.5
                    animationView.duration =  1.7
                    animationView.animate()
                    
//                    changeAnimationButton.titleLabel?.text = "Start"
                default:
                    changeAnimationButton.titleLabel?.text = "Start"
                }
    }
}

