//
//  SeeMoreView.swift
//  PassionChallenge
//
//  Created by João Pedro Monteiro on 14/09/22.
//

import UIKit

class SeeMoreView: UIView {
    
    
    // inicializando componentes
    let backgroundView = UIImageView()
    
    func setupViewAttributes() {
        self.backgroundColor = .blue
        
        backgroundView.image = UIImage(named: "Background")
        backgroundView.contentMode = .scaleToFill
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        //SeeMoreTableViewCell()
    }
    
    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
    }
}

    


    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct seeMoreView_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            HomeView().showPreview().previewDevice("iPhone SE (3rd generation)")
            HomeView().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeRight)
        }
    }
}
#endif

