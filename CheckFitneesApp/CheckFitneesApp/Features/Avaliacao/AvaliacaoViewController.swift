//
//  AvaliacaoVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 6/3/23.
//

import UIKit

 final class AvaliacaoViewController: UIViewController {
    
    var screen: AvaliacaoScreen?
    var name = ""
    
    override func loadView() {
        screen = AvaliacaoScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.nameLabel.text = name
        screen?.delegate(delegate: self)
        screen?.configTableView(delegate: self, dataSouce: self)
    }
}

//MARK: - UITableViewDelegate, UITableViewDataSource

extension AvaliacaoViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: AvaliacaoCell? = tableView.dequeueReusableCell(withIdentifier: AvaliacaoCell.identifier, for: indexPath) as? AvaliacaoCell
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        840
    }
    
}

//MARK: - AvaliacaoScreenProtocol

extension AvaliacaoViewController: AvaliacaoScreenProtocol {
    func actionEditarButton() {
    }
    
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
}

