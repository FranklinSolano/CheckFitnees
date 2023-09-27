//
//  AvaliacaoVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 6/3/23.
//

import UIKit

 final class AssessmentViewController: UIViewController {
    
    var screen: AssessmentScreen?
    var name = ""
     var viewModel: AssessmentViewModel = AssessmentViewModel()
    
    override func loadView() {
        screen = AssessmentScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.nameLabel.text = name
        screen?.delegate(delegate: self)
        screen?.configTableView(delegate: self, dataSouce: self)
        viewModel.delegate(delegate: self)
    }
}

//MARK: - UITableViewDelegate, UITableViewDataSource

extension AssessmentViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: AssessmentCell? = tableView.dequeueReusableCell(withIdentifier: AssessmentCell.identifier, for: indexPath) as? AssessmentCell
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        840
    }
    
}

//MARK: - AvaliacaoScreenProtocol

extension AssessmentViewController: AssessmentScreenProtocol {
    func actionEditarButton() {
        viewModel.enableButtonEdit(button: screen?.editDataButton ?? false)
    }
    
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
}

//MARK: - AssessmentViewModelProtocol

extension AssessmentViewController: AssessmentViewModelProtocol {
    func enableButton() {
        screen?.enableButton()
    }
    
    func disableButton() {
        screen?.disableButton()
    }

}
