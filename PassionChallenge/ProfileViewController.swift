//
//  ViewController.swift
//  PassionChallenge
//
//  Created by Lucas Migge de Barros on 12/09/22.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .black
        self.title = "Meu perfil"
    }


}



// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct ProfileViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            ProfileViewController().showPreview().previewDevice("iPhone SE (3rd generation)")
            ProfileViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeRight)
        }
    }
}
#endif



