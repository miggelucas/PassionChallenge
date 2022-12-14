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
           
            //navigation.navigationBar.prefersLargeTitles = true
            navigation.navigationItem.largeTitleDisplayMode = .automatic
            navigation.viewControllers[0].title = titlesNames[index]
            navigation.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(named: K.systemLightGray) ?? .white]
            navigation.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(named: K.systemLightGray) ?? .white]
            
            navigation.navigationBar.tintColor = .orange
            self.navigationControllers.append(navigation)
        }
        

        self.tabBar.unselectedItemTintColor = UIColor(named: K.systemLightGray)
        self.tabBar.tintColor = .orange
       
        

        
        
//        let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
//        tabBarAppearance.backgroundEffect = UIBlurEffect(style: .regular)
//        tabBarAppearance.backgroundColor = UIColor(named: K.systemBackground)
//        tabBarAppearance
       
        //UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        self.tabBar.backgroundColor = UIColor(named: K.systemBackground)
        UITabBar.appearance().isOpaque = false
        UITabBar.appearance().isTranslucent = true
        
//        self.tabBar.isTranslucent = true
//        self.tabBar.alpha = 0.5
        
        
        //self.tabBar.isTranslucent = false
        //self.tabBar.backgroundColor = UIColor(named: K.systemBackground)
        
     
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
