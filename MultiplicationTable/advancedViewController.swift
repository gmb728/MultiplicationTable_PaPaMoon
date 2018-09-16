//
//  advancedViewController.swift
//  MultiplicationTable
//
//  Created by Chang Sophia on 2018/9/11.
//  Copyright © 2018年 Chang Sophia. All rights reserved.
//

import UIKit
import GameKit
import AVFoundation

class advancedViewController: UIViewController {
    var player: AVPlayer?
    @IBOutlet weak var multiplierImageView: UIImageView!
    @IBOutlet weak var multiplicandImageView: UIImageView!
    @IBOutlet weak var signImageView: UIImageView!
    @IBOutlet weak var multiplierTextField: UITextField!
    @IBOutlet weak var multiplicandTextField: UITextField!
    @IBOutlet weak var keyInAnsTextField: UITextField!
    @IBOutlet weak var okButton: UIButton!
    @IBOutlet weak var checkTheAnsImageView: UIImageView!
    @IBOutlet weak var resultTextField: UITextField!
    
    let multipliers = ["number_1","number_2","number_3","number_4","number_5","number_6","number_7","number_8","number_9"]
    let multiplcans = ["number_1","number_2","number_3","number_4","number_5","number_6","number_7","number_8","number_9"]
    let signs = ["add","deduct","multiply","divide"]
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        resultTextField.isHidden = true
//sign
        let randomDistribution = GKRandomDistribution(lowestValue: 1, highestValue: signs.count-1)
        let imageX = randomDistribution.nextInt()
        let sign = signs[imageX-1]
        signImageView.image = UIImage(named: sign)
//add
        if signImageView.image == UIImage(named:"add"){
        resultTextField.isHidden = true
        let randomDistribution = GKRandomDistribution(lowestValue: 1, highestValue: multipliers.count-1)
        let numberA = randomDistribution.nextInt()
        let multiplier = multipliers[numberA-1]
        multiplierImageView.image = UIImage(named: multiplier)
        multiplierTextField.text = "\(numberA)"
        let numberB = randomDistribution.nextInt()
        let multiplicand = multiplcans[numberB-1]
        multiplicandImageView.image = UIImage(named: multiplicand)
        multiplicandTextField.text = "\(numberB)"
        var numberC = 0
        numberC = numberA+numberB
        resultTextField.text = "\(numberC)"
        keyInAnsTextField.text = ""
//dedcut
        }else if signImageView.image == UIImage(named:"deduct"){
    let randomDistribution = GKRandomDistribution(lowestValue: 1, highestValue: multipliers.count-1)
    let numberA = randomDistribution.nextInt()
    let multiplier = multipliers[numberA-1]
    multiplierImageView.image = UIImage(named: multiplier)
    multiplierTextField.text = "\(numberA)"
    let numberB = randomDistribution.nextInt()
    let multiplicand = multiplcans[numberB-1]
    multiplicandImageView.image = UIImage(named: multiplicand)
    multiplicandTextField.text = "\(numberB)"
    var numberD = 0
    numberD = numberA-numberB
    resultTextField.text = "\(numberD)"
    keyInAnsTextField.text = ""
//multiply
        }else if signImageView.image == UIImage(named:"multiply"){
            let randomDistribution = GKRandomDistribution(lowestValue: 1, highestValue: multipliers.count-1)
            let numberA = randomDistribution.nextInt()
            let multiplier = multipliers[numberA-1]
            multiplierImageView.image = UIImage(named: multiplier)
            multiplierTextField.text = "\(numberA)"
            let numberB = randomDistribution.nextInt()
            let multiplicand = multiplcans[numberB-1]
            multiplicandImageView.image = UIImage(named: multiplicand)
            multiplicandTextField.text = "\(numberB)"
            var numberE = 0
            numberE = numberA*numberB
            resultTextField.text = "\(numberE)"
            keyInAnsTextField.text = ""
    }
    }
    
    @IBAction func okButtonPressed(_ sender: UIButton) {view.endEditing(true)
        resultTextField.isHidden = false
        let result:Int? = Int(resultTextField.text!)
        let keyInAns:Int? = Int(keyInAnsTextField.text!)
        if result == keyInAns{
            checkTheAnsImageView.image = UIImage(named: "correct")
            if let url = Bundle.main.url(forResource: "correct", withExtension: "mp4"){
                player = AVPlayer(url: url)
                player?.play()
            }
        } else {checkTheAnsImageView.image = UIImage(named: "incorrect")
            if let url = Bundle.main.url(forResource: "incorrect", withExtension: "mp4"){
                player = AVPlayer(url: url)
                player?.play()
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
