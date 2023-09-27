//
//  CicloCarboidratosCell.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/26/23.
//

import UIKit

 final class CarbCycleCell: UITableViewCell {
    
    static let identifier: String = "CarbCycleCell"
    
    private lazy var screen: CarbCycleCellScreen = {
        let view = CarbCycleCellScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        screen.configTextField(delegate: self)
        selectionStyle = .none
        backgroundColor = .secondaryColor
        screen.delegate(delegate: self)
        setupViewCode()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: - ViewCode

extension CarbCycleCell: ViewCode {
    func configElements() {
        contentView.addSubview(screen)
    }
    
    func configConstraint() {
            NSLayoutConstraint.activate([
                screen.topAnchor.constraint(equalTo: topAnchor),
                screen.leadingAnchor.constraint(equalTo: leadingAnchor),
                screen.trailingAnchor.constraint(equalTo: trailingAnchor),
                screen.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])
    }
}

//MARK: - UITextFieldDelegate

extension CarbCycleCell: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

//MARK: - CarbCycleCellScreenProtocol

extension CarbCycleCell: CarbCycleCellScreenProtocol {
    func actionTwoLoxButton() {
        screen.lineView.backgroundColor = .primaryColor
        screen.line2View.backgroundColor = .clear
        screen.lineView3.backgroundColor = .clear
    }
    
    func actionThreeLoxButton() {
        screen.lineView.backgroundColor = .clear
        screen.line2View.backgroundColor = .primaryColor
        screen.lineView3.backgroundColor = .clear
    }
    
    func actionForLoxButton() {
        screen.lineView.backgroundColor = .clear
        screen.line2View.backgroundColor = .clear
        screen.lineView3.backgroundColor = .primaryColor
    }
    
    
}
