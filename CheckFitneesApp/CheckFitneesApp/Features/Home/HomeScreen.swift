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
        let label = TitleLabelCustom()
        return label
    }()
    
    lazy var addAlunoButton: UIButton = {
        let button = ButtonCustom(title: "     Adicionar")
        button.contentHorizontalAlignment = .left
        button.addTarget(self, action: #selector(tappedAddAluno), for: .touchUpInside)
        return button
    }()
    
    lazy var imagePlus: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "plus.circle.fill")
        image.tintColor = UIColor.corTwo
        return image
    }()
    
    
    lazy var tableView: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.backgroundColor = UIColor.corTwo
        tv.separatorStyle = .none
        tv.register(HomeCell.self, forCellReuseIdentifier: HomeCell.identifier)
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
        let views: [UIView] = [titleLabel,addAlunoButton,imagePlus,tableView,imagePlus]
        for view in views {
            addSubview(view)
        }
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
            imagePlus.heightAnchor.constraint(equalToConstant: 30),
            imagePlus.widthAnchor.constraint(equalToConstant: 30),
            
            tableView.topAnchor.constraint(equalTo: addAlunoButton.bottomAnchor,constant: 20),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
