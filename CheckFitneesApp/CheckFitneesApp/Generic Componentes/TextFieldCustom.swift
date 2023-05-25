//
//  TextFieldCustom.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/25/23.
//

import UIKit

class TextFieldCustom: UITextField {
    
    init(placeholder: String) {
        super.init(frame: .zero)
        self.placeholder = placeholder
        self.title = placeholder
        configTextField()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    var title: String?
    
   private func configTextField() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.attributedPlaceholder = NSAttributedString(string: title ?? "",attributes: [NSAttributedString.Key.foregroundColor: UIColor.corOne])
        self.autocorrectionType = .no
        self.borderStyle = .roundedRect
        self.keyboardType = .default
        self.isSecureTextEntry = true
        self.backgroundColor = UIColor.corTwo
        self.textColor = UIColor.corOne
        self.borderStyle = .none
        self.layer.shadowColor = UIColor.corOne.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
    }
    
}

extension UITextField {
    
    func setBottomBorder(){
        self.layer.shadowColor = UIColor.corTwo.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
    }
}
