//
//  ViewController.swift
//  Calculadora
//
//  Created by Henry Bilby on 30/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    
    @IBOutlet weak var buttonAC: UIButton!
    @IBOutlet weak var buttonPlusMinus: UIButton!
    @IBOutlet weak var buttonPercentage: UIButton!
    @IBOutlet weak var buttonDivision: UIButton!
    
    
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var buttonTimes: UIButton!
    
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var buttonMinus: UIButton!
    
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var buttonPlus: UIButton!
    
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var buttonComa: UIButton!
    @IBOutlet weak var buttonEquals: UIButton!
    
    var firstNumber : Int = 0
    var lastNumber : Int = 0
    var operation : String = ""
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var arrayButtonsOtherOperations : [UIButton] = [buttonAC,
        buttonPlusMinus,
        buttonPercentage]
        
        var arrayButtonsNumbers :[UIButton] = [button7,button8,button9,button4,button5,button6,button1,button2,button3,button0,buttonComa]
        
        var arrayButtonsOperations :[UIButton] =
            [buttonDivision,
             buttonTimes,
             buttonMinus,
             buttonPlus,
             buttonEquals]
        
        setButtonsNumbersCharacteristics(arrayButtonsNumbers: arrayButtonsNumbers)
        
        setButtonsOperationsCharacteristics(arrayButtonsOperations: arrayButtonsOperations)
        
        setButtonsOthersOperations(arrayButtonsOtherOperations : arrayButtonsOtherOperations)
        
    }

    @IBAction func actionButton0(_ sender: Any) {
        if labelResult.text == "0"{
            labelResult.text = ""
        }
        var localString = labelResult.text
        localString?.append("0")
        labelResult.text = localString
    }
    
    
    @IBAction func actionButton1(_ sender: Any) {
        if labelResult.text == "0"{
            labelResult.text = ""
        }
        var localString = labelResult.text
        localString?.append("1")
        labelResult.text = localString
    }
    
    
    @IBAction func actionButton2(_ sender: Any) {
        if labelResult.text == "0"{
            labelResult.text = ""
        }
        var localString = labelResult.text
        localString?.append("2")
        labelResult.text = localString
    }
    
    
    @IBAction func actionButton3(_ sender: Any) {
        if labelResult.text == "0"{
            labelResult.text = ""
        }
        var localString = labelResult.text
        localString?.append("3")
        labelResult.text = localString
    }
    
    @IBAction func actionButton4(_ sender: Any) {
        if labelResult.text == "0"{
            labelResult.text = ""
        }
        var localString = labelResult.text
        localString?.append("4")
        labelResult.text = localString
    }
    
    @IBAction func actionButton5(_ sender: Any) {
        if labelResult.text == "0"{
            labelResult.text = ""
        }
        var localString = labelResult.text
        localString?.append("5")
        labelResult.text = localString
    }
    
    @IBAction func actionButton6(_ sender: Any) {
        if labelResult.text == "0"{
            labelResult.text = ""
        }
        var localString = labelResult.text
        localString?.append("6")
        labelResult.text = localString
    }
    
    @IBAction func actionButton7(_ sender: Any) {
        if labelResult.text == "0"{
            labelResult.text = ""
        }
        var localString = labelResult.text
        localString?.append("7")
        labelResult.text = localString
    }
    
    @IBAction func actionButton8(_ sender: Any) {
        if labelResult.text == "0"{
            labelResult.text = ""
        }
        var localString = labelResult.text
        localString?.append("8")
        labelResult.text = localString
    }
    
    @IBAction func actionButton9(_ sender: Any) {
        if labelResult.text == "0"{
            labelResult.text = ""
        }
        var localString = labelResult.text
        localString?.append("9")
        labelResult.text = localString
    }
    
    @IBAction func actionButtonPlus(_ sender: Any) {
        firstNumber = Int(labelResult.text!) ?? 0
        operation = "+"
        clearLabel()
    }
    
    @IBAction func actionButtonMinus(_ sender: Any) {
        firstNumber = Int(labelResult.text!) ?? 0
        operation = "-"
        clearLabel()
    }
    
    @IBAction func actionButtonTimes(_ sender: Any) {
        firstNumber = Int(labelResult.text!) ?? 0
        operation = "X"
        clearLabel()
    }
    
    @IBAction func actionButtonDivided(_ sender: Any) {
        firstNumber = Int(labelResult.text!) ?? 0
        operation = "/"
        clearLabel()
    }
    
    @IBAction func actionButtonEquals(_ sender: Any) {
        switch operation {
        case "+":
            lastNumber = Int(labelResult.text!) ?? 0
            labelResult.text = String(firstNumber + lastNumber)
        case "-":
            lastNumber = Int(labelResult.text!) ?? 0
            labelResult.text = String(firstNumber - lastNumber)
        case "X":
            lastNumber = Int(labelResult.text!) ?? 0
            labelResult.text = String(firstNumber * lastNumber)
        case "/":
            lastNumber = Int(labelResult.text!) ?? 0
            labelResult.text = String(firstNumber / lastNumber)
        default:
            print ("default")
        }
    }
    
    @IBAction func actionButtonAC(_ sender: Any) {
        clearLabel()
        firstNumber = 0
        lastNumber = 0
    }
    
    func clearLabel () {
        labelResult.text = "0"
    }
    
    func setButtonsNumbersCharacteristics(arrayButtonsNumbers : [UIButton]){
        for button in arrayButtonsNumbers {
            button.backgroundColor = UIColor.darkGray
            button.setTitleColor(.white, for: .normal)
            button.layer.cornerRadius = 20
        }
    }

    func setButtonsOperationsCharacteristics(arrayButtonsOperations : [UIButton]){
        for button in arrayButtonsOperations {
            button.backgroundColor = UIColor.orange
            button.setTitleColor(.white, for: .normal)
            button.layer.cornerRadius = 20
        }
    }
    
    func setButtonsOthersOperations(arrayButtonsOtherOperations : [UIButton]) {

        for button in arrayButtonsOtherOperations {
            button.backgroundColor = UIColor.lightGray
            button.setTitleColor(.black, for: .normal)
            button.layer.cornerRadius = 20
        }
        
    }
    
}
