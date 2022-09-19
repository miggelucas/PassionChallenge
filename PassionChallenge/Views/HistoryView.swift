//
//  HistoryView.swift
//  PassionChallenge
//
//  Created by João Pedro Monteiro on 19/09/22.
//

import UIKit

class HistoryView: UIView {

    
    let backgroundView = UIImageView()
    let descriptionImageView = UIImageView()
    let descriptionLabel = UILabel()
    
    let changeSugLabel = UILabel()
    let changeSugButton = UIButton()
    
    let infoStackView = UIStackView()
    let changeSugStackView = UIStackView()

    
    
    func setupViewHierarchy(){
        
        self.addSubview(infoStackView)
        self.addSubview(changeSugStackView)
        
        
        infoStackView.backgroundColor = .clear
        infoStackView.addArrangedSubview(descriptionImageView)
        infoStackView.addArrangedSubview(descriptionLabel)

        changeSugStackView.addArrangedSubview(changeSugLabel)
        changeSugStackView.addArrangedSubview(changeSugButton)
        
    }
    
    func setupViewAttributes() {

        backgroundView.image = UIImage(named: "systemBackground")
        backgroundView.contentMode = .scaleToFill
        
        infoStackView.axis = .horizontal
        infoStackView.alignment = .fill
        infoStackView.distribution = .fill
        infoStackView.spacing = 16

        changeSugStackView.axis = .vertical
        changeSugStackView.alignment = .fill
        changeSugStackView.distribution = .fillProportionally
        changeSugStackView.spacing = 12

        descriptionImageView.backgroundColor = .red
    
        
        descriptionLabel.text = "Local"  //ver como alinhar com o data source
        descriptionLabel.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        
        changeSugLabel.text = "Viu algum conteúdo incoerente?"  //ver como alinhar com o data source
        changeSugLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        
        changeSugButton.setTitle("sugerir alteração", for: .normal)
        
    }
    
    func setupConstraints(){
        
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: self.topAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
        
        descriptionImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            descriptionImageView.topAnchor.constraint(equalTo: self.topAnchor),
            descriptionImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            descriptionImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            descriptionImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            descriptionImageView.heightAnchor.constraint(equalToConstant: 205)
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
