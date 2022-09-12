//
//  HomeView.swift
//  PassionChallenge
//
//  Created by Lucas Migge de Barros on 12/09/22.
//

import Foundation
import UIKit


class HomeView : UIView {
    
    let backgroundView = UIImageView()
    
    
    
}



// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct homeView_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            TabBarViewController().showPreview().previewDevice("iPhone SE (3rd generation)")
            TabBarViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeRight)
        }
    }
}
#endif
