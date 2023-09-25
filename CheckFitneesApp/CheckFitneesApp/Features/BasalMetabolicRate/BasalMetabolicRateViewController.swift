//
//  TaxaMetabolicaVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/22/23.
//

import UIKit

protocol BasalMetabolicRateViewControllerProtocol: AnyObject {
    func succes(with taxa: Double)
}

final class BasalMetabolicRateViewController: UIViewController {
    
    weak var delegate:BasalMetabolicRateViewControllerProtocol?
    func delegate(delegate:BasalMetabolicRateViewControllerProtocol) {
        self.delegate = delegate
    }
    
    var screen: BasalMetabolicRateScreen?
    var viewModel: BasalMetabolicRateViewModel = BasalMetabolicRateViewModel()
    var name = ""
    var resultBasal = 0.0
    
    
    override func loadView() {
        screen = BasalMetabolicRateScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        screen?.configTextField(delegate: self)
        screen?.nameLabel.text = name
        screen?.resultBasalMetabolicRateLabel.text = "Taxa Metabólica Basal \(String(format: "%.2f", resultBasal)) Kcal"
    }
}

//MARK: - TaxaMetabolicaScreenProtocol

extension BasalMetabolicRateViewController: BasalMetabolicRateScreenProtocol {
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionCalcularButton() {
        screen?.resultBasalMetabolicRateLabel.text =  viewModel.calcularTaxaMetabolica(textFieldPeso: screen?.weightTextField.text ?? "", textFieldAltura: screen?.heightTextField.text ?? "", textFieldIdade: screen?.ageTextField.text ?? "")
        viewModel.atualizarDado(id: viewModel.result)
        self.delegate?.succes(with : viewModel.reusltTaxaMetabolica)
    }
}
//MARK: - UITextFieldDelegate

extension BasalMetabolicRateViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
