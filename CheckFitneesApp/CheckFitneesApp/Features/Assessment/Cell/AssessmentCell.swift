//
//  AvaliacaoCell.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 6/28/23.
//

import UIKit

 final class AssessmentCell: UITableViewCell {
    
    static let identifier: String = "AvaliacaoCell"
     
     var viewModel: AssessmentCellViewModel = AssessmentCellViewModel()
    
    private lazy var screen: AssessmentCellScreen = {
        let view = AssessmentCellScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        backgroundColor = .secondaryColor
        screen.delegate(delegate: self)
        viewModel.delegate(delegate: self)
        setupViewCode()
     
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension AssessmentCell: ViewCode {
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
//MARK: - AssessmentCellScreenProtocol
extension AssessmentCell: AssessmentCellScreenProtocol {
    func buttonEnableOrDisable() {
        viewModel.enableButtonSaved(button: screen.editAssessmentButton )
    }
    
    
}

//MARK: - AssessmentCellViewModelProtocol
extension AssessmentCell: AssessmentCellViewModelProtocol {
    func enableButton() {
        screen.enableButton()
    }
    
    func disableButton() {
        screen.disableButton()
    }
    
    
}
