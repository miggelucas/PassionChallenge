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
    let savedButton = UIButton()
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
    
    
    func setupViewHierarchy() {
        backgroundColor = UIColor(named: K.systemLightGray)
        
        nameSaveStackView.addArrangedSubview(nameLabel)
        nameSaveStackView.addArrangedSubview(savedButton)
        
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
        
    }
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewHierarchy()
        setupViewAttributes()
//        setupConstraints()
//        setupAdditionalConfiguration()
    }
    
    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
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
