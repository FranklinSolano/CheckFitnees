//
//  TabBarVC.swift
//  CheckFitneesApp
//
//  Created by Franklin  Stilhano on 5/24/23.
//

import UIKit

final class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
}

    private func setupTabBar(){
        
        let homeTabBar = HomeViewController()
        let historyTabBar = HistoryVC()
        let setteingsTabBar = SettingsVC()
        
        setViewControllers([homeTabBar, historyTabBar, setteingsTabBar], animated: false)
        
        tabBar.backgroundColor = UIColor.secondaryColor
        tabBar.isTranslucent = false
        tabBar.tintColor = UIColor.primaryColor
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

