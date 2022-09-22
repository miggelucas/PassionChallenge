//
//  HistoryViewController.swift
//  PassionChallenge
//
//  Created by João Pedro Monteiro on 19/09/22.
//

import UIKit

class HistoryViewController: UIViewController {
    
    let customView = HistoryView()
    var history : History?
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Conheça a história"
        self.view = customView
        
        self.tabBarController?.tabBar.isHidden = true
        customView.setupInfo(history: self.history!)
        
        // Do any additional setup after loading the view.
    }
    
    init(withHistory history: History){
        super.init(nibName: nil, bundle: nil)
        //super.init(transitionStyle: .pageCurl, navigationOrientation: .horizontal)
        self.history = history
        //self.historyViews = createCustomViews(forPlace: place)
    }
    
    
    init(){
        super.init(nibName: nil, bundle: nil)
//        super.init(transitionStyle: .pageCurl, navigationOrientation: .horizontal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

    
}


extension HistoryViewController : UIScrollViewDelegate {
    
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

