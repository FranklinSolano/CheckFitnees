//
//  CicloCarboidratosVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/26/23.
//

import UIKit

 final class CarbCycleViewController: UIViewController {
    
    var screen: CarbCycleScreen?
    var name = ""
    
    override func loadView() {
        screen = CarbCycleScreen()
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

extension CarbCycleViewController: CarbCycleScreenProtocol {
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
}

//MARK: - UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout 

extension CarbCycleViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CarbCycleCell? = tableView.dequeueReusableCell(withIdentifier: CarbCycleCell.identifier, for: indexPath) as? CarbCycleCell
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        880
    }
}

