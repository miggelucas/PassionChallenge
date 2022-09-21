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
    
    let primartStackView = UIStackView()
    let labelsStackView = UIStackView()
    
    
    let labelsContainer = UIView()
    
    // function to be called in dequeueReusableCell
    func draw(place : Place){
        self.imageView.image = UIImage(named: place.imageURL)
        self.nameLabel.text = place.name
        self.adressLabel.text = place.adress
        
    }
    
    // definindo hierarquia de view
    func setupViewHierarchy(){
        self.addSubview(primartStackView)
        
        primartStackView.addArrangedSubview(imageView)
        primartStackView.addArrangedSubview(labelsContainer)
        
        labelsContainer.addSubview(labelsStackView)
        
        labelsStackView.addArrangedSubview(nameLabel)
        labelsStackView.addArrangedSubview(adressLabel)

    }
    
    func setupViewAttributes(){
        
        // primary setup
        primartStackView.axis = .vertical
        primartStackView.alignment = .fill
        primartStackView.distribution = .fillProportionally
        primartStackView.spacing = 0
        
        
        // labes setup
        labelsStackView.axis = .vertical
        labelsStackView.alignment = .fill
        labelsStackView.distribution = .fillProportionally
        labelsStackView.spacing = 2
        //labelsStackView.backgroundColor = .red
    

        nameLabel.font = UIFont.boldSystemFont(ofSize: 16)
    
        nameLabel.textColor = UIColor(named: K.systemBackground)

        adressLabel.font = UIFont.boldSystemFont(ofSize: 10)
        adressLabel.textColor = UIColor(named: K.systemBackground)
        
        imageView.contentMode = .scaleToFill
        labelsContainer.backgroundColor = UIColor(named: K.systemLightGray)
    }
    
    
    func setupConstraints(){
        primartStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            primartStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            primartStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            primartStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            primartStackView.topAnchor.constraint(equalTo: self.topAnchor)
        ])
        
        labelsStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelsStackView.topAnchor.constraint(equalTo: labelsContainer.topAnchor, constant: 6),
            labelsStackView.bottomAnchor.constraint(equalTo: labelsContainer.bottomAnchor, constant: -6),
            labelsStackView.trailingAnchor.constraint(equalTo: labelsContainer.trailingAnchor, constant: -6),
            labelsStackView.leadingAnchor.constraint(equalTo: labelsContainer.leadingAnchor, constant: 6)
        ])
        
        labelsContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelsContainer.heightAnchor.constraint(equalToConstant: 47)
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
    

    
    


