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
        collection.backgroundColor = .clear 
        return collection
    }()
    
    let recomendationLabel = UILabel()
    let seeMoreButton = UIButton()
    let recomendationView = UIView()
    
    let recomendationLabelButtonStackView = UIStackView()
    let recomendationStackView = UIStackView()
    
    let primaryStackView = UIStackView()
    
    let categoriesStackView = UIStackView()
    

        
    
    //public var nearToYouCollection : UICollectionView
    
   
    var recomendationCollection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 336, height: 209)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 4, bottom: 0, right: 4)
        layout.scrollDirection = .horizontal
        
        let collection =  UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.showsHorizontalScrollIndicator = false
        collection.register(RecomendationCollectionViewCell.self, forCellWithReuseIdentifier:
RecomendationCollectionViewCell.identifier)
        collection.backgroundColor = .clear
        return collection
    }()
    
  //  let bestPicksCollection = UICollectionView()
    
    
    func setupViewHierarchy(){
        
        self.addSubview(backgroundView)
        self.addSubview(primaryStackView)
        
        //primaryStackView.backgroundColor = .yellow

        categoriesStackView.addArrangedSubview(categoriesLabel)
        categoriesStackView.addArrangedSubview(categoriesCollection)


        recomendationLabelButtonStackView.addArrangedSubview(recomendationLabel)
        recomendationLabelButtonStackView.addArrangedSubview(seeMoreButton)
//
        recomendationStackView.addArrangedSubview(recomendationLabelButtonStackView)
        recomendationStackView.addArrangedSubview(recomendationCollection)

        primaryStackView.addArrangedSubview(categoriesStackView)
        primaryStackView.addArrangedSubview(recomendationStackView)

    }
    
    func setupViewAttributes() {
        self.backgroundColor = .red
        
        backgroundView.image = UIImage(named: "Background")
        backgroundView.contentMode = .scaleToFill

        categoriesLabel.backgroundColor = .blue
        
        primaryStackView.axis = .vertical
        primaryStackView.alignment = .fill
        primaryStackView.distribution = .fillProportionally
        primaryStackView.spacing = 10

        categoriesStackView.axis = .vertical
        categoriesStackView.alignment = .fill
        categoriesStackView.distribution = .fill
        categoriesStackView.spacing = 10


        recomendationLabelButtonStackView.axis = .horizontal
        recomendationLabelButtonStackView.alignment = .fill
        recomendationLabelButtonStackView.distribution = .fill
//
        recomendationStackView.axis = .vertical
        recomendationStackView.alignment = .fill
        recomendationStackView.distribution = .fill
        recomendationStackView.spacing = 10


        categoriesLabel.text = "O que deseja conhecer hoje?"

        recomendationLabel.text = "Perto de você"
        recomendationLabel.backgroundColor = .red
        seeMoreButton.setTitle("veja mais", for: .normal)
        seeMoreButton.setTitleColor(.orange, for: .normal)
        seeMoreButton.backgroundColor = .gray
        recomendationView.backgroundColor = .orange
        
        
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
