//
//  PageHistoryViewController.swift
//  PassionChallenge
//
//  Created by Lucas Migge de Barros on 22/09/22.
//

import UIKit

class PageHistoryViewController: UIPageViewController {
    
    let changeSugStackView = UIStackView()
    
    let changeSugLabel = UILabel()
    let changeSugButton = UIButton()
    
    
    var pages : [HistoryViewController]?
    
    let pageControl: UIPageControl = {
        let page = UIPageControl()
        page.currentPageIndicatorTintColor = UIColor(named: K.systemLightGray)
        page.pageIndicatorTintColor = .gray
        page.currentPage = 0
        return page
    }()
    
    init(withPages pages : [HistoryViewController]){
        self.pages = pages
        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
     static func setupViewControllers(withPlace place : Place) -> [HistoryViewController] {
        var customHistoryControllers : [HistoryViewController] = []
        for history in place.historyArray {
            let historyVC = HistoryViewController(withHistory: history)
            customHistoryControllers.append(historyVC)
        }
        
        return customHistoryControllers
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green
        dataSource = self
        delegate = self
        
        self.title = "Conheça a história"
        
        setupAdditionalConfiguration()
        addSubviews()
        
        // Do any additional setup after loading the view.
    }
    
    func addSubviews(){
        
        self.view.addSubview(pageControl)
        self.view.addSubview(changeSugStackView)
        
        changeSugStackView.addArrangedSubview(changeSugLabel)
        changeSugStackView.addArrangedSubview(changeSugButton)
        
        //changeSugStackView.backgroundColor = .cyan
        changeSugStackView.axis = .vertical
        changeSugStackView.alignment = .center
        changeSugStackView.distribution = .fillEqually
        changeSugStackView.spacing = 6
        
        changeSugLabel.text = "Viu algum conteúdo incoerente?"  //ver como alinhar com o data source
        changeSugLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        changeSugLabel.textColor = UIColor(named: K.systemLightGray)
        //changeSugLabel.backgroundColor = .gray
        
        
        changeSugButton.setTitle("sugerir alteração", for: .normal)
        changeSugButton.setTitleColor(UIColor(named: K.systemLightGray), for: .normal)
        
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pageControl.widthAnchor.constraint(equalTo: self.view.widthAnchor),
            pageControl.heightAnchor.constraint(equalToConstant: 40),
            pageControl.bottomAnchor.constraint(equalTo: changeSugStackView.topAnchor, constant: -5)
        ])
        
        
        changeSugStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            changeSugStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -5),
            changeSugStackView.heightAnchor.constraint(equalToConstant: 48),
            changeSugStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func setupAdditionalConfiguration(){
        pageControl.addTarget(self, action: #selector(didUSerTapPageControl), for: .valueChanged)
        setViewControllers([pages![0]], direction: .forward, animated: true)
        pageControl.numberOfPages = pages!.count
    }
    
    @objc func didUSerTapPageControl(_ sender: UIPageControl){
        setViewControllers([pages![sender.currentPage]], direction: .forward, animated: true)
    }
    
    
    
    //    func createCustomViews(forPlace : Place) -> [HistoryView] {
    //        var customViews : [HistoryView] = []
    //
    //        for history in place!.historyArray {
    //            let view = HistoryView()
    //            view.setupInfo(history: history)
    //            customViews.append(view)
    //        }
    //
    //        return customViews
    //    }
    
    
    
}

extension PageHistoryViewController: UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = pages!.firstIndex(of: viewController as! HistoryViewController) else { return nil }
        let newViewController = index == 0 ? pages!.last : pages![index-1]
        return newViewController
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let index = pages!.firstIndex(of: viewController as! HistoryViewController) else { return nil }
        let newViewController = index < pages!.count-1 ? pages![index+1] : pages!.first
        return newViewController
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        guard let viewControllers = pageViewController.viewControllers else { return }
        guard let index = pages!.firstIndex(of: viewControllers[0] as! HistoryViewController) else { return }
        pageControl.currentPage = index
    }
}
