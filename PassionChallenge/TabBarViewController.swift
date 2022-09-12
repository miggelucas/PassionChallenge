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
        ViewController()
    ]
    
    let icons: [String] = [
        "house",
        "music.note.list"
    ]
    
    var nagivationControllers: [UINavigationController] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarController()
    }
    
    func setupTabBarController(){
        controllers.enumerated().forEach{ (index, viewController) in
            let navigation = UINavigationController(rootViewController: viewController)
            navigation.tabBarItem = UITabBarItem(title: viewController.title, image: UIImage(systemName: icons[index]), tag: 1)
            self.nagivationControllers.append(navigation)
        }
        self.setViewControllers(self.nagivationControllers, animated: true)
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
