//
//  CicloCarboidratosVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/26/23.
//

import UIKit

class CicloCarboidratosVC: UIViewController {
    
    var screen: CicloCarboidratosScreen?
    var name = ""
    
    override func loadView() {
        screen = CicloCarboidratosScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        screen?.configTableView(delegate: self, dataSource: self)
        screen?.nameLabel.text = name
    }
}

//MARK: - CicloCarboidratosScreenProtocol

extension CicloCarboidratosVC: CicloCarboidratosScreenProtocol {
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
}

//MARK: - UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout 

extension CicloCarboidratosVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CicloCarboidratosCell? = tableView.dequeueReusableCell(withIdentifier: CicloCarboidratosCell.identifier, for: indexPath) as? CicloCarboidratosCell
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        900
    }
}

