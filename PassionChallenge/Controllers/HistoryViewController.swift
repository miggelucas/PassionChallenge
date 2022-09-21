//
//  HistoryViewController.swift
//  PassionChallenge
//
//  Created by João Pedro Monteiro on 19/09/22.
//

import UIKit

class HistoryViewController: UIViewController {
    
    let customView = HistoryView()
    var place : Place?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Conheça a história"
        
        self.view = customView
        
        // Do any additional setup after loading the view.
    }
    
    init(withPlace place: Place){
            super.init(nibName: nil, bundle: nil)
            self.place = place
        }
        
        init(){
            super.init(nibName: nil, bundle: nil)
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
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
struct HistoryViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            HistoryViewController().showPreview().previewDevice("iPhone SE (3rd generation)")
            HistoryViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeRight)
        }
    }
}
#endif

