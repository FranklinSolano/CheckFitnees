//
//  HomeVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/20/23.
//

import UIKit

class HomeVC: UIViewController {
    
    var screen: HomeScreen?
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configTableView(delegate: self, dataSource: self)
        screen?.delegate(delegate: self)
    }
    
}

//MARK: - HomeScreenProtocol

extension HomeVC: HomeScreenProtocol {
    func actionAddButton() {
        let vc:NewAlertCustonVC = NewAlertCustonVC()
        vc.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: false)
    }
}

//MARK: - UITableViewDelegate, UITableViewDataSource

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: HomeCell? = tableView.dequeueReusableCell(withIdentifier: HomeCell.identifier, for: indexPath) as? HomeCell
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
}
