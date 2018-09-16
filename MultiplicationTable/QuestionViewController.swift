//
//  QuestionViewController.swift
//  MultiplicationTable
//
//  Created by Chang Sophia on 2018/9/8.
//  Copyright © 2018年 Chang Sophia. All rights reserved.
//

import UIKit
import GameKit
import AVFoundation

class QuestionViewController: UIViewController,UITextFieldDelegate {
var player: AVPlayer?
  
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var deductButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var multiplierImageView: UIImageView!
    @IBOutlet weak var multiplicandImageView: UIImageView!
    @IBOutlet weak var multiplicandTextField: UITextField!
    @IBOutlet weak var multiplierTextField: UITextField!
    @IBOutlet weak var keyInAnsTextField: UITextField!
    @IBOutlet weak var okButton: UIButton!
    @IBOutlet weak var checkTheAnsImageView: UIImageView!
    @IBOutlet weak var signImageView: UIImageView!
    @IBOutlet weak var resultTextField: UITextField!
     
    
   
    let multipliers = ["number_1","number_2","number_3","number_4","number_5","number_6","number_7","number_8","number_9"]
    let multiplcans = ["number_1","number_2","number_3","number_4","number_5","number_6","number_7","number_8","number_9"]
    

//add
    @IBAction func addButtonPressed(_ sender: UIButton) {
        signImageView.image = UIImage(named:"add")
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
    }
//deduct
    @IBAction func deductButtonPressed(_ sender: UIButton) {
        signImageView.image = UIImage(named:"deduct")
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
        var numberD = 0
        numberD = numberA-numberB
        resultTextField.text = "\(numberD)"
        keyInAnsTextField.text = ""
    }
//multiply
    @IBAction func multiplyButtonPressed(_ sender: UIButton) {
        signImageView.image = UIImage(named:"multiply")
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
        var numberE = 0
        numberE = numberA*numberB
        resultTextField.text = "\(numberE)"
        keyInAnsTextField.text = ""
    }
    
    //divide
    @IBAction func divideButtonPressed(_ sender: UIButton) {
        signImageView.image = UIImage(named:"divide")
        let multiplier = multipliers[7]
        multiplierImageView.image = UIImage(named: multiplier)
        let multiplican = multiplcans[1]
        multiplicandImageView.image = UIImage(named: multiplican)
    }
    
    @IBAction func okButtonPressed(_ sender: UIButton) {
         //correct or not
        view.endEditing(true)
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
