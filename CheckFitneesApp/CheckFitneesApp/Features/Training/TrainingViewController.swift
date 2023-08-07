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
    }
}
