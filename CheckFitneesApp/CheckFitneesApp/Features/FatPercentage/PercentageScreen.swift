//
//  PorcentualGorduraScreen.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/22/23.
//

import UIKit

protocol PercentageScreenProtocol: AnyObject {
    func actionBackButton()
    func actionCalcular()
}

 final class PercentageScreen: UIView {
    
    weak var delegate: PercentageScreenProtocol?
    public func delegate(delegate: PercentageScreenProtocol){
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
        button.setTitleColor(.primaryColor, for: .normal)
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
    
    lazy var percentageLabel: UILabel = {
        let label = TextLabelCustom(title: "Porcentual de Gordura")
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
    
    lazy var triciptalLabel: UILabel = {
        let label = TextLabelCustom(title: "• Triciptal:")
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var triciptalTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.text = ""
        tf.backgroundColor = .primaryColor
        tf.layer.shadowColor = UIColor.white.cgColor
        return tf
    }()
    
    lazy var breastplateLabel: UILabel = {
        let label = TextLabelCustom(title: "• Peitoral:")
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var breastplateTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.text = ""
        tf.backgroundColor = .primaryColor
        tf.layer.shadowColor = UIColor.white.cgColor
        return tf
    }()
    
    lazy var suprailiacLabel: UILabel = {
        let label = TextLabelCustom(title: "• Supra-ilíaca:")
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var suprailiacTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.text = ""
        tf.backgroundColor = .primaryColor
        tf.layer.shadowColor = UIColor.white.cgColor
        return tf
    }()
    
    lazy var abdominalLabel: UILabel = {
        let label = TextLabelCustom(title: "• Abdominal:")
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var abdominalTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.text = ""
        tf.backgroundColor = .primaryColor
        tf.layer.shadowColor = UIColor.white.cgColor
        return tf
    }()
    
    lazy var thighLabel: UILabel = {
        let label = TextLabelCustom(title: "• Coxa:")
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var thighTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.text = ""
        tf.backgroundColor = .primaryColor
        tf.layer.shadowColor = UIColor.white.cgColor
        return tf
    }()
    
    lazy var subscapularLabel: UILabel = {
        let label = TextLabelCustom(title: "• Subescapular")
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var subscapularTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.text = ""
        tf.backgroundColor = .primaryColor
        tf.layer.shadowColor = UIColor.white.cgColor
        return tf
    }()
    
    lazy var middleAuxiliaryLabel: UILabel = {
        let label = TextLabelCustom(title: "• Axiliar Média:")
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var middleAuxiliaryTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.text = ""
        tf.backgroundColor = .primaryColor
        tf.layer.shadowColor = UIColor.white.cgColor
        return tf
    }()
    
    lazy var resultPercentageLabel: UILabel = {
        let label = TextLabelCustom(title: "Porcentual de Gordura 0 %")
        label.font = UIFont(name: "Roboto-Regular", size: 18)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var resultButton: UIButton = {
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
        triciptalTextField.delegate = delegate
        breastplateTextField.delegate = delegate
        suprailiacTextField.delegate = delegate
        abdominalTextField.delegate = delegate
        thighTextField.delegate = delegate
        subscapularTextField.delegate = delegate
        middleAuxiliaryTextField.delegate = delegate
    }
    
    @objc private func tappedBackButton(){
        delegate?.actionBackButton()
    }
    
    @objc private func tappedCalcularButton(){
        delegate?.actionCalcular()
    }
}

//MARK: - ViewCode

extension PercentageScreen: ViewCode {
    func configElements() {
        [contentView, backButton, imagePerson, nameLabel, percentageLabel, contentView2, triciptalLabel, triciptalTextField, breastplateLabel, breastplateTextField, suprailiacLabel, suprailiacTextField, abdominalLabel, abdominalTextField, thighLabel, thighTextField, subscapularLabel, subscapularTextField, middleAuxiliaryLabel, middleAuxiliaryTextField, resultPercentageLabel, resultButton].forEach({addSubview($0)})
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
            
            percentageLabel.topAnchor.constraint(equalTo: contentView.bottomAnchor,constant: 30),
            percentageLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            contentView2.topAnchor.constraint(equalTo: percentageLabel.bottomAnchor,constant: 15),
            contentView2.heightAnchor.constraint(equalToConstant: 338),
            contentView2.widthAnchor.constraint(equalToConstant: 338),
            contentView2.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            triciptalLabel.topAnchor.constraint(equalTo: contentView2.topAnchor,constant: 45),
            triciptalLabel.leadingAnchor.constraint(equalTo: contentView2.leadingAnchor,constant: 20),
            
            triciptalTextField.centerYAnchor.constraint(equalTo: triciptalLabel.centerYAnchor),
            triciptalTextField.leadingAnchor.constraint(equalTo: triciptalLabel.trailingAnchor,constant: 10),
            triciptalTextField.trailingAnchor.constraint(equalTo: contentView2.trailingAnchor,constant: -15),
            
            breastplateLabel.topAnchor.constraint(equalTo: triciptalTextField.bottomAnchor,constant: 15),
            breastplateLabel.leadingAnchor.constraint(equalTo: triciptalLabel.leadingAnchor),
            
            breastplateTextField.centerYAnchor.constraint(equalTo: breastplateLabel.centerYAnchor),
            breastplateTextField.leadingAnchor.constraint(equalTo: breastplateLabel.trailingAnchor,constant: 10),
            breastplateTextField.trailingAnchor.constraint(equalTo: triciptalTextField.trailingAnchor),
            
            suprailiacLabel.topAnchor.constraint(equalTo: breastplateLabel.bottomAnchor,constant: 15),
            suprailiacLabel.leadingAnchor.constraint(equalTo: triciptalLabel.leadingAnchor),
            
            suprailiacTextField.centerYAnchor.constraint(equalTo: suprailiacLabel.centerYAnchor),
            suprailiacTextField.leadingAnchor.constraint(equalTo: suprailiacLabel.trailingAnchor,constant: 10),
            suprailiacTextField.trailingAnchor.constraint(equalTo: triciptalTextField.trailingAnchor),
            
            abdominalLabel.topAnchor.constraint(equalTo: suprailiacLabel.bottomAnchor,constant: 15),
            abdominalLabel.leadingAnchor.constraint(equalTo: triciptalLabel.leadingAnchor),
            
            abdominalTextField.centerYAnchor.constraint(equalTo: abdominalLabel.centerYAnchor),
            abdominalTextField.leadingAnchor.constraint(equalTo: abdominalLabel.trailingAnchor,constant: 10),
            abdominalTextField.trailingAnchor.constraint(equalTo: triciptalTextField.trailingAnchor),
            
            thighLabel.topAnchor.constraint(equalTo: abdominalTextField.bottomAnchor,constant: 15),
            thighLabel.leadingAnchor.constraint(equalTo: triciptalLabel.leadingAnchor),
            
            thighTextField.centerYAnchor.constraint(equalTo: thighLabel.centerYAnchor),
            thighTextField.leadingAnchor.constraint(equalTo: thighLabel.trailingAnchor,constant: 8),
            thighTextField.trailingAnchor.constraint(equalTo: triciptalTextField.trailingAnchor),
            
            subscapularLabel.topAnchor.constraint(equalTo: thighTextField.bottomAnchor,constant: 15),
            subscapularLabel.leadingAnchor.constraint(equalTo: triciptalLabel.leadingAnchor),
            
            subscapularTextField.centerYAnchor.constraint(equalTo: subscapularLabel.centerYAnchor),
            subscapularTextField.leadingAnchor.constraint(equalTo: subscapularLabel.trailingAnchor,constant: 8),
            subscapularTextField.trailingAnchor.constraint(equalTo: triciptalTextField.trailingAnchor),
            
            middleAuxiliaryLabel.topAnchor.constraint(equalTo: subscapularLabel.bottomAnchor,constant: 15),
            middleAuxiliaryLabel.leadingAnchor.constraint(equalTo: triciptalLabel.leadingAnchor),
            
            middleAuxiliaryTextField.centerYAnchor.constraint(equalTo: middleAuxiliaryLabel.centerYAnchor),
            middleAuxiliaryTextField.leadingAnchor.constraint(equalTo: middleAuxiliaryLabel.trailingAnchor,constant: 8),
            middleAuxiliaryTextField.trailingAnchor.constraint(equalTo: triciptalTextField.trailingAnchor),
            
            resultPercentageLabel.topAnchor.constraint(equalTo: middleAuxiliaryTextField.bottomAnchor,constant: 30),
            resultPercentageLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
            resultPercentageLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            
            resultButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor,constant: -20),
            resultButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            resultButton.widthAnchor.constraint(equalToConstant: 340),
            resultButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
