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

class HomeScreen: UIView {
    
    weak var delegate: HomeScreenProtocol?
    public func delegate(delegate:HomeScreenProtocol){
        self.delegate = delegate
    }
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "CheckFitnees"
        label.textColor = UIColor.corTwo
        label.font = UIFont(name: "Chalkduster", size: 40)
        label.textAlignment = .center
        return label
    }()
    
    lazy var addAlunoButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("     Adicionar Aluno", for: .normal)
        button.titleLabel?.font = UIFont(name: "Trebuchet MS", size: 16)
        button.setTitleColor(UIColor.corOne, for: .normal)
        button.backgroundColor = UIColor.corTwo
        button.clipsToBounds = true
        button.layer.cornerRadius = 12
        button.contentHorizontalAlignment = .left
        button.addTarget(self, action: #selector(tappedAddAluno), for: .touchUpInside)
        return button
    }()
    
    lazy var imagePlus: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "plus.circle.fill")
        image.tintColor = UIColor.corOne
        return image
    }()
    
    
    lazy var tableView: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.backgroundColor = UIColor.corOne
        tv.separatorStyle = .none
        tv.register(HomeCell.self, forCellReuseIdentifier: HomeCell.identifier)
        return tv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewCode()
        backgroundColor = UIColor.corOne    }
    
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
        addSubview(titleLabel)
        addSubview(addAlunoButton)
        addAlunoButton.addSubview(imagePlus)
        addSubview(tableView)
        addSubview(imagePlus)
    }
    
    func configConstraint() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            
            addAlunoButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 20),
            addAlunoButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
            addAlunoButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            addAlunoButton.heightAnchor.constraint(equalToConstant: 60),
            
            imagePlus.centerYAnchor.constraint(equalTo: addAlunoButton.centerYAnchor),
            imagePlus.trailingAnchor.constraint(equalTo: addAlunoButton.trailingAnchor,constant: -30),
            imagePlus.heightAnchor.constraint(equalToConstant: 55),
            imagePlus.widthAnchor.constraint(equalToConstant: 55),
            
            tableView.topAnchor.constraint(equalTo: addAlunoButton.bottomAnchor,constant: 20),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
