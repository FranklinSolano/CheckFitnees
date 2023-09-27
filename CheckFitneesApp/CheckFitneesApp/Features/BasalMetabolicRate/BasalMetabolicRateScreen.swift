//
//  TaxaMetabolicaScreen.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/22/23.
//

import UIKit

protocol BasalMetabolicRateScreenProtocol: AnyObject {
    func actionBackButton()
    func actionCalcularButton()
}

 final class BasalMetabolicRateScreen: UIView {
    
    weak var delegate: BasalMetabolicRateScreenProtocol?
    public func delegate(delegate: BasalMetabolicRateScreenProtocol){
        self.delegate = delegate
    }
    
    lazy var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.primaryColor
        view.clipsToBounds = true
        view.layer.cornerRadius = 20
        return view
    }()
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        button.setTitle("voltar", for: .normal)
        button.setTitleColor(.secondaryColor, for: .normal)
        button.tintColor = UIColor.secondaryColor
        button.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return button
    }()
    
    lazy var imagePerson: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "person.circle.fill")
        image.tintColor = UIColor.secondaryColor
        return image
    }()
    
    lazy var nameLabel: UILabel = {
        let label = TextLabelCustom(title: "" )
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var basalMetabolicRateLabel: UILabel = {
        let label = TextLabelCustom(title: "Taxa Metabolica Basal" )
        label.font = UIFont(name: "Roboto-Bold", size: 24)
        label.textColor = .white
        return label
    }()
    
    lazy var contentView2: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.primaryColor
        view.clipsToBounds = true
        view.layer.cornerRadius = 20
        return view
    }()
    
    lazy var weightLabel: UILabel = {
        let label = TextLabelCustom(title: "• Peso:")
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var weightTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "")
        textField.text = "67"
        textField.layer.shadowColor = UIColor.white.cgColor
        textField.textAlignment = .center
        textField.backgroundColor = .primaryColor
        textField.textColor = .secondaryColor
        return textField
    }()
    
    lazy var heightLabel: UILabel = {
        let label = TextLabelCustom(title: "• Altura:")
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var heightTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "")
        textField.text = "167"
        textField.layer.shadowColor = UIColor.white.cgColor
        textField.textAlignment = .center
        textField.backgroundColor = .primaryColor
        textField.textColor = .secondaryColor
        return textField
    }()
    
    lazy var ageLabel: UILabel = {
        let label = TextLabelCustom(title: "• Idade:")
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var ageTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "")
        textField.text = "22"
        textField.layer.shadowColor = UIColor.white.cgColor
        textField.textAlignment = .center
        textField.backgroundColor = .primaryColor
        textField.textColor = .secondaryColor
        return textField
    }()
    
    lazy var resultBasalMetabolicRateLabel: UILabel = {
        let label = TextLabelCustom(title: "")
        label.font = UIFont(name: "Roboto-Regular", size: 18)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var calculateButton: UIButton = {
        let button = ButtonCustom(title: "CALCULAR")
        button.addTarget(self, action: #selector(tappedCalcularButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewCode()
        backgroundColor = UIColor.secondaryColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configTextField(delegate: UITextFieldDelegate) {
        weightTextField.delegate = delegate
        heightTextField.delegate = delegate
        ageTextField.delegate = delegate
    }
    
    @objc private func tappedBackButton(){
        delegate?.actionBackButton()
    }
    
    @objc private func tappedCalcularButton(){
        delegate?.actionCalcularButton()
    }
}

//MARK: - ViewCode

extension BasalMetabolicRateScreen: ViewCode {
    func configElements() {
        [contentView, backButton, imagePerson, nameLabel, basalMetabolicRateLabel, contentView2, weightLabel, weightTextField, heightLabel, heightTextField, ageLabel, ageTextField, resultBasalMetabolicRateLabel, calculateButton].forEach({addSubview($0)})
    }
    
    func configConstraint() {
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: topAnchor),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 220),
            
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 10),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 25),
            
            imagePerson.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 20),
            imagePerson.centerXAnchor.constraint(equalTo: centerXAnchor),
            imagePerson.heightAnchor.constraint(equalToConstant: 70),
            imagePerson.widthAnchor.constraint(equalToConstant: 70),
            
            nameLabel.topAnchor.constraint(equalTo: imagePerson.bottomAnchor,constant: 10),
            nameLabel.centerXAnchor.constraint(equalTo: imagePerson.centerXAnchor),
            
            basalMetabolicRateLabel.topAnchor.constraint(equalTo: contentView.bottomAnchor,constant: 30),
            basalMetabolicRateLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            contentView2.topAnchor.constraint(equalTo: basalMetabolicRateLabel.bottomAnchor,constant: 15),
            contentView2.heightAnchor.constraint(equalToConstant: 245),
            contentView2.widthAnchor.constraint(equalToConstant: 340),
            contentView2.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            weightLabel.topAnchor.constraint(equalTo: contentView2.topAnchor,constant: 50),
            weightLabel.leadingAnchor.constraint(equalTo: contentView2.leadingAnchor,constant: 15),
            
            weightTextField.centerYAnchor.constraint(equalTo: weightLabel.centerYAnchor),
            weightTextField.leadingAnchor.constraint(equalTo: weightLabel.trailingAnchor,constant: 10),
            weightTextField.trailingAnchor.constraint(equalTo: contentView2.trailingAnchor,constant: -15),
            weightTextField.heightAnchor.constraint(equalToConstant: 25),
            
            
            heightLabel.topAnchor.constraint(equalTo: weightLabel.bottomAnchor,constant: 30),
            heightLabel.leadingAnchor.constraint(equalTo: weightLabel.leadingAnchor),
            
            heightTextField.centerYAnchor.constraint(equalTo: heightLabel.centerYAnchor),
            heightTextField.leadingAnchor.constraint(equalTo: heightLabel.trailingAnchor,constant: 10),
            heightTextField.trailingAnchor.constraint(equalTo: weightTextField.trailingAnchor),
            heightTextField.heightAnchor.constraint(equalToConstant: 25),
            
            ageLabel.topAnchor.constraint(equalTo: heightLabel.bottomAnchor,constant: 30),
            ageLabel.leadingAnchor.constraint(equalTo: weightLabel.leadingAnchor),
            
            ageTextField.centerYAnchor.constraint(equalTo: ageLabel.centerYAnchor),
            ageTextField.leadingAnchor.constraint(equalTo: ageLabel.trailingAnchor,constant: 10),
            ageTextField.trailingAnchor.constraint(equalTo: weightTextField.trailingAnchor),
            ageTextField.heightAnchor.constraint(equalToConstant: 25),
            
            resultBasalMetabolicRateLabel.bottomAnchor.constraint(equalTo: contentView2.bottomAnchor,constant: -15),
            resultBasalMetabolicRateLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
            resultBasalMetabolicRateLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            
            calculateButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor,constant: -20),
            calculateButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            calculateButton.widthAnchor.constraint(equalToConstant: 340),
            calculateButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
