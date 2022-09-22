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
    
    let descriptionLabelStack = UIStackView()
    
    
    
    let infoStackView = UIStackView()
    
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
        
        
        infoStackView.addArrangedSubview(descriptionImageView)
        infoStackView.addArrangedSubview(descriptionLabelStack)
        
        
        descriptionLabelStack.addArrangedSubview(descriptionLabel)
        
        
    }
    
    func setupViewAttributes() {
        self.backgroundColor = UIColor(named: K.systemBackground)
        
        //primaryContainer.backgroundColor = .purple
        
        primaryStackView.axis = .vertical
        primaryStackView.alignment = .fill
        primaryStackView.distribution = .fill
        primaryStackView.spacing = 30
        //primaryStackView.backgroundColor = .green
        
        infoStackView.axis = .vertical
        infoStackView.alignment = .fill
        infoStackView.distribution = .fill
        infoStackView.spacing = 30
        //infoStackView.backgroundColor = .yellow
        
        
        
        
        //descriptionImageView.backgroundColor = .red
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
        
        descriptionLabelStack.alignment = .top
        descriptionLabelStack.distribution = .fill
        
        
        
        
    }
    
    func setupConstraints(){
        
        primaryContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            primaryContainer.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 15),
            primaryContainer.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -50),
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
