//
//  TreinoVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 6/3/23.
//

import UIKit

class TreinoVC: UIViewController {
    
    var screen: TreinoScreen?
    
    override func loadView() {
        screen = TreinoScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
