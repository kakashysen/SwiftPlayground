//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport


var phone = "3105896523"


let indexS = phone.index(phone.startIndex, offsetBy: 3)
let startPhone = phone.substring(to: indexS)

let start = phone.index(phone.startIndex, offsetBy: 3)
let end = phone.index(phone.endIndex, offsetBy: 0)
let ranges = start..<end
let endPhone = phone.substring(with: ranges)


class MyView : UIViewController, UITextFieldDelegate
{
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup()
    {
        view.frame = CGRect(x: 0, y: 0, width: 300, height: 150)
        let textField = UITextField(frame: CGRect(x: 15, y: 20, width: 200, height: 40))
        view.addSubview(textField)
        textField.backgroundColor = UIColor.white
        textField.placeholder = "321 1234567"
        textField.borderStyle = .none
        textField.layer.borderWidth = 0.5
        textField.layer.cornerRadius = 5
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.delegate = self
        view.backgroundColor = UIColor.white
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        let phone = textField.text!.replacingOccurrences(of: " ", with: "")
        if textField.text!.characters.count >= 3 && !string.isEmpty{
            let startIndex = phone.index(phone.startIndex, offsetBy: 3)
            let firstNumbers = phone.substring(to: startIndex)
            
            let start = phone.index(phone.startIndex, offsetBy: 3)
            let end = phone.index(phone.endIndex, offsetBy: 0)
            let ranges = start..<end
            let endPhone = phone.substring(with: ranges)
            
            textField.text = "\(firstNumbers) \(endPhone)"
        }
        
        return true
    }
    
}


PlaygroundPage.current.liveView = MyView()
