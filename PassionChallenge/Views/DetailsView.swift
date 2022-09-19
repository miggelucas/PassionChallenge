//
//  DetailsView.swift
//  PassionChallenge
//
//  Created by Lucas Migge de Barros on 15/09/22.
//

import UIKit

class DetailsView: UIView {
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    let imageView = UIImageView()
    let nameLabel = UILabel()
    let saveButton = UIButton()
    let tagsLabel = UILabel()
    let adressLabel = UILabel()
    let addToCalenderButton = UIButton()
    
    let knowMoreLabel = UILabel()
    let arrowImage = UIImageView()
    let historyLabel = UILabel()
    
    let buttonContainer = UIView()
    
    let primaryStackView = UIStackView()
    let knowMoreStackView = UIStackView()
    let nameSaveStackView = UIStackView()
    
    let infosStackView = UIStackView()
    let historyStackView = UIStackView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewHierarchy()
        setupViewAttributes()
        setupConstraints()
//        setupAdditionalConfiguration()
    }
    
    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupViewHierarchy() {
        backgroundColor = UIColor(named: K.systemLightGray)
        
        nameSaveStackView.addArrangedSubview(nameLabel)
        nameSaveStackView.addArrangedSubview(saveButton)
        
        buttonContainer.addSubview(addToCalenderButton)
        
        infosStackView.addArrangedSubview(nameSaveStackView)
        infosStackView.addArrangedSubview(tagsLabel)
        infosStackView.addArrangedSubview(adressLabel)
        infosStackView.addArrangedSubview(buttonContainer)
        
        knowMoreStackView.addArrangedSubview(knowMoreLabel)
        knowMoreStackView.addArrangedSubview(arrowImage)
        
        historyStackView.addArrangedSubview(knowMoreStackView)
        historyStackView.addArrangedSubview(historyLabel)
        
        
        primaryStackView.addArrangedSubview(infosStackView)
        primaryStackView.addArrangedSubview(historyStackView)
        
        addSubview(imageView)
        addSubview(primaryStackView)
        
    }
    
    func setupViewAttributes() {
        backgroundColor = UIColor(named: K.systemBackground)
        
        //nameLabel.text = "Nome do lugar"
        nameLabel.font = UIFont.systemFont(ofSize: 26, weight: .bold)
        
        saveButton.setImage(UIImage(named: "bookmark"), for: .normal)
        saveButton.backgroundColor = .green
        
        //adressLabel.text = "Endereço do lugar"
        adressLabel.font = UIFont.systemFont(ofSize: 14)
        tagsLabel.text = "tags do lugar"
        
        imageView.backgroundColor = .blue
        imageView.contentMode = .scaleToFill
        
        addToCalenderButton.setTitle("Adicionar ao Calendário", for: .normal)
        addToCalenderButton.backgroundColor = .orange
        addToCalenderButton.layer.masksToBounds = true
        addToCalenderButton.layer.cornerRadius = 10
        
        buttonContainer.backgroundColor = .green
        
        knowMoreLabel.text = "Conheça a história"
        knowMoreLabel.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        knowMoreLabel.textColor = UIColor(named: K.systemBackground)
        
        arrowImage.image = UIImage(named: "chevron.right")
        historyLabel.text = "blansandjasndjkasndjkshqwhdjkahdjkhjqwhdbahdwqwhdahsdhqwdhasdasdqwdasdq"
        historyLabel.numberOfLines = 0
        //historyLabel.adjustsFontForContentSizeCategory = true
        
        
        nameSaveStackView.axis = .horizontal
        nameSaveStackView.distribution = .fillProportionally
        nameSaveStackView.alignment = .fill
        
        
        infosStackView.axis = .vertical
        infosStackView.alignment = .fill
        infosStackView.distribution = .fillProportionally
        infosStackView.spacing = 10
        infosStackView.backgroundColor = .gray

        knowMoreStackView.axis = .horizontal
        knowMoreStackView.alignment = .fill
        knowMoreStackView.distribution = .fill
        knowMoreStackView.spacing = 8
        
        historyStackView.axis = .vertical
        historyStackView.alignment = .fill
        historyStackView.distribution = .fillProportionally
        historyStackView.spacing = 8
        historyStackView.backgroundColor = .gray
        
        
        primaryStackView.axis = .vertical
        primaryStackView.alignment = .fill
        primaryStackView.distribution = .fillEqually
        primaryStackView.spacing = 25
        primaryStackView.backgroundColor = UIColor(named: K.systemLightGray)
    }
    
    
    func setupConstraints(){
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: primaryStackView.topAnchor),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 214)
        ])
        
        primaryStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            primaryStackView.topAnchor.constraint(equalTo: imageView.bottomAnchor),
            primaryStackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -25),
            primaryStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            primaryStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
        
        infosStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            infosStackView.topAnchor.constraint(equalTo: primaryStackView.topAnchor, constant: 25),
            infosStackView.leadingAnchor.constraint(equalTo: primaryStackView.leadingAnchor, constant: 16),
            infosStackView.trailingAnchor.constraint(equalTo: primaryStackView.trailingAnchor, constant: -16)
            
        ])
        
        addToCalenderButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            addToCalenderButton.topAnchor.constraint(equalTo: buttonContainer.topAnchor),
            addToCalenderButton.bottomAnchor.constraint(equalTo: buttonContainer.bottomAnchor),
            addToCalenderButton.trailingAnchor.constraint(equalTo: buttonContainer.trailingAnchor, constant: -20-16),
            addToCalenderButton.leadingAnchor.constraint(equalTo: buttonContainer.leadingAnchor, constant: 20)
        ])
        
        buttonContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonContainer.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        historyStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            historyStackView.leadingAnchor.constraint(equalTo: primaryStackView.leadingAnchor, constant: 16),
            historyStackView.trailingAnchor.constraint(equalTo: primaryStackView.trailingAnchor, constant: -16),

            
        ])
        
//        saveButton.translatesAutoresizingMaskIntoConstraints = false
        

        
    }
   
    
    
 

}

// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct DetailsView_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            DetailsView().showPreview().previewDevice("iPhone SE (3rd generation)")
            DetailsView().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeRight)
        }
    }
}
#endif
