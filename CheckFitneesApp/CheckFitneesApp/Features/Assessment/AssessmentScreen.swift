//
//  AvaliacaoScreen.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 6/6/23.
//

import UIKit

protocol AssessmentScreenProtocol: AnyObject {
    func actionBackButton()
    func actionEditarButton()
}

 final class AssessmentScreen: UIView {
    
    weak var delegate: AssessmentScreenProtocol?
    func delegate(delegate:AssessmentScreenProtocol) {
        self.delegate = delegate
    }
    var buttonSalvarDados = false
    
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
    
    lazy var editarButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "editar"), for: .normal)
        button.tintColor = UIColor.secondaryColor
        button.addTarget(self, action: #selector(tappedEditarButton), for: .touchUpInside)
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
    
    lazy var heightLabel: UILabel = {
        let label = TextLabelCustom(title: "Altura:")
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var heightTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "")
        textField.text = "165"
        textField.textAlignment = .center
        textField.backgroundColor = UIColor.primaryColor
        textField.layer.shadowColor = UIColor.secondaryColor.cgColor
        textField.textColor = .secondaryColor
        return textField
    }()
    
    lazy var ageLabel: UILabel = {
        let label = TextLabelCustom(title: "Idade:")
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var ageTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "")
        textField.text = "22"
        textField.textAlignment = .center
        textField.backgroundColor = UIColor.primaryColor
        textField.layer.shadowColor = UIColor.secondaryColor.cgColor
        textField.textColor = .secondaryColor
        return textField
    }()
    
    lazy var weightLabel: UILabel = {
        let label = TextLabelCustom(title: "Peso:")
        label.textColor = .secondaryColor
        return label
    }()
    
    lazy var weightTextField: UITextField = {
        let textField = TextFieldCustom(placeholder: "")
        textField.text = "68.8"
        textField.textAlignment = .center
        textField.backgroundColor = UIColor.primaryColor
        textField.layer.shadowColor = UIColor.secondaryColor.cgColor
        textField.textColor = .secondaryColor
        return textField
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .secondaryColor
        tableView.separatorStyle = .none
        tableView.register(AssessmentCell.self, forCellReuseIdentifier: AssessmentCell.identifier)
        return tableView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewCode()
        backgroundColor = .secondaryColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configTableView(delegate: UITableViewDelegate, dataSouce: UITableViewDataSource){
        tableView.delegate = delegate
        tableView.dataSource = dataSouce
    }
    
    @objc func tappedBackButton(){
        delegate?.actionBackButton()
    }
    
    @objc func tappedEditarButton(){
        delegate?.actionEditarButton()
    }
}

extension AssessmentScreen: ViewCode {
    func configElements() {
        [contentView, backButton, editarButton, imagePerson, nameLabel, heightLabel, heightTextField, ageLabel, ageTextField, weightLabel, weightTextField, tableView].forEach({addSubview($0)})
    }
    
    func configConstraint() {
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: topAnchor),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 220),
            
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 10),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 25),
            
            editarButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 10),
            editarButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            
            imagePerson.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            imagePerson.centerXAnchor.constraint(equalTo: centerXAnchor),
            imagePerson.heightAnchor.constraint(equalToConstant: 70),
            imagePerson.widthAnchor.constraint(equalToConstant: 70),
            
            nameLabel.topAnchor.constraint(equalTo: imagePerson.bottomAnchor,constant: 10),
            nameLabel.centerXAnchor.constraint(equalTo: imagePerson.centerXAnchor),
            
            heightLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor,constant: 20),
            heightLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            
            heightTextField.centerYAnchor.constraint(equalTo: heightLabel.centerYAnchor),
            heightTextField.leadingAnchor.constraint(equalTo: heightLabel.trailingAnchor, constant: 10),
            heightTextField.widthAnchor.constraint(equalToConstant: 60),
            heightTextField.heightAnchor.constraint(equalToConstant: 15),
            
            ageLabel.topAnchor.constraint(equalTo: heightLabel.topAnchor),
            ageLabel.leadingAnchor.constraint(equalTo: heightTextField.trailingAnchor,constant: 20),
            
            ageTextField.centerYAnchor.constraint(equalTo: heightLabel.centerYAnchor),
            ageTextField.leadingAnchor.constraint(equalTo: ageLabel.trailingAnchor, constant: 10),
            ageTextField.widthAnchor.constraint(equalToConstant: 60),
            ageTextField.heightAnchor.constraint(equalToConstant: 15),
            
            weightLabel.topAnchor.constraint(equalTo: heightLabel.topAnchor),
            weightLabel.leadingAnchor.constraint(equalTo: ageTextField.trailingAnchor,constant: 20),
            
            weightTextField.centerYAnchor.constraint(equalTo: heightLabel.centerYAnchor),
            weightTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            weightTextField.widthAnchor.constraint(equalToConstant: 60),
            weightTextField.heightAnchor.constraint(equalToConstant: 15),
            
            tableView.topAnchor.constraint(equalTo: contentView.bottomAnchor,constant: 20),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
