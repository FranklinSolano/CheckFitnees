//
//  DietaFlexivelScreen.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/26/23.
//

import UIKit

protocol DietaFlexivelScreenProtocol: AnyObject {
    func actionGainButton()
    func actionMaintainButton()
    func actionLoseButton()
    func actionCancelButton()
}

class DietaFlexivelScreen: UIView {
    
    weak var delegate: DietaFlexivelScreenProtocol?
    public func delegate(delegate:DietaFlexivelScreenProtocol) {
        self.delegate = delegate
    }
    
    lazy var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.corOne
        view.clipsToBounds = true
        view.layer.cornerRadius = 15
        return view
    }()
    
    lazy var objectiveLabel: UILabel = {
        let label = TextLabelCustom(title: "Escolha um obejtivo")
        label.font = UIFont.systemFont(ofSize: 30)
        label.textAlignment = .center
        label.textColor = .corTwo
        return label
    }()
    
    lazy var gainWeightButton: UIButton = {
        let button = ButtonCustom(title: "Ganhar Peso")
        button.backgroundColor = .corTwo
        button.setTitleColor(UIColor.corOne, for: .normal)
        button.addTarget(self, action: #selector(tappedGainButton), for: .touchUpInside)
        return button
    }()
    
    lazy var maintainWeightButton: UIButton = {
        let button = ButtonCustom(title: "Manter Peso")
        button.backgroundColor = .corTwo
        button.setTitleColor(UIColor.corOne, for: .normal)
        button.addTarget(self, action: #selector(tappedMaintainButton), for: .touchUpInside)
        return button
    }()
    
    lazy var loseWeightButton: UIButton = {
        let button = ButtonCustom(title: "Perder Peso")
        button.backgroundColor = .corTwo
        button.setTitleColor(UIColor.corOne, for: .normal)
        button.addTarget(self, action: #selector(tappedLoseButton), for: .touchUpInside)
        return button
    }()
    
    lazy var cancelButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Cancelar", for: .normal)
        button.titleLabel?.font = UIFont(name: "PingFang SC", size: 18)
        button.setTitleColor(UIColor.corTwo, for: .normal)
        button.addTarget(self, action: #selector(tappedCancelButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewCode()
        backgroundColor = .corTwo
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func tappedGainButton(){
        delegate?.actionGainButton()
    }
    
    @objc private func tappedMaintainButton(){
        delegate?.actionMaintainButton()
    }
    
    @objc private func tappedLoseButton(){
        delegate?.actionLoseButton()
    }
    
    @objc private func tappedCancelButton(){
        delegate?.actionCancelButton()
    }
}

//MARK: - ViewCode

extension DietaFlexivelScreen: ViewCode {
    func configElements() {
        let views: [UIView] = [contentView,objectiveLabel, gainWeightButton,maintainWeightButton,loseWeightButton,cancelButton]
        for view in views {
            addSubview(view)
        }
    }
    
    func configConstraint() {
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 100),
            contentView.centerXAnchor.constraint(equalTo: centerXAnchor),
            contentView.widthAnchor.constraint(equalToConstant: 340),
            contentView.heightAnchor.constraint(equalToConstant: 400),
            
            objectiveLabel.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 20),
            objectiveLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            gainWeightButton.topAnchor.constraint(equalTo: objectiveLabel.bottomAnchor,constant: 40),
            gainWeightButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 15),
            gainWeightButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -15),
            gainWeightButton.heightAnchor.constraint(equalToConstant: 50),
            
            maintainWeightButton.topAnchor.constraint(equalTo: gainWeightButton.bottomAnchor,constant: 25),
            maintainWeightButton.leadingAnchor.constraint(equalTo: gainWeightButton.leadingAnchor),
            maintainWeightButton.trailingAnchor.constraint(equalTo: gainWeightButton.trailingAnchor),
            maintainWeightButton.heightAnchor.constraint(equalToConstant: 50),
            
            loseWeightButton.topAnchor.constraint(equalTo: maintainWeightButton.bottomAnchor,constant: 25),
            loseWeightButton.leadingAnchor.constraint(equalTo: gainWeightButton.leadingAnchor),
            loseWeightButton.trailingAnchor.constraint(equalTo: gainWeightButton.trailingAnchor),
            loseWeightButton.heightAnchor.constraint(equalToConstant: 50),
            
            cancelButton.topAnchor.constraint(equalTo: loseWeightButton.bottomAnchor,constant: 45),
            cancelButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 40)
        ])
    }
}
