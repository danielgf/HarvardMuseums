//
//  TabBarCoordinator.swift
//  HarvardMuseums
//
//  Created by Daniel Griso Filho on 16/11/22.
//

import UIKit

class TabBarCoordinator {
    
    // MARK: - Variables and Properties
    var tabBarController: UITabBarController
    var navigationController: UINavigationController!
    
    // MARK: - Init
    /// Initialize this function to create the Tab Bar to our application
    /// - Parameter tabBarController: UITabBarController to create and add the views to show on the Tab Bar
    init(_ tabBarController: UITabBarController) {
        self.tabBarController = tabBarController
        self.navigationController = tabBarController.navigationController ?? UINavigationController()
    }
    
    // MARK: - Functions
    /// Function responsable to initalize the Controllers and add to the Tab Bar to show on our application
    func start() {
        var controllers: [UIViewController] = []
        
        let viewController = ViewController()
        viewController.tabBarItem = UITabBarItem(title: "Home",
                                                 image: UIImage(systemName: "house"),
                                                 tag: 0)
        controllers.append(viewController)
        
        tabBarController.setViewControllers(controllers, animated: true)
    }
    
}
