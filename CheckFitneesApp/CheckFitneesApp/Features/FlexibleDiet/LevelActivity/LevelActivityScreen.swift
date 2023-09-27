//
//  LevelActivityScreen.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 7/11/23.
//

import UIKit

protocol LevelActivityScreenProtocol: AnyObject {
    func actionBackButton()
    func actionNextButton()
}

final class LevelActivityScreen: UIView {
    
    weak var delegate: LevelActivityScreenProtocol?
    func delegate(delegate:LevelActivityScreenProtocol){
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
    
    lazy var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.primaryColor
        view.clipsToBounds = true
        view.layer.cornerRadius = 15
        return view
    }()
    
    lazy var levelLabel: UILabel = {
        let label = TextLabelCustom(title: "Qual é o seu nivel basico de Atividade?")
        label.font = UIFont(name: "Roboto-Bold", size: 24)
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .primaryColor
        tableView.separatorStyle = .none
        tableView.isUserInteractionEnabled = false
        tableView.register(LevelActivityCell.self, forCellReuseIdentifier: LevelActivityCell.identifier)
        return tableView
    }()
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Voltar", for: .normal)
        button.titleLabel?.font = UIFont(name: "Roboto-Regular", size: 18)
        button.setTitleColor(UIColor.secondaryColor, for: .normal)
        button.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return button
    }()
    
    lazy var nextButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Proximo", for: .normal)
        button.titleLabel?.font = UIFont(name: "Roboto-Regular", size: 18)
        button.setTitleColor(UIColor.secondaryColor, for: .normal)
        button.addTarget(self, action: #selector(tappedNextButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewCode()
        backgroundColor = .secondaryColor
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
    
    @objc private func tappedNextButton(){
        delegate?.actionNextButton()
    }
}

//MARK: - ViewCode

extension LevelActivityScreen: ViewCode {
    func configElements() {
        [titleLabel, imageLogo, contentView, levelLabel, tableView, backButton, nextButton].forEach({addSubview($0)})
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
      
            levelLabel.topAnchor.constraint(equalTo: imageLogo.bottomAnchor,constant: 50),
            levelLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 15),
            levelLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -15),
            
            contentView.topAnchor.constraint(equalTo: levelLabel.bottomAnchor,constant: 15),
            contentView.centerXAnchor.constraint(equalTo: centerXAnchor),
            contentView.widthAnchor.constraint(equalToConstant: 340),
            contentView.heightAnchor.constraint(equalToConstant: 450),
            
            tableView.topAnchor.constraint(equalTo: levelLabel.bottomAnchor,constant: 35),
            tableView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 20),
            tableView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -20),
            tableView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -45),
            
            backButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -10),
            backButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 40),
            
            nextButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -10),
            nextButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -40)
        ])
    }
}
