//
//  TextLabelCustom.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/25/23.
//

import UIKit

class TextLabelCustom: UILabel {

    init(title: String) {
        super.init(frame: .zero)
        self.text = title
        configLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func configLabel(){
       self.translatesAutoresizingMaskIntoConstraints = false
       self.textColor = UIColor.corOne
       self.font = UIFont(name: "Arial Rounded MT Bold", size: 16)
    }
}
