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
    //let saveButton = UIButton(type: .custom)
    let saveButton = UIImageView()
    let tagsLabel = UILabel()
    let adressLabel = UILabel()
    let addToCalenderButton = UIButton()
    
    let saveButtonStack = UIStackView()
    
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
        tagsLabel.text = formatTagsLabel(tags: place.tagCategorie)
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
        
        saveButtonStack.addArrangedSubview(saveButton)
        
        nameSaveStackView.addArrangedSubview(nameLabel)
        nameSaveStackView.addArrangedSubview(saveButtonStack)
        
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
    
    // esse cara n??o funciona
//    func formatAddtoCalendarString(forString : String) -> String {
//        let label = UILabel()
//        let imageAttachment = NSTextAttachment()
//        // If you want to enable Color in the SF Symbols.
//        imageAttachment.image = UIImage(systemName: "bookmark")!.withTintColor(UIColor(named: K.systemBackground)!)
//
//        let fullString = NSMutableAttributedString(string: forString)
//        fullString.append(NSAttributedString(attachment: imageAttachment))
//        label.attributedText = fullString
//        print(label.text!)
//        return label.text!
//
//    }
    
    func setupViewAttributes() {
        backgroundImageView.image = UIImage(named: "Background")
        backgroundImageView.contentMode = .scaleToFill
        
        //saveButtonStack.distribution =
        
        nameLabel.text = "Nome do lugar"
        nameLabel.font = UIFont.systemFont(ofSize: 26, weight: .bold)
        
//        saveButton.setImage(UIImage(systemName: "bookmark"), for: .normal)
//        saveButton.imageView?.contentMode = .scaleAspectFill
        saveButton.image = UIImage(systemName: "bookmark")
        saveButton.contentMode = .scaleAspectFit
        saveButton.tintColor = .clear
        //saveButton.tintColor = UIColor(named: K.systemBackground)
        //saveButton.backgroundColor = .green
        
        adressLabel.text = "Endere??o do lugar"
        adressLabel.font = UIFont.systemFont(ofSize: 14)
        tagsLabel.text = "tags do lugar"
        tagsLabel.textColor = UIColor(named: K.systemBackground)
        
        imageView.backgroundColor = UIColor(named: K.systemLightGray)
        imageView.contentMode = .scaleToFill
        
        
        addToCalenderButton.setTitle("Adicionar ao Calend??rio", for: .normal)
        addToCalenderButton.setTitleColor(UIColor(named: K.systemBackground), for: .normal)
        
        //addToCalenderButton.titleLabel?.text = "Adicionar ao Calend??rio"
        //addToCalenderButton.setImage(UIImage(systemName: "calendar.badge.plus")?.withTintColor(UIColor(named: K.systemBackground)!), for: .normal)
        //addToCalenderButton.contentMode = .center
        
        addToCalenderButton.backgroundColor = .orange
        addToCalenderButton.layer.masksToBounds = true
        addToCalenderButton.layer.cornerRadius = 10
        
        //buttonCallendarContainer.backgroundColor = .green
        historyContainer.backgroundColor = .clear
        //historyButton.backgroundColor = .green
        
        knowMoreLabel.text = "Conhe??a a hist??ria"
        knowMoreLabel.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        knowMoreLabel.textColor = UIColor(named: K.systemBackground)
        
        arrowImage.image = UIImage(systemName: "chevron.right")
        arrowImage.tintColor = UIColor(named: K.systemBackground)
        //arrowImage.backgroundColor = .green
        historyLabel.text = "placeholder para historyLabel"
        historyLabel.numberOfLines = 0
        historyLabel.textAlignment = .justified
        historyLabel.adjustsFontForContentSizeCategory = false
        
        nameSaveStackView.axis = .horizontal
        nameSaveStackView.distribution = .fill
        nameSaveStackView.alignment = .fill
        
        
        infosStackView.axis = .vertical
        infosStackView.alignment = .fill
        infosStackView.distribution = .fill
        infosStackView.spacing = 12
        //infosStackView.backgroundColor = .gray
        
        knowMoreStackView.axis = .horizontal
        knowMoreStackView.alignment = .fill
        knowMoreStackView.distribution = .fill
        knowMoreStackView.spacing = 2
        
        historyStackView.axis = .vertical
        historyStackView.alignment = .fill
        historyStackView.distribution = .fill
        historyStackView.spacing = 2
        //historyStackView.backgroundColor = .purple
        
        
        primaryStackView.axis = .vertical
        primaryStackView.alignment = .fill
        primaryStackView.distribution = .fill
        primaryStackView.spacing = 30
        //primaryStackView.backgroundColor = UIColor(named: K.systemLightGray)
        
        stackContainer.backgroundColor = UIColor(named: K.systemLightGray)
        stackContainer.layer.masksToBounds = true
        stackContainer.layer.cornerRadius = 15
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
            imageView.bottomAnchor.constraint(equalTo: stackContainer.topAnchor, constant: 8),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 214)
        ])
        
        stackContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            stackContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            stackContainer.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
        ])
        
        
        primaryStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            primaryStackView.topAnchor.constraint(equalTo: stackContainer.topAnchor, constant: 25),
            primaryStackView.bottomAnchor.constraint(equalTo: stackContainer.bottomAnchor, constant: -16),
            primaryStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            primaryStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25)
        ])
        
        infosStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            infosStackView.heightAnchor.constraint(equalToConstant: 160)
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
        
//        nameSaveStackView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            nameSaveStackView.heightAnchor.constraint(equalToConstant: 50)
//        ])
        
//        saveButton.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            saveButton.heightAnchor.constraint(equalToConstant: 60),
//            saveButton.widthAnchor.constraint(equalToConstant: 60)
//        ])
        
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
        historyButton.addTarget(self, action: #selector(tappedHistoryButton), for: .touchUpInside)
        addToCalenderButton.addTarget(self, action: #selector(tappedCalendarButton), for: .touchUpInside)
    }
    
    
    @objc private func tappedHistoryButton(sender: UIButton) {
        print("Usu??rio clicou no bot??o")
        delegate?.pushNextViewController()
    }
    
    @objc private func tappedCalendarButton(sender: UIButton) {
        print("Usu??rio clicou no bot??o")
        delegate?.callCalendar()
    }
    
    private func formatTagsLabel(tags : [String]) -> String {
        var customString : String = ""
        
        for tag in tags {
            if customString == "" {
                customString = tag
            } else {
                customString = customString + " ??? " + tag
            }
        }
        
        return customString
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
