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
    var categoriesCollection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 81, height: 91)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 4, bottom: 0, right: 4)
        layout.scrollDirection = .vertical
        
        let collection =  UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.showsHorizontalScrollIndicator = false
        collection.register(CategoriesCollectionViewCell.self, forCellWithReuseIdentifier: CategoriesCollectionViewCell.identifier)
        collection.backgroundColor = .brown
        return collection
    }()
    
    let nearToLabel = UILabel()
    let seeMoreButton = UIButton()
    let nearToView = UIView()
    
    let nearLabelButtonStackView = UIStackView()
    let nearToYouStackView = UIStackView()
    
    let primaryStackView = UIStackView()
    
    let categoriesStackView = UIStackView()
    

        
    
    //public var nearToYouCollection : UICollectionView
    
//    let nearToYouCollection = UICollectionView()
//    var nearToYoutubeCollection: UICollectionView = {
//        let collection =  UICollectionView()
//        collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
//        return collection
//    }()
    
//    let bestPicksCollection = UICollectionView()
    
    
    func setupViewHierarchy(){
        
        self.addSubview(backgroundView)
        self.addSubview(primaryStackView)
        
        primaryStackView.backgroundColor = .yellow

        categoriesStackView.addArrangedSubview(categoriesLabel)
        categoriesStackView.addArrangedSubview(categoriesCollection)


        nearLabelButtonStackView.addArrangedSubview(nearToLabel)
        nearLabelButtonStackView.addArrangedSubview(seeMoreButton)
//
        nearToYouStackView.addArrangedSubview(nearLabelButtonStackView)
        nearToYouStackView.addArrangedSubview(nearToView)

        primaryStackView.addArrangedSubview(categoriesStackView)
        primaryStackView.addArrangedSubview(nearToYouStackView)

    }
    
    func setupViewAttributes() {
        self.backgroundColor = .red
        
        backgroundView.image = UIImage(named: "Background")
        backgroundView.contentMode = .scaleToFill

        categoriesLabel.backgroundColor = .blue
        
        primaryStackView.axis = .vertical
        primaryStackView.alignment = .fill
        primaryStackView.distribution = .fillProportionally
        primaryStackView.spacing = 5

        categoriesStackView.axis = .vertical
        categoriesStackView.alignment = .fill
        categoriesStackView.distribution = .fill
        categoriesStackView.spacing = 10


        nearLabelButtonStackView.axis = .horizontal
        nearLabelButtonStackView.alignment = .fill
        nearLabelButtonStackView.distribution = .fill
//
        nearToYouStackView.axis = .vertical
        nearToYouStackView.alignment = .fill
        nearToYouStackView.distribution = .fill
        nearToYouStackView.spacing = 1


        categoriesLabel.text = "O que deseja conhecer hoje?"

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
            primaryStackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            primaryStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            primaryStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16)
        ])

        categoriesStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            categoriesStackView.topAnchor.constraint(equalTo: primaryStackView.topAnchor, constant: 0),
            categoriesStackView.trailingAnchor.constraint(equalTo: primaryStackView.trailingAnchor),
            categoriesStackView.leadingAnchor.constraint(equalTo: primaryStackView.leadingAnchor),


        ])
        
        categoriesCollection.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            categoriesCollection.leadingAnchor.constraint(equalTo: categoriesStackView.leadingAnchor),
            categoriesCollection.trailingAnchor.constraint(equalTo: categoriesStackView.trailingAnchor),
            //categoriesCollection.topAnchor.constraint(equalTo: categoriesLabel.topAnchor),
            categoriesCollection.bottomAnchor.constraint(equalTo: categoriesStackView.bottomAnchor)
        ])

//        nearLabelButtonStackView.translatesAutoresizingMaskIntoConstraints = false


//        nearToYouStackView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            nearToYouStackView.topAnchor.constraint(equalTo: categoriesView.bottomAnchor, constant: 0),
//            nearToYouStackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 0),
//            nearToYouStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
//            nearToYouStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16)
//        ])

        
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
            HomeView().showPreview().previewDevice("iPhone SE (3rd generation)")
            HomeView().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeRight)
        }
    }
}
#endif
