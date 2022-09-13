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
        "house",
        "music.note.list",
        "magnifyingglass"
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
            navigation.tabBarItem = UITabBarItem(title: titlesNames[index], image: UIImage(systemName: icons[index]), tag: 1)
            navigation.navigationBar.prefersLargeTitles = true
            self.navigationControllers.append(navigation)
        }
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
