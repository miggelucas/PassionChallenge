//
//  DetailsViewController.swift
//  PassionChallenge
//
//  Created by Lucas Migge de Barros on 15/09/22.
//

import UIKit

class DetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //Hello Vivi
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct DetailsViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
    DetailsViewController().showPreview().previewDevice("iPhone SE (3rd generation)")
            DetailsViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeRight)
        }
    }
}
#endif
