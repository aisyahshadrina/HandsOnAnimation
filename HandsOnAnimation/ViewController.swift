//
//  ViewController.swift
//  HandsOnAnimation
//
//  Created by Aisyah Shadrina on 17/05/19.
//  Copyright © 2019 Aisyah Shadrina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var square: UIView!
    
    @IBOutlet weak var labelCoordinate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(move))
        
        square.addGestureRecognizer(tapGesture)
    }
//    @objc func move () {
//        UIView.animate(withDuration: 0.4, delay: 0.2, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.5, options: .curveLinear, animations: {
    
    @objc func move () {
        UIView.animate(withDuration: 0.4, delay: 0.2, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
            self.changePos ()
        }) { (isFinished) in
        }
    }

    func changePos () {
        let randY = Int.random(in: 1...300)
        let randX = Int.random(in: 1...400)
        square.center = CGPoint(x: randX, y: randY)
        
        let str = "(\(randX),\(randY))"
        
        labelCoordinate.text = str
        let color: [UIColor] = [#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1),#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1),#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1),#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1),#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)]
        
        square.backgroundColor = color [Int.random(in: color.indices)]
    }

}
