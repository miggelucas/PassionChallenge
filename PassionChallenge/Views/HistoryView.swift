//
//  HistoryView.swift
//  PassionChallenge
//
//  Created by João Pedro Monteiro on 19/09/22.
//

import UIKit

class HistoryView: UIView {
    
    let pageControl = UIPageControl()
    
    let descriptionImageView = UIImageView()
    let descriptionLabel = UILabel()
    
    //let descriptionLabelContainer = UIView()
    
    let changeSugLabel = UILabel()
    let changeSugButton = UIButton()
    
    let infoStackView = UIStackView()
    let changeSugStackView = UIStackView()
    
    let primaryContainer = UIView()
    let primaryStackView = UIStackView()
    
    func setupInfo(history : History){
        descriptionImageView.image = UIImage(named: history.imageURL)
        descriptionLabel.text = history.text
        
    }
    
    func setupViewHierarchy(){
        
        self.addSubview(primaryContainer)
        
        primaryContainer.addSubview(primaryStackView)
        
        
        primaryStackView.addArrangedSubview(infoStackView)
        //primaryStackView.addArrangedSubview(pageControl)
        primaryStackView.addArrangedSubview(changeSugStackView)
        
        infoStackView.addArrangedSubview(descriptionImageView)
        infoStackView.addArrangedSubview(descriptionLabel)
        
        //descriptionLabelContainer.addSubview(descriptionLabel)
        
        changeSugStackView.addArrangedSubview(changeSugLabel)
        changeSugStackView.addArrangedSubview(changeSugButton)
        
    }
    
    func setupViewAttributes() {
        self.backgroundColor = UIColor(named: K.systemBackground)
        
        //primaryContainer.backgroundColor = .purple
        
        primaryStackView.axis = .vertical
        primaryStackView.alignment = .fill
        primaryStackView.distribution = .fill
        primaryStackView.spacing = 15
        //primaryStackView.backgroundColor = .green
        
        infoStackView.axis = .vertical
        infoStackView.alignment = .fill
        infoStackView.distribution = .fill
        infoStackView.spacing = 5
        //infoStackView.backgroundColor = .yellow
        
        changeSugStackView.axis = .vertical
        changeSugStackView.alignment = .center
        changeSugStackView.distribution = .fillEqually
        changeSugStackView.spacing = 6
        changeSugStackView.backgroundColor = .cyan
        
        descriptionImageView.backgroundColor = .red
        //descriptionImageView.image = UIImage(named: "paçoalfandega")
        descriptionImageView.contentMode = .scaleToFill
        descriptionImageView.layer.masksToBounds = true
        descriptionImageView.layer.cornerRadius = 10
        
        descriptionLabel.text = "Local"  //ver como alinhar com o data source
        descriptionLabel.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        descriptionLabel.textColor = UIColor(named: K.systemLightGray)
        descriptionLabel.textAlignment = .justified
        descriptionLabel.numberOfLines = 0
        descriptionLabel.adjustsFontSizeToFitWidth = true
        
        
        
        changeSugLabel.text = "Viu algum conteúdo incoerente?"  //ver como alinhar com o data source
        changeSugLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        changeSugLabel.backgroundColor = .gray
        
        
        changeSugButton.setTitle("sugerir alteração", for: .normal)
        changeSugButton.setTitleColor(.red, for: .normal)
        
        
        
    }
    
    func setupConstraints(){
        
        primaryContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            primaryContainer.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 15),
            primaryContainer.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -15),
            primaryContainer.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant:  15),
            primaryContainer.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant:  -15),
        ])
        
        
        primaryStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            primaryStackView.topAnchor.constraint(equalTo: primaryContainer.topAnchor),
            primaryStackView.bottomAnchor.constraint(equalTo: primaryContainer.bottomAnchor),
            primaryStackView.leadingAnchor.constraint(equalTo: primaryContainer.leadingAnchor),
            primaryStackView.trailingAnchor.constraint(equalTo: primaryContainer.trailingAnchor)
        ])
        
        descriptionImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            //descriptionImageView.topAnchor.constraint(equalTo: infoStackView.topAnchor),
//            descriptionImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            //descriptionImageView.leadingAnchor.constraint(equalTo: infoStackView.leadingAnchor),
            //descriptionImageView.trailingAnchor.constraint(equalTo: infoStackView.trailingAnchor),
            descriptionImageView.heightAnchor.constraint(equalToConstant: 205)
        ])
        
        changeSugStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            changeSugStackView.bottomAnchor.constraint(equalTo: primaryContainer.bottomAnchor, constant: -30),
            changeSugStackView.heightAnchor.constraint(equalToConstant: 48)
        ])

        
        
    }
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
    
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
struct HistoryView_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            HistoryView().showPreview().previewDevice("iPhone SE (3rd generation)")
            HistoryView().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeRight)
        }
    }
}
#endif
