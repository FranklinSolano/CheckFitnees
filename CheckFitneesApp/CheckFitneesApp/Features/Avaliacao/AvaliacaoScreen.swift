//
//  AvaliacaoScreen.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 6/6/23.
//

import UIKit

protocol AvaliacaoScreenProtocol: AnyObject {
    func actionBackButton()
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
        button.tintColor = UIColor.corTwo
        button.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
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
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .corTwo
        return label
    }()
    
    lazy var tableView: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.backgroundColor = .corTwo
        tv.separatorStyle = .none
        tv.register(AvaliacaoCell.self, forCellReuseIdentifier: AvaliacaoCell.identifier)
        return tv
    }()
    
    lazy var salvarDadosButton: UIButton = {
        let button = ButtonCustom(title: "Salvar Dados")
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
    
    public func configTableView(delegate: UITableViewDelegate, dataSouce: UITableViewDataSource){
        tableView.delegate = delegate
        tableView.dataSource = dataSouce
    }
    
    @objc func tappedBackButton(){
        delegate?.actionBackButton()
    }
    
}

extension AvaliacaoScreen: ViewCode {
    func configElements() {
        let views: [UIView] = [contentView,backButton,imagePerson,nameLabel,tableView,salvarDadosButton]
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
            
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            
            imagePerson.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 20),
            imagePerson.centerXAnchor.constraint(equalTo: centerXAnchor),
            imagePerson.heightAnchor.constraint(equalToConstant: 70),
            imagePerson.widthAnchor.constraint(equalToConstant: 70),
            
            nameLabel.topAnchor.constraint(equalTo: imagePerson.bottomAnchor,constant: 10),
            nameLabel.centerXAnchor.constraint(equalTo: imagePerson.centerXAnchor),
            
            tableView.topAnchor.constraint(equalTo: contentView.bottomAnchor,constant: 20),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -120),
            
            salvarDadosButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -10),
            salvarDadosButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            salvarDadosButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            salvarDadosButton.heightAnchor.constraint(equalToConstant: 55)
        ])
    }
}
