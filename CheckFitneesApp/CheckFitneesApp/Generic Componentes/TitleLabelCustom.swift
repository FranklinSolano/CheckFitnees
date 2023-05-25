//
//  LabelCustom.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/25/23.
//

import UIKit

class TitleLabelCustom: UILabel {
    
    init() {
        super.init(frame: .zero)
        configTitle()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func configTitle(){
       self.translatesAutoresizingMaskIntoConstraints = false
       self.font = UIFont(name: "Chalkduster", size: 30)
       self.text = "CheckFitness"
       self.textColor = UIColor.corOne
       self.textAlignment = .center
    }

}
