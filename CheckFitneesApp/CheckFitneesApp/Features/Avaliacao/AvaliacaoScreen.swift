//
//  AvaliacaoScreen.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 6/6/23.
//

import UIKit

protocol AvaliacaoScreenProtocol: AnyObject {
    func actionBackButton()
    func actionEditarButton()
}

class AvaliacaoScreen: UIView {
    
    weak var delegate: AvaliacaoScreenProtocol?
    func delegate(delegate:AvaliacaoScreenProtocol) {
        self.delegate = delegate
    }
    var buttonSalvarDados = false
    
    lazy var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.corOne
        view.clipsToBounds = true
        view.layer.cornerRadius = 20
        return view
    }()
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        button.setTitle("voltar", for: .normal)
        button.setTitleColor(.corTwo, for: .normal)
        button.tintColor = UIColor.corTwo
        button.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return button
    }()
    
    lazy var editarButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "editar"), for: .normal)
        button.tintColor = UIColor.corTwo
        button.addTarget(self, action: #selector(tappedEditarButton), for: .touchUpInside)
        return button
    }()

    lazy var imagePerson: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "person.circle.fill")
        image.tintColor = UIColor.corTwo
        return image
    }()
    
    lazy var nameLabel: UILabel = {
        let label = TextLabelCustom(title: "" )
        label.textColor = .corTwo
        return label
    }()
    
    lazy var alturaLabel: UILabel = {
        let label = TextLabelCustom(title: "Altura:")
        label.textColor = .corTwo
        return label
    }()
    
    lazy var alturaTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.text = "165"
        tf.textAlignment = .center
        tf.backgroundColor = UIColor.corOne
        tf.layer.shadowColor = UIColor.corTwo.cgColor
        tf.textColor = .corTwo
        return tf
    }()
    
    lazy var idadeLabel: UILabel = {
        let label = TextLabelCustom(title: "Idade:")
        label.textColor = .corTwo
        return label
    }()
    
    lazy var idadeTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.text = "22"
        tf.textAlignment = .center
        tf.backgroundColor = UIColor.corOne
        tf.layer.shadowColor = UIColor.corTwo.cgColor
        tf.textColor = .corTwo
        return tf
    }()
    
    lazy var pesoLabel: UILabel = {
        let label = TextLabelCustom(title: "Peso:")
        label.textColor = .corTwo
        return label
    }()
    
    lazy var pesoTextField: UITextField = {
        let tf = TextFieldCustom(placeholder: "")
        tf.text = "68.8"
        tf.textAlignment = .center
        tf.backgroundColor = UIColor.corOne
        tf.layer.shadowColor = UIColor.corTwo.cgColor
        tf.textColor = .corTwo
        return tf
    }()
    
    lazy var tableView: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.backgroundColor = .corTwo
        tv.separatorStyle = .none
        tv.register(AvaliacaoCell.self, forCellReuseIdentifier: AvaliacaoCell.identifier)
        return tv
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewCode()
        backgroundColor = .corTwo
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

extension AvaliacaoScreen: ViewCode {
    func configElements() {
        let views: [UIView] = [contentView,backButton,editarButton,imagePerson,nameLabel,alturaLabel,alturaTextField,idadeLabel,idadeTextField,pesoLabel,pesoTextField,tableView]
        for view in views {
            addSubview(view)
        }
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
            
            alturaLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor,constant: 20),
            alturaLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            
            alturaTextField.centerYAnchor.constraint(equalTo: alturaLabel.centerYAnchor),
            alturaTextField.leadingAnchor.constraint(equalTo: alturaLabel.trailingAnchor, constant: 10),
            alturaTextField.widthAnchor.constraint(equalToConstant: 60),
            alturaTextField.heightAnchor.constraint(equalToConstant: 15),
            
            idadeLabel.topAnchor.constraint(equalTo: alturaLabel.topAnchor),
            idadeLabel.leadingAnchor.constraint(equalTo: alturaTextField.trailingAnchor,constant: 20),
            
            idadeTextField.centerYAnchor.constraint(equalTo: alturaLabel.centerYAnchor),
            idadeTextField.leadingAnchor.constraint(equalTo: idadeLabel.trailingAnchor, constant: 10),
            idadeTextField.widthAnchor.constraint(equalToConstant: 60),
            idadeTextField.heightAnchor.constraint(equalToConstant: 15),
            
            pesoLabel.topAnchor.constraint(equalTo: alturaLabel.topAnchor),
            pesoLabel.leadingAnchor.constraint(equalTo: idadeTextField.trailingAnchor,constant: 20),
            
            pesoTextField.centerYAnchor.constraint(equalTo: alturaLabel.centerYAnchor),
            pesoTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            pesoTextField.widthAnchor.constraint(equalToConstant: 60),
            pesoTextField.heightAnchor.constraint(equalToConstant: 15),
            
            tableView.topAnchor.constraint(equalTo: contentView.bottomAnchor,constant: 20),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
