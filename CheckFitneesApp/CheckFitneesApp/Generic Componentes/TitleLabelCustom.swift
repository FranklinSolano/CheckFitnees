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
    
    private func configTitle() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.font = UIFont(name: "Roboto-Light", size: 24)
        self.textAlignment = .center

        let fullString = "Checkfitness"

        let regularAttributes: [NSAttributedString.Key: Any] = [
            .font: self.font,
            .foregroundColor: UIColor.primaryColor
        ]

        let boldAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.boldSystemFont(ofSize: 24),
            .foregroundColor: UIColor.primaryColor
        ]

        let attributedString = NSMutableAttributedString(string: fullString, attributes: regularAttributes)
        attributedString.setAttributes(boldAttributes, range: NSRange(location: 5, length: 7))

        self.attributedText = attributedString
    }


}
