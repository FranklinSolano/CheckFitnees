//
//  AlertTrainingScreen.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 9/2/23.
//

import UIKit

protocol AlertTrainingScreenProtocol: AnyObject {
    func actionBackButton()
    func actionToAddButton()
}

class AlertTrainingScreen: UIView {
    
    weak var delegate: AlertTrainingScreenProtocol?
    func delegate(delegate:AlertTrainingScreenProtocol){
        self.delegate = delegate
    }
    
    lazy var titleLabel: UILabel = {
        let label = TitleLabelCustom()
        return label
    }()
    
    lazy var imageLogo: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo1")
        return image
    }()
    
    lazy var setUpTraining: UILabel = {
        let label = TextLabelCustom(title: "Montar Treino")
        label.font = UIFont(name: "Roboto-Bold", size: 24)
        label.textColor = .white
        return label
    }()
    
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
        button.setImage(UIImage(systemName: "multiply.circle.fill"), for: .normal)
        button.tintColor = UIColor.secondaryColor
        button.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return button
    }()
    
    lazy var nameTrainingLabel: UILabel = {
        let label = TextLabelCustom(title: "• Nome do Treino:")
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var nameTrainingTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.attributedPlaceholder = NSAttributedString(string: "",attributes: [NSAttributedString.Key.foregroundColor: UIColor.secondaryColor])
        tf.backgroundColor = UIColor.primaryColor
        tf.layer.shadowColor = UIColor.white.cgColor
        tf.textColor = .secondaryColor
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var objectiveLabel: UILabel = {
        let label = TextLabelCustom(title: "• Objetivo:")
        label.textColor = .secondaryColor
        return label
    }()
    
    
    lazy var objectiveTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.attributedPlaceholder = NSAttributedString(string: "",attributes: [NSAttributedString.Key.foregroundColor: UIColor.secondaryColor])
        tf.backgroundColor = UIColor.primaryColor
        tf.layer.shadowColor = UIColor.white.cgColor
        tf.textColor = .secondaryColor
        tf.textAlignment = .center
        return tf
    }()
    
    
    lazy var levelStudentLabel: UILabel = {
        let label = TextLabelCustom(title: "• Nivel do Aluno:")
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var levelStudentTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.attributedPlaceholder = NSAttributedString(string: "",attributes: [NSAttributedString.Key.foregroundColor: UIColor.secondaryColor])
        tf.backgroundColor = UIColor.primaryColor
        tf.layer.shadowColor = UIColor.white.cgColor
        tf.textColor = .secondaryColor
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var startDateLabel: UILabel = {
        let label = TextLabelCustom(title: "• Data de inicio:")
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var startDateTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.attributedPlaceholder = NSAttributedString(string: "",attributes: [NSAttributedString.Key.foregroundColor: UIColor.secondaryColor])
        tf.backgroundColor = UIColor.primaryColor
        tf.layer.shadowColor = UIColor.white.cgColor
        tf.textColor = .secondaryColor
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var endLabel: UILabel = {
        let label = TextLabelCustom(title: "• Termina em")
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var endTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.attributedPlaceholder = NSAttributedString(string: "",attributes: [NSAttributedString.Key.foregroundColor: UIColor.secondaryColor])
        tf.backgroundColor = UIColor.primaryColor
        tf.layer.shadowColor = UIColor.white.cgColor
        tf.textColor = .secondaryColor
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var toAddButton: UIButton = {
        let button = ButtonCustom(title: "Adicionar")
        button.backgroundColor = UIColor.secondaryColor
        button.setTitleColor(UIColor.primaryColor, for: .normal)
        button.layer.cornerRadius = 15
        button.titleLabel?.font = UIFont(name: "Roboto-Medium", size: 18)
        button.addTarget(self, action: #selector(tappedToAddButton), for: .touchUpInside)
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
    
    func configDelegateTextFields(delegate: UITextFieldDelegate){
        nameTrainingTextField.delegate = delegate
        objectiveTextField.delegate = delegate
        levelStudentTextField.delegate = delegate
        startDateTextField.delegate = delegate
        endTextField.delegate = delegate
    }
    
    
    @objc func tappedBackButton(){
        delegate?.actionBackButton()
    }
    
    @objc func tappedToAddButton(){
        delegate?.actionToAddButton()
    }
    
}

//MARK: - ViewCode

extension AlertTrainingScreen: ViewCode {
    func configElements() {
        [titleLabel,imageLogo, setUpTraining, contentView, backButton, nameTrainingLabel, nameTrainingTextField, objectiveLabel, objectiveTextField, levelStudentLabel, levelStudentTextField, startDateLabel, startDateTextField, endLabel, endTextField, toAddButton].forEach({addSubview($0)})
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
            
            setUpTraining.topAnchor.constraint(equalTo: imageLogo.bottomAnchor,constant: 50),
            setUpTraining.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            contentView.topAnchor.constraint(equalTo: setUpTraining.bottomAnchor,constant: 15),
            contentView.centerXAnchor.constraint(equalTo: centerXAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 320),
            contentView.widthAnchor.constraint(equalToConstant: 340),
            
            backButton.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 20),
            backButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -20),
            
            nameTrainingLabel.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 65),
            nameTrainingLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 15),
            
            nameTrainingTextField.centerYAnchor.constraint(equalTo: nameTrainingLabel.centerYAnchor),
            nameTrainingTextField.leadingAnchor.constraint(equalTo: nameTrainingLabel.trailingAnchor,constant: 8),
            nameTrainingTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -20),
            
            objectiveLabel.topAnchor.constraint(equalTo: nameTrainingLabel.bottomAnchor,constant: 20),
            objectiveLabel.leadingAnchor.constraint(equalTo: nameTrainingLabel.leadingAnchor),
            
            objectiveTextField.centerYAnchor.constraint(equalTo: objectiveLabel.centerYAnchor),
            objectiveTextField.leadingAnchor.constraint(equalTo: objectiveLabel.trailingAnchor,constant: 8),
            objectiveTextField.trailingAnchor.constraint(equalTo: nameTrainingTextField.trailingAnchor),
            
            levelStudentLabel.topAnchor.constraint(equalTo: objectiveLabel.bottomAnchor,constant: 20),
            levelStudentLabel.leadingAnchor.constraint(equalTo: nameTrainingLabel.leadingAnchor),
            
            levelStudentTextField.centerYAnchor.constraint(equalTo: levelStudentLabel.centerYAnchor),
            levelStudentTextField.leadingAnchor.constraint(equalTo: levelStudentLabel.trailingAnchor,constant: 8),
            levelStudentTextField.trailingAnchor.constraint(equalTo: nameTrainingTextField.trailingAnchor),
            
            startDateLabel.topAnchor.constraint(equalTo: levelStudentLabel.bottomAnchor,constant: 20),
            startDateLabel.leadingAnchor.constraint(equalTo: nameTrainingLabel.leadingAnchor),
            
            startDateTextField.centerYAnchor.constraint(equalTo: startDateLabel.centerYAnchor),
            startDateTextField.leadingAnchor.constraint(equalTo: startDateLabel.trailingAnchor,constant: 8),
            startDateTextField.trailingAnchor.constraint(equalTo: nameTrainingTextField.trailingAnchor),
            
            endLabel.topAnchor.constraint(equalTo: startDateLabel.bottomAnchor,constant: 20),
            endLabel.leadingAnchor.constraint(equalTo: nameTrainingLabel.leadingAnchor),
            
            endTextField.centerYAnchor.constraint(equalTo: endLabel.centerYAnchor),
            endTextField.leadingAnchor.constraint(equalTo: endLabel.trailingAnchor,constant: 8),
            endTextField.trailingAnchor.constraint(equalTo: nameTrainingTextField.trailingAnchor),
            
            toAddButton.topAnchor.constraint(equalTo: endLabel.bottomAnchor,constant: 35),
            toAddButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            toAddButton.widthAnchor.constraint(equalToConstant: 200)
            
        ])
    }
}
