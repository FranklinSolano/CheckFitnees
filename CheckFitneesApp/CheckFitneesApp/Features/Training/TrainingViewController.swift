//
//  TreinoVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 6/3/23.
//

import UIKit

 final class TrainingViewController: UIViewController {
    
    var screen: TrainingScreen?
    
    override func loadView() {
        screen = TrainingScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }
}

//MARK: - TrainingScreenProtocol
extension TrainingViewController: TrainingScreenProtocol {
    func actionDataTraining() {
        let vc: AlertTrainingViewController = AlertTrainingViewController()
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    
}
