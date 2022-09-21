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
    let backgroundImageView = UIImageView()
    
    let imageView = UIImageView()
    let nameLabel = UILabel()
    let saveButton = UIButton(type: .custom)
    let tagsLabel = UILabel()
    let adressLabel = UILabel()
    let addToCalenderButton = UIButton()
    
    let knowMoreLabel = UILabel()
    let arrowImage = UIImageView()
    let historyLabel = UILabel()
    
    let buttonCallendarContainer = UIView()
    let historyButton = UIButton()
    
    let knowMoreStackView = UIStackView()
    let nameSaveStackView = UIStackView()
    
    let infosStackView = UIStackView()
    let historyStackView = UIStackView()
    let historyContainer = UIView()
    
    
    let primaryStackView = UIStackView()
    let stackContainer = UIView()
    
    weak var delegate : DetailViewDelegate?
    
    
    func draw(place : Place){
        imageView.image = UIImage(named: place.imageURL)
        nameLabel.text = place.name
        //tagsLabel.text =
        adressLabel.text = place.adress
        historyLabel.text = place.historyArray[0].text
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewHierarchy()
        setupViewAttributes()
        setupConstraints()
        setupAdditionalConfiguration()
        //
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupViewHierarchy() {
        
        nameSaveStackView.addArrangedSubview(nameLabel)
        nameSaveStackView.addArrangedSubview(saveButton)
        
        buttonCallendarContainer.addSubview(addToCalenderButton)
        
        infosStackView.addArrangedSubview(nameSaveStackView)
        infosStackView.addArrangedSubview(tagsLabel)
        infosStackView.addArrangedSubview(adressLabel)
        infosStackView.addArrangedSubview(buttonCallendarContainer)
        
        knowMoreStackView.addArrangedSubview(knowMoreLabel)
        knowMoreStackView.addArrangedSubview(arrowImage)
        
        historyStackView.addArrangedSubview(knowMoreStackView)
        historyStackView.addArrangedSubview(historyLabel)
        
        historyContainer.addSubview(historyStackView)
        historyContainer.addSubview(historyButton)
        
        primaryStackView.addArrangedSubview(infosStackView)
        primaryStackView.addArrangedSubview(historyContainer)
        
        stackContainer.addSubview(primaryStackView)
        
        addSubview(backgroundImageView)
        addSubview(imageView)
        addSubview(stackContainer)
        
    }
    
    func setupViewAttributes() {
        backgroundImageView.image = UIImage(named: "Background")
        backgroundImageView.contentMode = .scaleToFill
        
        nameLabel.text = "Nome do lugar"
        nameLabel.font = UIFont.systemFont(ofSize: 26, weight: .bold)
        
        saveButton.setImage(UIImage(named: "bookmark"), for: .normal)
        saveButton.tintColor = .black
        saveButton.backgroundColor = .green
        
        adressLabel.text = "Endereço do lugar"
        adressLabel.font = UIFont.systemFont(ofSize: 14)
        tagsLabel.text = "tags do lugar"
        
        imageView.backgroundColor = .blue
        imageView.contentMode = .scaleToFill
        
        addToCalenderButton.setTitle("Adicionar ao Calendário", for: .normal)
        addToCalenderButton.backgroundColor = .orange
        addToCalenderButton.layer.masksToBounds = true
        addToCalenderButton.layer.cornerRadius = 10
        
        buttonCallendarContainer.backgroundColor = .green
        historyContainer.backgroundColor = .clear
        //historyButton.backgroundColor = .green
        
        knowMoreLabel.text = "Conheça a história"
        knowMoreLabel.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        knowMoreLabel.textColor = UIColor(named: K.systemBackground)
        
        arrowImage.image = UIImage(named: "chevron.right")
        historyLabel.text = "blansandjasndjkasndjkshqwhdjkahdjkhjqwhdbahdwqwhdahsdhqwdhasdasdqwdasdq"
        historyLabel.numberOfLines = 0
        historyLabel.adjustsFontForContentSizeCategory = true
        
        nameSaveStackView.axis = .horizontal
        nameSaveStackView.distribution = .fillProportionally
        nameSaveStackView.alignment = .fill
        
        
        infosStackView.axis = .vertical
        infosStackView.alignment = .fill
        infosStackView.distribution = .fill
        infosStackView.spacing = 12
        infosStackView.backgroundColor = .gray
        
        knowMoreStackView.axis = .horizontal
        knowMoreStackView.alignment = .fill
        knowMoreStackView.distribution = .fill
        knowMoreStackView.spacing = 8
        
        historyStackView.axis = .vertical
        historyStackView.alignment = .fill
        historyStackView.distribution = .fill
        historyStackView.spacing = 8
        historyStackView.backgroundColor = .purple
        
        
        primaryStackView.axis = .vertical
        primaryStackView.alignment = .fill
        primaryStackView.distribution = .fillEqually
        primaryStackView.spacing = 25
        primaryStackView.backgroundColor = UIColor(named: K.systemLightGray)
        
        stackContainer.backgroundColor = .cyan
    }
    
    
    func setupConstraints(){
        
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: self.topAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor)
        ])
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: stackContainer.topAnchor),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 214)
        ])
        
        stackContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            stackContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            stackContainer.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 0)
        ])
        
        
        primaryStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            primaryStackView.topAnchor.constraint(equalTo: stackContainer.topAnchor, constant: 25),
            primaryStackView.bottomAnchor.constraint(equalTo: stackContainer.bottomAnchor, constant: -16),
            primaryStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            primaryStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25)
        ])
        
        
        addToCalenderButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            addToCalenderButton.topAnchor.constraint(equalTo: buttonCallendarContainer.topAnchor),
            addToCalenderButton.bottomAnchor.constraint(equalTo: buttonCallendarContainer.bottomAnchor),
            addToCalenderButton.trailingAnchor.constraint(equalTo: buttonCallendarContainer.trailingAnchor, constant: -20),
            addToCalenderButton.leadingAnchor.constraint(equalTo: buttonCallendarContainer.leadingAnchor, constant: 20),
            addToCalenderButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        knowMoreStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            knowMoreStackView.heightAnchor.constraint(equalToConstant: 24)
        ])
        
        historyStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            historyStackView.topAnchor.constraint(equalTo: historyContainer.topAnchor),
            historyStackView.bottomAnchor.constraint(equalTo: historyContainer.bottomAnchor),
            historyStackView.leadingAnchor.constraint(equalTo: historyContainer.leadingAnchor),
            historyStackView.trailingAnchor.constraint(equalTo: historyContainer.trailingAnchor)
        ])
        
        historyButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            historyButton.topAnchor.constraint(equalTo: historyStackView.topAnchor),
            historyButton.bottomAnchor.constraint(equalTo: historyStackView.bottomAnchor),
            historyButton.leadingAnchor.constraint(equalTo: historyStackView.leadingAnchor),
            historyButton.trailingAnchor.constraint(equalTo: historyStackView.trailingAnchor)
        ])
        
    }
    
    func setupAdditionalConfiguration(){
        historyButton.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
    }
    
    
    @objc private func tappedButton(sender: UIButton) {
        print("Usuário clicou no botão")
        //delegate?.pushNextViewController()
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
