//
//  ViewController.swift
//  MyApp01
//
//  Created by user on 2017/6/19.
//  Copyright © 2017年 allen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelMsg: UILabel!
    @IBOutlet weak var Num1: UILabel!
    @IBOutlet weak var Num2: UILabel!
    @IBOutlet weak var Num3: UILabel!
    @IBOutlet weak var Num4: UILabel!
    @IBOutlet weak var Num5: UILabel!
    @IBOutlet weak var Num6: UILabel!
    
    
    @IBOutlet weak var btnClick: UIButton!
    
    
    @IBAction func sayYa(_ sender: Any) {
        labelMsg.text = createLottery()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    private func createLottery() -> String {
        var rand:Int
        var x:Set<Int> = []
        while x.count < 6 {
            var rand = Int(arc4random_uniform(49))+1
            x.insert(rand)
            
        }
        var y = x.sorted()
        var strLottery = ""
        for lottery in y {
            strLottery.append("\(lottery) ")
        }
        let arrayLottery = Array(x)
        Num1.text = String(arrayLottery[0])
        Num2.text = String(arrayLottery[1])
        Num3.text = String(arrayLottery[2])
        Num4.text = String(arrayLottery[3])
        Num5.text = String(arrayLottery[4])
        Num6.text = String(arrayLottery[5])
        return strLottery
    }

}

