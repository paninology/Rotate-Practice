//
//  BoardViewController.swift
//  Rotate Practice
//
//  Created by yongseok lee on 2022/07/06.
//

import UIKit

class BoardViewController: UIViewController {
    
    
    @IBOutlet weak var usesrTextField: UITextField!
    
    @IBOutlet weak var textColorButton: UIButton!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet var buttonList: [UIButton]!
    
    @IBOutlet weak var uppperView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        designTextField()
        designButton( textColorButton, buttonTitle: "색변경", highlightedTitle: "변경중", backgroundColor: .blue)
        designButton(sendButton, buttonTitle: "보내기", highlightedTitle: "보내는중", backgroundColor: .red)
       
        studyOutletCollection()
       
    }
    
    func designTextField() {
        usesrTextField!.placeholder = "내용을 작성 해주세요"
        usesrTextField!.text = "안녕하세요"
        usesrTextField!.keyboardType = .emailAddress
        
    }
    
    //buttonOutletVarableName 외부 매개변수, Argument Label -> 생략가능
    //buttonName 내부 매개변수, Parameter
    //
    
    func designButton(_ buttonName: UIButton, buttonTitle: String, highlightedTitle: String, backgroundColor: UIColor) {
        
        buttonName.setTitle(buttonTitle, for: .normal)
        buttonName.setTitle(highlightedTitle, for: .highlighted)
        buttonName.backgroundColor = backgroundColor
        buttonName.layer.cornerRadius = 8
        buttonName.layer.borderColor = UIColor.black.cgColor
        buttonName.layer.borderWidth = 3
        buttonName.setTitleColor(.red, for: .normal)
        buttonName.setTitleColor(.black, for: .highlighted)
    }
    func studyOutletCollection() {
        //1. 반복분
        let buttonArray: [UIButton] = [sendButton, textColorButton]
        
        for item in buttonArray {
            item.backgroundColor = .blue
            item.layer.cornerRadius = 2
        }
        //2. 아웃렛 컬렉션
        for item in buttonList {
            item.backgroundColor = .blue
            item.layer.cornerRadius = 2
        }
        //3.
    }
    
 
    
    @IBAction func sendButtonPressed(_ sender: UIButton) {
        textLabel.text = usesrTextField.text
        
        if usesrTextField.text == nil {
            print("x")
        } else {
            print(usesrTextField.text!.count)
            
        }
        
    
    }
    
    @IBAction func textColorButtonClicked(_ sender: Any) {
        usesrTextField.textColor = .red
    }
    
    @IBAction func tapGestureclicked(_ sender: UITapGestureRecognizer) {
        view.backgroundColor = .red
        view.endEditing(true)
        if uppperView.isHidden {
            uppperView.isHidden.toggle()
        } else {
            uppperView.isHidden.toggle()
        }
        
    }
    
   
    @IBAction func texfieldValueChanged(_ sender: UITextField) {
        print("a")
    }
    
    @IBAction func textFieldAction(_ sender: UITextField) {
        print("aa")
    }
    
    
}
