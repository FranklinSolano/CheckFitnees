//
//  HomeScreen.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/20/23.
//

import UIKit

protocol HomeScreenProtocol: AnyObject {
    func actionAddButton()
}

 final class HomeScreen: UIView {
    
    weak var delegate: HomeScreenProtocol?
    public func delegate(delegate:HomeScreenProtocol){
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
    
    lazy var addButton: UIButton = {
        let button = ButtonCustom(title: "     Adicionar")
        button.contentHorizontalAlignment = .left
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(tappedAddAluno), for: .touchUpInside)
        return button
    }()
    
    lazy var imagePlus: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "plus.circle.fill")
        image.tintColor = UIColor.white
        return image
    }()
    
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = UIColor.secondaryColor
        tableView.separatorStyle = .none
        tableView.register(HomeCell.self, forCellReuseIdentifier: HomeCell.identifier)
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewCode()
        backgroundColor = UIColor.secondaryColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configTableView(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }
    
    @objc private func tappedAddAluno(){
        delegate?.actionAddButton()
    }
}

//MARK: - ViewCode

extension HomeScreen: ViewCode {
    func configElements() {
        [titleLabel,imageLogo,addButton,imagePlus,tableView].forEach({addSubview($0)})
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
            
            addButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 35),
            addButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            addButton.heightAnchor.constraint(equalToConstant: 60),
            
            imagePlus.centerYAnchor.constraint(equalTo: addButton.centerYAnchor),
            imagePlus.trailingAnchor.constraint(equalTo: addButton.trailingAnchor,constant: -30),
            imagePlus.heightAnchor.constraint(equalToConstant: 30),
            imagePlus.widthAnchor.constraint(equalToConstant: 30),
            
            tableView.topAnchor.constraint(equalTo: addButton.bottomAnchor,constant: 20),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
