//
//  TabBarVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/24/23.
//

import UIKit

class TabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
//        configTabBar()
}

    private func setupTabBar(){
        
        let homeTabBar = HomeVC()
        let historyTabBar = HistoryVC()
        let setteingsTabBar = SettingsVC()
        
        setViewControllers([homeTabBar, historyTabBar, setteingsTabBar], animated: false)
        
        tabBar.backgroundColor = UIColor.corTwo
        tabBar.isTranslucent = false
        tabBar.tintColor = UIColor.corOne
        tabBar.unselectedItemTintColor = .gray
        guard let tabBarItem = tabBar.items else { return }
        
        tabBarItem[0].title = "Home"
        tabBarItem[0].image = UIImage(systemName: "house")
        
        tabBarItem[1].title = "History"
        tabBarItem[1].image = UIImage(systemName: "chart.bar.xaxis")

        tabBarItem[2].title = "Perfil"
        tabBarItem[2].image = UIImage(systemName: "person")
        
        
    }
    
    
}

