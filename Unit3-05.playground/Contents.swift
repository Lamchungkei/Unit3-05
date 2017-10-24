
// Created by: Kay Lin
// Created on: 24th-Oct-2017
// Created for: ICS3U
// This program calculates the factorial



import PlaygroundSupport
import UIKit

class ViewController : UIViewController, UITextFieldDelegate {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    var calculateButton : UIButton!
    var integerTextField : UITextField!
    var instructionLabel : UILabel!
    var answerLabel : UILabel!
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
            // instruction label
        instructionLabel = UILabel()
        instructionLabel.text = "Enter the integer"
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        // integer textfield
        integerTextField = UITextField()
        integerTextField.bounds = CGRect(x: 0, y: 0, width: view.bounds.width / 2, height: 50)
        integerTextField.backgroundColor = UIColor.lightGray
        integerTextField.borderStyle = UITextBorderStyle.roundedRect
        integerTextField.font = UIFont.systemFont(ofSize: 17)
        integerTextField.textAlignment = .center
        // integerTextField.placeholder = "my number"
        integerTextField.clearButtonMode = UITextFieldViewMode.whileEditing
        integerTextField.delegate = self
        view.addSubview(integerTextField)
        integerTextField.translatesAutoresizingMaskIntoConstraints = false
        integerTextField.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        integerTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        // calculate button
        calculateButton = UIButton()
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitleColor(.blue, for: .normal)
        calculateButton.addTarget(self, action: #selector(answer), for: .touchUpInside)
        view.addSubview(calculateButton)
        calculateButton.translatesAutoresizingMaskIntoConstraints = false
        calculateButton.topAnchor.constraint(equalTo: integerTextField.bottomAnchor, constant: 20).isActive = true
        calculateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        // answer label
        answerLabel = UILabel()
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.topAnchor.constraint(equalTo: calculateButton.bottomAnchor, constant: 20).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
        
        func answer() {
            var number = Int(integerTextField.text!)
            
            if (number)! < 0 {
                self.answerLabel.text = "Please input a positive integer."
            }
            else if number == 0 {
                self.answerLabel.text = "The factorial is 1."
            }
            else {
                var factorial = 1
                var count = 1
                while count < (number)!{
                    count = count + 1
                    factorial = factorial * count
                    self.answerLabel.text = "The factorial is: " + String(factorial)
                }
            }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()


