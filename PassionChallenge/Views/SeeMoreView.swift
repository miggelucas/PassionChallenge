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
    var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.isScrollEnabled = true
        tableView.separatorStyle = .singleLine
        //tableView.separatorColor = .red
        
        tableView.register(SeeMoreTableViewCell.self, forCellReuseIdentifier: SeeMoreTableViewCell.identifier)
      
        return tableView
    }()
    
    
    func setupViewHierarchy() {
        self.addSubview(backgroundView)
        self.addSubview(tableView)
        
    }
    
    func setupViewAttributes() {
        tableView.backgroundColor = .clear
        
        backgroundView.image = UIImage(named: "Background")
        backgroundView.contentMode = .scaleToFill
    }
    
    func configConstraints(){
        
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: self.topAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 5),
            tableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -5)
        ])
        
        
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewHierarchy()
        setupViewAttributes()
        configConstraints()
        
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

