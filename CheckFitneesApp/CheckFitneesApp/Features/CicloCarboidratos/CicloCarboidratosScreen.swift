//
//  CicloCarboidratosScreen.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/26/23.
//

import UIKit

protocol CicloCarboidratosScreenProtocol: AnyObject {
    func actionBackButton()
}

class CicloCarboidratosScreen: UIView {
    
    weak var delegate: CicloCarboidratosScreenProtocol?
    public func delegate(delegate:CicloCarboidratosScreenProtocol) {
        self.delegate = delegate
    }
    
    lazy var titleLabel: UILabel = {
        let label = TitleLabelCustom()
        return label
    }()
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        button.tintColor = UIColor.corOne
        button.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return button
    }()
    
    lazy var nameLabel: UILabel = {
        let label = TextLabelCustom(title: "Aluno: Franklin Solano")
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    lazy var modalidadeLabel: UILabel = {
        let label = TextLabelCustom(title: "Modalidade Academia")
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    lazy var tableView: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.backgroundColor = .corTwo
        tv.separatorStyle = .none
        tv.register(CicloCarboidratosCell.self, forCellReuseIdentifier: CicloCarboidratosCell.identifier)
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
    
    public func configTableView(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }
    
    @objc private func tappedBackButton(){
        delegate?.actionBackButton()
    }
    
}

//MARK: - ViewCode

extension CicloCarboidratosScreen: ViewCode {
    func configElements() {
        let views: [UIView] = [titleLabel,backButton,nameLabel,modalidadeLabel,tableView]
        for view in views {
            addSubview(view)
        }
    }
    
    func configConstraint() {
            NSLayoutConstraint.activate([
                
                titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
                titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
                titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
                
                backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
                backButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
                
                nameLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 30),
                nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
                
                modalidadeLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor),
                modalidadeLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
                
                tableView.topAnchor.constraint(equalTo: modalidadeLabel.bottomAnchor,constant: 40),
                tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
                tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
                tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])
    }
    
    
}
