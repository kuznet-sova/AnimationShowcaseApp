//
//  Animation.swift
//  AnimationShowcaseApp
//
//  Created by Ирина Кузнецова on 17.06.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

import Spring

struct Animation {
    let animation: String
    let curve: String
    let force: CGFloat
    let delay: CGFloat
    let duration: CGFloat
}

extension Animation {
    static func getAnimationList() -> [Animation] {
        var animationList = [Animation]()
        
        let shuffledAnimation = DataManager().animation.shuffled()
        let shuffledCurve = DataManager().curve.shuffled()
        
        for index in 0..<DataManager().animation.count {
            animationList.append(
                Animation (
                    animation: shuffledAnimation[index],
                    curve: shuffledCurve[index],
                    force: CGFloat.random(in: 0.1...1.5),
                    delay: CGFloat.random(in: 0.1...1),
                    duration: CGFloat.random(in: 0.1..<2)
                )
            )
        }
        
        return animationList
    }
}
