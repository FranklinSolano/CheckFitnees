//
//  CalculadorasVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/22/23.
//

import UIKit

class CalculadoraVC: UIViewController {
    
    var screen: CalculadorasScreen?
    var viewModel: CalculadoraViewModel = CalculadoraViewModel()
    
    
    override func loadView() {
        screen = CalculadorasScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        screen?.configTableView(delegate: self, dataSource: self)
        viewModel.delegate(delegate: self)
    }
}

//MARK: - UITableViewDelegate, UITableViewDataSource

extension CalculadoraVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.datapopular.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: PerfilCell? = tableView.dequeueReusableCell(withIdentifier: PerfilCell.identifier, for: indexPath) as? PerfilCell
        cell?.setupCell(data: viewModel.datapopular[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let vc:TaxaMetabolicaVC = TaxaMetabolicaVC()
            self.navigationController?.pushViewController(vc, animated: true)
        } else {
            let vc:PorcentualHomemVC = PorcentualHomemVC()
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}

//MARK: - CalculadoraViewModelProtocol

extension CalculadoraVC: CalculadoraViewModelProtocol{
    func succes() {
        
    }
    
    func error() {
        
    }
}

//MARK: - CalculadorasScreenProtocol

extension CalculadoraVC: CalculadorasScreenProtocol {
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
}
