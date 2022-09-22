//
//  HistoryViewController.swift
//  PassionChallenge
//
//  Created by João Pedro Monteiro on 19/09/22.
//

import UIKit

class HistoryViewController: UIViewController {
    
    let customView = HistoryView()
    
    let scrollView = UIScrollView()
    
    var historyViews : [HistoryView]?
    var place : Place?
    
    
    func setupScrollView(withHistoryViews : [HistoryView]) {
        
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height:  view.frame.height)
        scrollView.contentSize = CGSize(width: view.frame.width * Double(withHistoryViews.count ), height: view.frame.height)
        scrollView.isPagingEnabled = true
        //scrollView
        
        for i in 0..<withHistoryViews.count{
            withHistoryViews[i].frame = CGRect(x: view.frame.width * CGFloat(i) , y: 0, width: view.frame.width, height: view.frame.height)
            scrollView.addSubview(withHistoryViews[i])
        }
    
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: self.view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            scrollView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            scrollView.widthAnchor.constraint(equalTo: self.view.widthAnchor)
        ])
        
        
    }
    
    
    func createCustomViews(forPlace : Place) -> [HistoryView] {
        var customViews : [HistoryView] = []
        
        for history in place!.historyArray {
            let view = HistoryView()
            view.setupInfo(history: history)
            customViews.append(view)
        }
        
        return customViews
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Conheça a história"
        
        scrollView.delegate = self
        
        self.tabBarController?.tabBar.isHidden = true
        
        customView.setupInfo(history: place!.historyArray[0])
        self.view.addSubview(scrollView)
        setupScrollView(withHistoryViews: historyViews!)
        //self.view = customView
        
        // Do any additional setup after loading the view.
    }
    
    init(withPlace place: Place){
        super.init(nibName: nil, bundle: nil)
        //super.init(transitionStyle: .pageCurl, navigationOrientation: .horizontal)
        self.place = place
        self.historyViews = createCustomViews(forPlace: place)
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

