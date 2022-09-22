//
//  DetailsViewController.swift
//  PassionChallenge
//
//  Created by Lucas Migge de Barros on 15/09/22.
//

import UIKit

class DetailsViewController: UIViewController {
  
    let customView = DetailsView()
    var place : Place?
    
    
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.tabBarController?.tabBar.isHidden = true
        navigationItem.largeTitleDisplayMode = .never
        
        self.view = customView
        customView.draw(place: place!)

        customView.delegate = self
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
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


extension DetailsViewController : DetailViewDelegate {
    func pushNextViewController() {
        print("blablabla")
        navigationController?.pushViewController(HistoryViewController(withPlace: place!), animated: true)
        
    }
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
