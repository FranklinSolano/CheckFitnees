//
//  CalculadorasScreen.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/22/23.
//

import UIKit

protocol PerfilScreenProtocol: AnyObject {
    func actionBackButton()
}

class PeriflScreen: UIView {
    
    weak var delegate: PerfilScreenProtocol?
    public func delegate(delegate:PerfilScreenProtocol){
        self.delegate = delegate
    }
    
    lazy var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.corOne
        view.clipsToBounds = true
        view.layer.cornerRadius = 20
        return view
    }()
    
    lazy var backButton1: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        button.setTitle("voltar", for: .normal)
        button.setTitleColor(.corTwo, for: .normal)
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
        let label = TextLabelCustom(title: "")
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .corTwo
        return label
    }()
    
    lazy var tableView: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.backgroundColor = .corTwo
        tv.separatorStyle = .none
        tv.register(PerfilCell.self, forCellReuseIdentifier: PerfilCell.identifier)
        return tv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewCode()
        backgroundColor = UIColor.corTwo
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configTableView(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }
    
    func setupView(data: PerfilModel?){
        nameLabel.text = data?.name
    }
    
    @objc private func tappedBackButton(){
        delegate?.actionBackButton()
    }
}

//MARK: - ViewCode

extension PeriflScreen: ViewCode {
    func configElements() {
        let views: [UIView] = [contentView,backButton1,imagePerson,nameLabel,tableView]
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
            
            backButton1.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 10),
            backButton1.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 25),
            
            imagePerson.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 20),
            imagePerson.centerXAnchor.constraint(equalTo: centerXAnchor),
            imagePerson.heightAnchor.constraint(equalToConstant: 70),
            imagePerson.widthAnchor.constraint(equalToConstant: 70),
            
            nameLabel.topAnchor.constraint(equalTo: imagePerson.bottomAnchor,constant: 10),
            nameLabel.centerXAnchor.constraint(equalTo: imagePerson.centerXAnchor),
            
            tableView.topAnchor.constraint(equalTo: contentView.bottomAnchor,constant: 10),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
