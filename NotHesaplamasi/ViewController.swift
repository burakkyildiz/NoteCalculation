//
//  ViewController.swift
//  NotHesaplamasi
//
//  Created by Burak on 24.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstExamText: UITextField!
    @IBOutlet weak var finalExamText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    @IBOutlet weak var averageLabel: UILabel!
    var average = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateBtn(_ sender: Any) {
    
        if let firstExam = Int(firstExamText.text!){
            if let finalExam = Int(finalExamText.text!){
                
                //ortalama = vize * 40 / 100  + final * 60 / 100
                average = Int(Float(firstExam) * 0.4 + Float(finalExam) * 0.6)
                print(average)
                averageLabel.text = "Average : " + String(average)

                if average < 60 {
                    resultLabel.text = "Dersten FF ile kaldiniz."
                }
                else if average <= 70 {
                    resultLabel.text = "Dersten DD ile gectiniz."
                }
                else if average <= 80 {
                    resultLabel.text = "Dersten CC ile gectiniz."
                }
                else if average <= 90 {
                    resultLabel.text = "Dersten BB ile gectiniz."
                }
                else if average <= 100 {
                    resultLabel.text = "Dersten AA ile gectiniz."
                }
                
            }
        }
        
    }
    
}

