//
//  NewAlertCustonScreen.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/22/23.
//

import UIKit

protocol NewAlertCustonScreenProtocol: AnyObject {
    func actionBackButton()
    func actionAdicionarButton()
}

class NewAlertCustonScreen: UIView {
    
    weak var delegate: NewAlertCustonScreenProtocol?
    public func delegate(delegate: NewAlertCustonScreenProtocol){
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
    
    lazy var contentViewAlert: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.primaryColor
        view.clipsToBounds = true
        view.layer.cornerRadius = 27
        return view
    }()
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "multiply.circle.fill"), for: .normal)
        button.tintColor = UIColor.secondaryColor
        button.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return button
    }()
    
    lazy var tokenLabel: UILabel = {
        let label = TextLabelCustom(title: "Dados do Aluno")
        label.textColor = .white
        label.font = UIFont(name: "Roboto-Bold", size: 24)
        return label
    }()
    
    lazy var nameLabel: UILabel = {
        let label = TextLabelCustom(title: "• Nome:")
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var nameTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.attributedPlaceholder = NSAttributedString(string: "Digite o nome do aluno",attributes: [NSAttributedString.Key.foregroundColor: UIColor.secondaryColor])
        tf.backgroundColor = UIColor.primaryColor
        tf.layer.shadowColor = UIColor.white.cgColor
        tf.textColor = .secondaryColor
        return tf
    }()
    
    lazy var modalityLabel: UILabel = {
        let label = TextLabelCustom(title: "• Modalidade:")
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var modalityTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.attributedPlaceholder = NSAttributedString(string: "Digite a modalidade",attributes: [NSAttributedString.Key.foregroundColor: UIColor.secondaryColor])
        tf.backgroundColor = UIColor.primaryColor
        tf.layer.shadowColor = UIColor.white.cgColor
        tf.textColor = .secondaryColor
        return tf
    }()
    
    lazy var emailLabel: UILabel = {
        let label = TextLabelCustom(title: "• Email:")
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.attributedPlaceholder = NSAttributedString(string: "Digite o email",attributes: [NSAttributedString.Key.foregroundColor: UIColor.secondaryColor])
        tf.backgroundColor = UIColor.primaryColor
        tf.layer.shadowColor = UIColor.white.cgColor
        tf.textColor = .secondaryColor
        return tf
    }()
    
    lazy var heightLabel: UILabel = {
        let label = TextLabelCustom(title: "• Altura:")
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var heightTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.attributedPlaceholder = NSAttributedString(string: "Ex: 170",attributes: [NSAttributedString.Key.foregroundColor: UIColor.secondaryColor])
        tf.backgroundColor = UIColor.primaryColor
        tf.layer.shadowColor = UIColor.white.cgColor
        tf.textColor = .secondaryColor
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var weightLabel: UILabel = {
        let label = TextLabelCustom(title: "• Peso:")
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var weightTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.attributedPlaceholder = NSAttributedString(string: "Ex: 70.0",attributes: [NSAttributedString.Key.foregroundColor: UIColor.secondaryColor])
        tf.backgroundColor = UIColor.primaryColor
        tf.layer.shadowColor = UIColor.white.cgColor
        tf.textColor = .secondaryColor
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var ageLabel: UILabel = {
        let label = TextLabelCustom(title: "• Idade:")
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var ageTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.attributedPlaceholder = NSAttributedString(string: "Ex: 21",attributes: [NSAttributedString.Key.foregroundColor: UIColor.secondaryColor])
        tf.backgroundColor = UIColor.primaryColor
        tf.layer.shadowColor = UIColor.white.cgColor
        tf.textColor = .secondaryColor
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var manLabel: UILabel = {
        let label = TextLabelCustom(title: "Homem")
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var imageCheckBoxMan: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "circle.fill")
        image.tintColor = .secondaryColor
        return image
    }()
    
    lazy var womanLabel: UILabel = {
        let label = TextLabelCustom(title: "Mulher")
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var imageCheckBoxWoman: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "circle")
        image.tintColor = .secondaryColor
        return image
    }()
    
    lazy var toAddButton: UIButton = {
        let button = ButtonCustom(title: "Adicionar")
        button.backgroundColor = UIColor.secondaryColor
        button.setTitleColor(UIColor.primaryColor, for: .normal)
        button.layer.cornerRadius = 15
        button.titleLabel?.font = UIFont(name: "Roboto-Medium", size: 18)
        button.addTarget(self, action: #selector(tappedAdicionarButton), for: .touchUpInside)
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
    
    public func configTextField(delegate: UITextFieldDelegate){
        nameTextField.delegate = delegate
        modalityTextField.delegate = delegate
        heightTextField.delegate = delegate
        ageTextField.delegate = delegate
        weightTextField.delegate = delegate
    }
    
    
    @objc private func tappedBackButton(){
        delegate?.actionBackButton()
    }
    
    @objc private func tappedAdicionarButton(){
        delegate?.actionAdicionarButton()
    }
}

//MARK: - ViewCode

extension NewAlertCustonScreen: ViewCode {
    func configElements() {
        let views: [UIView] = [titleLabel,imageLogo,contentViewAlert,backButton,tokenLabel,nameLabel,nameTextField,modalityLabel,modalityTextField,emailLabel,emailTextField,heightLabel,heightTextField,weightLabel,weightTextField,ageLabel,ageTextField,manLabel,imageCheckBoxMan,womanLabel,imageCheckBoxWoman,toAddButton]
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
            
            tokenLabel.topAnchor.constraint(equalTo: imageLogo.bottomAnchor,constant: 75),
            tokenLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            contentViewAlert.topAnchor.constraint(equalTo: tokenLabel.bottomAnchor,constant: 15),
            contentViewAlert.centerXAnchor.constraint(equalTo: centerXAnchor),
            contentViewAlert.heightAnchor.constraint(equalToConstant: 380),
            contentViewAlert.widthAnchor.constraint(equalToConstant: 340),
            
            backButton.topAnchor.constraint(equalTo: contentViewAlert.topAnchor,constant: 20),
            backButton.trailingAnchor.constraint(equalTo: contentViewAlert.trailingAnchor,constant: -20),
            
            nameLabel.topAnchor.constraint(equalTo: contentViewAlert.topAnchor,constant: 65),
            nameLabel.leadingAnchor.constraint(equalTo: contentViewAlert.leadingAnchor,constant: 15),
            
            nameTextField.centerYAnchor.constraint(equalTo: nameLabel.centerYAnchor),
            nameTextField.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor,constant: 8),
            nameTextField.trailingAnchor.constraint(equalTo: contentViewAlert.trailingAnchor,constant: -20),
            nameTextField.heightAnchor.constraint(equalToConstant: 20),
            
            modalityLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor,constant: 20),
            modalityLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            
            modalityTextField.centerYAnchor.constraint(equalTo: modalityLabel.centerYAnchor),
            modalityTextField.leadingAnchor.constraint(equalTo: modalityLabel.trailingAnchor,constant: 8),
            modalityTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            modalityTextField.heightAnchor.constraint(equalToConstant: 20),
            
            emailLabel.topAnchor.constraint(equalTo: modalityTextField.bottomAnchor,constant: 20),
            emailLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            
            emailTextField.centerYAnchor.constraint(equalTo: emailLabel.centerYAnchor),
            emailTextField.leadingAnchor.constraint(equalTo: emailLabel.trailingAnchor,constant: 8),
            emailTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: 20),
            
            heightLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor,constant: 20),
            heightLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            
            heightTextField.centerYAnchor.constraint(equalTo: heightLabel.centerYAnchor),
            heightTextField.leadingAnchor.constraint(equalTo: heightLabel.trailingAnchor,constant: 8),
            heightTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            heightTextField.heightAnchor.constraint(equalToConstant: 20),
            
            weightLabel.topAnchor.constraint(equalTo: heightTextField.bottomAnchor,constant: 20),
            weightLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            
            weightTextField.centerYAnchor.constraint(equalTo: weightLabel.centerYAnchor),
            weightTextField.leadingAnchor.constraint(equalTo: weightLabel.trailingAnchor,constant: 8),
            weightTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            weightTextField.heightAnchor.constraint(equalToConstant: 20),
            
            ageLabel.topAnchor.constraint(equalTo: weightTextField.bottomAnchor,constant: 20),
            ageLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            
            ageTextField.centerYAnchor.constraint(equalTo: ageLabel.centerYAnchor),
            ageTextField.leadingAnchor.constraint(equalTo: ageLabel.trailingAnchor,constant: 8),
            ageTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            ageTextField.heightAnchor.constraint(equalToConstant: 20),
            
            manLabel.topAnchor.constraint(equalTo: ageTextField.bottomAnchor,constant: 20),
            manLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 80),
            
            imageCheckBoxMan.centerYAnchor.constraint(equalTo: manLabel.centerYAnchor),
            imageCheckBoxMan.leadingAnchor.constraint(equalTo: manLabel.trailingAnchor,constant: 8),
            imageCheckBoxMan.heightAnchor.constraint(equalToConstant: 14.5),
            imageCheckBoxMan.widthAnchor.constraint(equalToConstant: 14.5),
            
            womanLabel.centerYAnchor.constraint(equalTo: manLabel.centerYAnchor),
            womanLabel.trailingAnchor.constraint(equalTo: contentViewAlert.trailingAnchor,constant: -70),
            
            imageCheckBoxWoman.centerYAnchor.constraint(equalTo: manLabel.centerYAnchor),
            imageCheckBoxWoman.leadingAnchor.constraint(equalTo: womanLabel.trailingAnchor,constant: 8),
            imageCheckBoxWoman.heightAnchor.constraint(equalToConstant: 14.5),
            imageCheckBoxWoman.widthAnchor.constraint(equalToConstant: 14.5),
            
            toAddButton.centerXAnchor.constraint(equalTo: contentViewAlert.centerXAnchor),
            toAddButton.bottomAnchor.constraint(equalTo: contentViewAlert.bottomAnchor,constant: -20),
            toAddButton.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
}
