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
    
    let animations = Animation.getAnimationList()
    
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
     
        for index in 0..<animations.count-1 {
            func rounding(value: CGFloat) -> String {
                return String(format: "%.2f", value)
            }
            
            switch changeAnimationButton.titleLabel?.text {
                case "Start":
                    infoAboutAnimationLebel.text =
                    """
                    Animation: \(animations[index].animation)
                    Curve: \(animations[index].curve)
                    Force: \(rounding(value: animations[index].force))
                    Delay: \(rounding(value: animations[index].delay))
                    Duration: \(rounding(value: animations[index].duration))
                    """
                    animationView.animation = "\(animations[index].animation)"
                    animationView.curve = "\(animations[index].curve)"
                    animationView.force = animations[index].force
                    animationView.delay = animations[index].delay
                    animationView.duration =  animations[index].duration

                    animationView.animate()

                    changeAnimationButton.setTitle("\(animations[index+1].animation)", for: .normal)
                
                case "\(animations[index].animation)":
                    infoAboutAnimationLebel.text =
                    """
                    Animation: \(animations[index].animation)
                    Curve: \(animations[index].curve)
                    Force: \(rounding(value: animations[index].force))
                    Delay: \(rounding(value: animations[index].delay))
                    Duration: \(rounding(value: animations[index].duration))
                    """
                        
                    animationView.animation = "\(animations[index].animation)"
                    animationView.curve = "\(animations[index].curve)"
                    animationView.force = animations[index].force
                    animationView.delay = animations[index].delay
                    animationView.duration =  animations[index].duration
                    
                    animationView.animate()
                        
                    changeAnimationButton.setTitle("\(animations[index+1].animation)", for: .normal)
                    
                default: break
            }
        }
    }
}
