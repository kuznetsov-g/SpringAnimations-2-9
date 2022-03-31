//
//  ViewController.swift
//  SpringAnimations 2-9
//
//  Created by Георгий Кузнецов on 29.03.2022.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var movingView: SpringButton!
    
    @IBOutlet weak var animationLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var repeatCountLabel: UILabel!
    
    var animation = ""
    var curve = ""
    var force = CGFloat(0)
    var repeatCount = Float(0)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        getLabelInfo()
    }

    func getLabelInfo() {
        animationLabel.text = "animation: \(animation )"
        curveLabel.text = "curve: \(curve )"
        forceLabel.text = "force: \(force)"
        repeatCountLabel.text = "repeats: \(repeatCount)"
        
        getRandomSets()
    }
    
    func getRandomSets() {
        animation = animationArray.randomElement() ?? "shake"
        curve = curveArray.randomElement() ?? "easeIn"
        force = CGFloat(Int.random(in: 1...5))
        repeatCount = Float(Int.random(in: 1...3))
    }
    
    
    @IBAction func goButton(_ sender: Any) {
        getLabelInfo()
        movingView.animation = animation
        movingView.curve = curve
        movingView.force = force
        movingView.repeatCount = repeatCount
        
        movingView.animate()
    }
}

