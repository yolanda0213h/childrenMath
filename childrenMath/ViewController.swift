//
//  ViewController.swift
//  childrenMath
//
//  Created by Yolanda H. on 2019/3/1.
//  Copyright © 2019 Yolanda H. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberText: UITextField!
    @IBOutlet weak var secondNumberButton: UIButton!
    @IBOutlet weak var romanView: UIView!
    @IBOutlet var romanNumerals: [UIButton]!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var segment: UISegmentedControl!
    var firstNumber = 1.0
    var romanDouble = 0.0
    var answerDouble:Double = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func answerFunc(){
        if numberText.text != "", secondNumberButton.currentTitle != "" {
            firstNumber = Double(numberText.text!)!
            romanDouble = Double(secondNumberButton.currentTitle!)!
        }else {
            firstNumber = 0.0
            romanDouble = 0.0
        }
        if firstNumber != 0 {
                if segment.selectedSegmentIndex == 0 {
                    answerDouble = firstNumber + romanDouble
                } else if segment.selectedSegmentIndex == 1 {
                    answerDouble = firstNumber - romanDouble
                } else if segment.selectedSegmentIndex == 2 {
                    answerDouble = firstNumber * romanDouble
                } else if segment.selectedSegmentIndex == 3 {
                    answerDouble = firstNumber / romanDouble
                }
                answerLabel.text = "Answer: \n\n" + String(format:"%.1f", answerDouble)
            
        } else {
            answerLabel.text = "please check \n\n FirstNumber and SecondNumber"
        }
        
    }

    @IBAction func segmentFunc(_ sender: UISegmentedControl) {
        answerFunc()
    }
    @IBAction func disappear(_ sender: UIButton) {
        numberText.endEditing(true)
        answerFunc()
    }
    @IBAction func romanFunc(_ sender: UIButton) {
        numberText.endEditing(true)
        romanView.frame.origin.y = 511
        
    }
    @IBAction func romanCheckFunc(_ sender: UIButton) {
        
        romanView.frame.origin.y = 736
        answerFunc()
    }
    @IBAction func deleteCheckFunc(_ sender: UIButton) {
        
    }
    @IBAction func romanNumberFunc(_ sender: UIButton) {
        var secondNumberString = ""
        if sender.currentTitle == "I" {
            secondNumberString = "1"
        } else if sender.currentTitle == "II" {
            secondNumberString = "2"
        } else if sender.currentTitle == "III" {
            secondNumberString = "3"
        } else if sender.currentTitle == "IV" {
            secondNumberString = "4"
        } else if sender.currentTitle == "V" {
            secondNumberString = "5"
        } else if sender.currentTitle == "VI" {
            secondNumberString = "6"
        } else if sender.currentTitle == "VII" {
            secondNumberString = "7"
        } else if sender.currentTitle == "VIII" {
            secondNumberString = "8"
        } else if sender.currentTitle == "IX" {
            secondNumberString = "9"
        } else if sender.currentTitle == "X" {
            secondNumberString = "10"
        }
        secondNumberButton.setTitle(secondNumberString, for: UIControl.State.normal)
    }
    
}

