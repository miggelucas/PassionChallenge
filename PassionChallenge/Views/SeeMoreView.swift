//
//  SeeMoreView.swift
//  PassionChallenge
//
//  Created by João Pedro Monteiro on 14/09/22.
//

import UIKit

class SeeMoreView: UIView {
    
    // inicializando componentes
    let backgroundView = UIImageView()
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.isScrollEnabled = false
        tableView.separatorStyle = .none

        tableView.register(SeeMoreTableViewCell.self, forCellReuseIdentifier: SeeMoreTableViewCell.identifier)
            
        return tableView
    }()
    
 
    func setupViewHierarchy() {

        
        self.addSubview(tableView)
    }
    
    func setupViewAttributes() {
        self.backgroundColor = UIColor(named: "systemBackground")

        
        backgroundView.image = UIImage(named: "Background")
        backgroundView.contentMode = .scaleToFill
    }
    
    func configConstraints(){
       
       NSLayoutConstraint.activate([
       
           self.tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
           self.tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
           self.tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
           self.tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
       ])
       
   }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewAttributes()
        configConstraints()
        
        //SeeMoreTableViewCell()
    }
    
    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
    }
}

    


    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct SeeMoreView_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            SeeMoreView().showPreview().previewDevice("iPhone SE (3rd generation)")
            SeeMoreView().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeRight)
        }
    }
}
#endif

