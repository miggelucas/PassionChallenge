//
//  HomeView.swift
//  PassionChallenge
//
//  Created by Lucas Migge de Barros on 12/09/22.
//

import Foundation
import UIKit


class HomeView : UIView {
    
    // inicializando componentes
    let backgroundView = UIImageView()
    
    let categoriesLabel = UILabel()
    
    // placeholder while we figure out how to do the collections
    let categoriesView = UIView()
//    let categoriesCollection = UICollectionView()
//    weak var categoriesCollectionDelegate: UICollectionViewDelegate?
//    weak var categoriesCollectionDataSource: UICollectionViewDataSource?
    
    let nearToLabel = UILabel()
    let seeMoreButton = UIButton()
    let nearToView = UIView()
    
    let nearLabelButtonStackView = UIStackView()
    let nearToYouStackView = UIStackView()
    
    let primaryStackView = UIStackView()
    
    let categoriesStackView = UIStackView()
        
    //let nearToYouCollection = UICollectionView()
    
    //let bestPicksCollection = UICollectionView()
    
    
    func setupViewHierarchy(){
        
        self.addSubview(backgroundView)
        self.addSubview(primaryStackView)
        
        categoriesStackView.addArrangedSubview(categoriesLabel)
        //categoriesStackView.addArrangedSubview(categoriesCollection)
        categoriesStackView.addArrangedSubview(categoriesView)
        
        nearLabelButtonStackView.addArrangedSubview(nearToLabel)
        nearLabelButtonStackView.addArrangedSubview(seeMoreButton)
        
        nearToYouStackView.addArrangedSubview(nearLabelButtonStackView)
        nearToYouStackView.addArrangedSubview(nearToView)
        
        primaryStackView.addArrangedSubview(categoriesStackView)
        primaryStackView.addArrangedSubview(nearToYouStackView)
    

    }
    
    func setupViewAttributes() {
        self.backgroundColor = .red
        
        backgroundView.image = UIImage(named: "Background")
        backgroundView.contentMode = .scaleToFill
    
        primaryStackView.axis = .vertical
        primaryStackView.alignment = .fill
        primaryStackView.distribution = .fillEqually
        primaryStackView.spacing = 5
        
        categoriesStackView.axis = .vertical
        categoriesStackView.alignment = .leading
        categoriesStackView.distribution = .fillEqually
        categoriesStackView.spacing = 1
    
        nearLabelButtonStackView.axis = .horizontal
        nearLabelButtonStackView.alignment = .top
        nearLabelButtonStackView.distribution = .fillProportionally
        
        nearToYouStackView.axis = .vertical
        nearToYouStackView.alignment = .fill
        nearToYouStackView.distribution = .fillEqually
        nearToYouStackView.spacing = 1
    
        
        categoriesLabel.text = "O que deseja conhecer hoje?"
        categoriesView.backgroundColor = .black
        
        nearToLabel.text = "Perto de você"
        seeMoreButton.setTitle("veja mais", for: .normal)
        nearToView.backgroundColor = .orange
        
        
    }
    
    func setupConstraints(){
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: self.topAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: self.leadingAnchor)
        ])
        
        primaryStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            primaryStackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            primaryStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            primaryStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            primaryStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16)
        ])
        
        categoriesStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            categoriesStackView.topAnchor.constraint(equalTo: primaryStackView.topAnchor, constant: 0),
            categoriesStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            categoriesStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            categoriesLabel.heightAnchor.constraint(equalToConstant: 19),
            categoriesView.heightAnchor.constraint(equalToConstant: 100)

        ])

        nearLabelButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        
        nearToYouStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nearToYouStackView.topAnchor.constraint(equalTo: categoriesView.bottomAnchor, constant: 0),
            nearToYouStackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 0),
            nearToYouStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            nearToYouStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16)
        ])
//
        
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewHierarchy()
        setupViewAttributes()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
    }
}



// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct homeView_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            TabBarViewController().showPreview().previewDevice("iPhone SE (3rd generation)")
            TabBarViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeRight)
        }
    }
}
#endif
