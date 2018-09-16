//
//  ViewController.swift
//  MultiplicationTable
//
//  Created by Chang Sophia on 2018/9/8.
//  Copyright © 2018年 Chang Sophia. All rights reserved.
//

import UIKit
import GameKit
class ViewController: UIViewController {
    
   
  
    
    @IBOutlet weak var startButton: UIButton!
    

    @IBAction func startButtonPressed(_ sender: UIButton) {
    }
     
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       let x = 10
        for i in 1...10 {
            let label = UILabel(frame:CGRect(x:x,y:10,width:50, height:50))
            label.text = "\(i)"
            view.addSubview(label)
            label.textAlignment = .center
            UIFont.boldSystemFont(ofSize: 17)
            UIFont.systemFont(ofSize: 17)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

