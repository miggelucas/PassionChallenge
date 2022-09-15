//
//  TabBarViewController.swift
//  PassionChallenge
//
//  Created by Lucas Migge de Barros on 12/09/22.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let controllers: [UIViewController] = [
        HomeViewController(),
        ProfileViewController(),
        SearchViewController()
    ]
    
    let icons: [String] = [
        "Discover",
        "Profile",
        "Buscar"
    ]
    
    let titlesNames : [String] = [
        "Descubra",
        "Perfil",
        "Pesquisar"
    ]
    
    var navigationControllers: [UINavigationController] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarController()
    }
    
    func setupTabBarController(){
        controllers.enumerated().forEach{ (index, viewController) in
            let navigation = UINavigationController(rootViewController: viewController)
            navigation.tabBarItem = UITabBarItem(title: titlesNames[index], image: UIImage(named: icons[index]), tag: 1)
           
            navigation.navigationBar.prefersLargeTitles = true
            navigation.navigationBar.tintColor = UIColor(named: "Light Gray Blue")
            navigation.viewControllers[0].title = titlesNames[index]
            navigation.navigationBar.tintColor = UIColor(named: "Light Gray Blue")
            
            
            self.navigationControllers.append(navigation)
        }
        
        
        self.tabBar.unselectedItemTintColor = UIColor(named: "Light Gray Blue")
        self.tabBar.tintColor = .orange
        

        
        self.setViewControllers(self.navigationControllers, animated: true)
        
    }


}

// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct TabBarViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            TabBarViewController().showPreview().previewDevice("iPhone SE (3rd generation)")
            TabBarViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeRight)
        }
    }
}
#endif
