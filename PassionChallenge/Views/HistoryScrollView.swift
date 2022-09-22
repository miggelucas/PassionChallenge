//
//  HistoryScrollView.swift
//  PassionChallenge
//
//  Created by Lucas Migge de Barros on 22/09/22.
//

import UIKit

class HistoryScrollView: UIScrollView {
    
    let stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 16
        return
    }()

}
