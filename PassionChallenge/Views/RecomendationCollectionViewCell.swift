//
//  RecomedationCollectionViewCell.swift
//  PassionChallenge
//
//  Created by Lucas Migge de Barros on 14/09/22.
//

import UIKit

class RecomendationCollectionViewCell: UICollectionViewCell {
    static let identifier : String = "recomendationCell"
    
    
    // iniciando componetes
    let imageView = UIImageView()
    let nameLabel = UILabel()
    let adressLabel = UILabel()
    
    let labelsStackView = UIStackView()
    //let primartStackView = UIStackView()
    
    // definindo hierarquia de view
    
    func setupViewHierarchy(){
        self.addSubview(imageView)
        self.addSubview(labelsStackView)

        labelsStackView.addArrangedSubview(nameLabel)
        labelsStackView.addArrangedSubview(adressLabel)
        
    }
    
    func setupViewAttributes(){
        labelsStackView.axis = .vertical
        labelsStackView.alignment = .fill
        labelsStackView.distribution = .fill
        labelsStackView.spacing = 2

        nameLabel.font = nameLabel.font.withSize(14)
        nameLabel.textColor = .white

        adressLabel.font = adressLabel.font.withSize(14)
        adressLabel.textColor = .white
        
        imageView.contentMode = .scaleToFill
        //backgroundColor = .blue
    }
    
    
    func setupConstraints(){
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: self.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            
        ])
        
        labelsStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelsStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 6),
            labelsStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 6),
            labelsStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 6)
        ])
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
    

    
    


