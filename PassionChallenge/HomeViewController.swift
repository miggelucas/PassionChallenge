//
//  HomeViewController.swift
//  PassionChallenge
//
//  Created by Lucas Migge de Barros on 12/09/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    let customView : UIView = HomeView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view = customView
        
        self.title = "Bom dia!"
        self.title.
        
    }

    
    
    
}


// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct HomeViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            ProfileViewController().showPreview().previewDevice("iPhone SE (3rd generation)")
            ProfileViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeRight)
        }
    }
}
#endif
