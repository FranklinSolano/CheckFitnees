//
//  ButtonCustom.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/25/23.
//

import UIKit

class ButtonCustom: UIButton {

    
    init(title: String) {
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        configButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func configButton(){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        self.setTitleColor(UIColor.corTwo, for: .normal)
        self.backgroundColor = UIColor.corOne
        self.clipsToBounds = true
        self.layer.cornerRadius = 12
    }

}

extension UIButton {
    func teste(button: UIButton){
        
        let bottomBorder = CALayer()
        bottomBorder.frame = CGRect(x: 0, y: button.frame.height - 1, width: button.frame.width, height: 2)
        bottomBorder.backgroundColor = UIColor.corOne.cgColor
        button.layer.addSublayer(bottomBorder)
    }
    
    func teste1(button: UIButton){
        
        let bottomBorder = CALayer()
        bottomBorder.frame = CGRect(x: 0, y: button.frame.height - 1, width: button.frame.width, height: 2)
        bottomBorder.backgroundColor = UIColor.red.cgColor
        button.layer.addSublayer(bottomBorder)
    }
}
