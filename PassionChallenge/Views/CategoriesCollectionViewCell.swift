//
//  CategoriesCollectionViewCell.swift
//  PassionChallenge
//
//  Created by Lucas Migge de Barros on 13/09/22.
//

import UIKit

class CategoriesCollectionViewCell: UICollectionViewCell {
    static let identifier : String = "categoriesCell"
    
    // iniciando componentes
    let imageView = UIImageView()
    let label = UILabel()
    let stackView = UIStackView()
    
    // function to be called in dequeueReusableCell
    func draw(categorie : Categorie){
        self.imageView.image = UIImage(named: categorie.imageString)
        self.label.text = categorie.name
    }
    
    // definindo heirarquia de view
    func setupViewHierarchy() {
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(label)
        
        self.addSubview(stackView)
        //        stackView.backgroundColor = .yellow
        //        label.backgroundColor = .purple
        
    }
    
    // setando componentes
    func setupViewAttributes(){
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillProportionally
        stackView.spacing = 2
        label.font = label.font.withSize(14)
        label.textColor = .white
    }
    
    
    func setupConstraints(){
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            stackView.topAnchor.constraint(equalTo: self.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
        
        //imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            //imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            //imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            //imageView.heightAnchor.constraint(equalToConstant: 74),
            //imageView.widthAnchor.constraint(equalToConstant: 74)
        ])
        
        //        label.translatesAutoresizingMaskIntoConstraints = false
        //        NSLayoutConstraint.activate([
        //            label.bottomAnchor.constraint(equalTo: stackView.bottomAnchor),
        //            label.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
        //            label.trailingAnchor.constraint(equalTo: stackView.trailingAnchor)
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


//// MARK: - Preview
//#if DEBUG
//import SwiftUI
//
//@available(iOS 13, *)
//struct CategoriesCollectionViewCell_Preview: PreviewProvider {
//    static var previews: some View {
//        // view controller using programmatic UI
//        Group {
//            CategoriesCollectionViewCell().showPreview().previewDevice("iPhone SE (3rd generation)")
//            CategoriesCollectionViewCell().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeRight)
//        }
//    }
//}
//#endif
