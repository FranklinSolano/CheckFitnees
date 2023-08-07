//
//  DietaFlexivelScreen.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/26/23.
//

import UIKit

protocol FlexibleDietScreenProtocol: AnyObject {
    func actionGainButton()
    func actionMaintainButton()
    func actionLoseButton()
    func actionCancelButton()
}

class FlexibleDietScreen: UIView {
    
    weak var delegate: FlexibleDietScreenProtocol?
    public func delegate(delegate:FlexibleDietScreenProtocol) {
        self.delegate = delegate
    }
    
    lazy var titleLabel: UILabel = {
        let label = TitleLabelCustom()
        label.textColor = .primaryColor
        return label
    }()
    
    lazy var imageLogo: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo1")
        return image
    }()
    
    lazy var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.primaryColor
        view.clipsToBounds = true
        view.layer.cornerRadius = 15
        return view
    }()
    
    lazy var objectiveLabel: UILabel = {
        let label = TextLabelCustom(title: "Escolha um obejtivo")
        label.font = UIFont(name: "Roboto-Bold", size: 24)
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    lazy var gainWeightButton: UIButton = {
        let button = ButtonCustom(title: "Ganhar Peso")
        button.backgroundColor = .secondaryColor
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(self, action: #selector(tappedGainButton), for: .touchUpInside)
        return button
    }()
    
    lazy var maintainWeightButton: UIButton = {
        let button = ButtonCustom(title: "Manter Peso")
        button.backgroundColor = .secondaryColor
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(self, action: #selector(tappedMaintainButton), for: .touchUpInside)
        return button
    }()
    
    lazy var loseWeightButton: UIButton = {
        let button = ButtonCustom(title: "Perder Peso")
        button.backgroundColor = .secondaryColor
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(self, action: #selector(tappedLoseButton), for: .touchUpInside)
        return button
    }()
    
    lazy var cancelButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Cancelar", for: .normal)
        button.titleLabel?.font = UIFont(name: "Roboto-Regular", size: 18)
        button.setTitleColor(UIColor.secondaryColor, for: .normal)
        button.addTarget(self, action: #selector(tappedCancelButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewCode()
        backgroundColor = .secondaryColor
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
    
    func teste(){
        objectiveLabel.text = "Qual é o seu nivel de atividade?"
        objectiveLabel.font = UIFont.systemFont(ofSize: 22)
    }
}

//MARK: - ViewCode

extension FlexibleDietScreen: ViewCode {
    func configElements() {
        let views: [UIView] = [titleLabel,imageLogo,contentView,objectiveLabel, gainWeightButton,maintainWeightButton,loseWeightButton,cancelButton]
        for view in views {
            addSubview(view)
        }
    }
    
    func configConstraint() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            
            imageLogo.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
            imageLogo.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 10),
            imageLogo.heightAnchor.constraint(equalToConstant: 46),
            imageLogo.widthAnchor.constraint(equalToConstant: 52),
            
            objectiveLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 100),
            objectiveLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            contentView.topAnchor.constraint(equalTo: objectiveLabel.bottomAnchor,constant: 15),
            contentView.centerXAnchor.constraint(equalTo: centerXAnchor),
            contentView.widthAnchor.constraint(equalToConstant: 340),
            contentView.heightAnchor.constraint(equalToConstant: 320),
            
            loseWeightButton.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 40),
            loseWeightButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 15),
            loseWeightButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -15),
            loseWeightButton.heightAnchor.constraint(equalToConstant: 50),
            
            maintainWeightButton.topAnchor.constraint(equalTo: loseWeightButton.bottomAnchor,constant: 25),
            maintainWeightButton.leadingAnchor.constraint(equalTo: gainWeightButton.leadingAnchor),
            maintainWeightButton.trailingAnchor.constraint(equalTo: gainWeightButton.trailingAnchor),
            maintainWeightButton.heightAnchor.constraint(equalToConstant: 50),
            
            gainWeightButton.topAnchor.constraint(equalTo: maintainWeightButton.bottomAnchor,constant: 25),
            gainWeightButton.leadingAnchor.constraint(equalTo: loseWeightButton.leadingAnchor),
            gainWeightButton.trailingAnchor.constraint(equalTo: loseWeightButton.trailingAnchor),
            gainWeightButton.heightAnchor.constraint(equalToConstant: 50),
            
            cancelButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            cancelButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -30)
        ])
    }
}
