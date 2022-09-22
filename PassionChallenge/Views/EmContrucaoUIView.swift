//
//  EmContrucaoUIView.swift
//  PassionChallenge
//
//  Created by dmm on 20/09/22.
//

import UIKit

class EmContrucaoUIView: UIView {
    
   let backgroundViewGradient = UIImageView()
    let cangaceiroView = UIImageView()
    let construcaoLabelArea = UILabel()
    let construcaoLabelEstamos = UILabel()
    let construcaoLabelSmile = UILabel()
    let stackView = UIStackView()
    
    
    func setupViewHierarchy(){
        self.addSubview(backgroundViewGradient)
        self.addSubview(stackView)
        
        
        stackView.addArrangedSubview(construcaoLabelArea)
        stackView.addArrangedSubview(cangaceiroView)
        stackView.addArrangedSubview(construcaoLabelEstamos)
        stackView.addArrangedSubview(construcaoLabelSmile)
        // view recebe background image
        // recebe a stackview
        
        // stack recebe cada elemento
    }
    
    
    
    func setupViewAttributes(){
        construcaoLabelArea.text = "Área em construção"
        construcaoLabelArea.textColor = UIColor(named: K.systemBackground)
        construcaoLabelArea.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        construcaoLabelArea.textAlignment = .center
        
        construcaoLabelEstamos.text = "Estamos trabalhando para que esta funcionalidade esteja disponível em breve"
        construcaoLabelEstamos.numberOfLines = 0
        construcaoLabelEstamos.textColor = UIColor(named: K.systemBackground)
        construcaoLabelEstamos.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        construcaoLabelEstamos.textAlignment = .center
        
        construcaoLabelSmile.text = ":)"
        construcaoLabelSmile.textColor = UIColor(named: K.systemBackground)
        construcaoLabelSmile.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        construcaoLabelSmile.textAlignment = .center
        
        backgroundViewGradient.image = UIImage(named: "gradient1")
        cangaceiroView.image = UIImage(named: "cangaceiro1")
        backgroundViewGradient.contentMode = .scaleToFill
        cangaceiroView.contentMode = .scaleAspectFit
        
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 28
        
    }
    
    
    func setupConstraints(){
        backgroundViewGradient.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backgroundViewGradient.topAnchor.constraint(equalTo: self.topAnchor),
            backgroundViewGradient.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            backgroundViewGradient.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            backgroundViewGradient.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
        
        cangaceiroView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cangaceiroView.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        
        // aqui tu vai ajustar a stack na view
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            stackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -50),
            stackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20)
            
//            stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
//            stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
        
        
        
    }
    
    func setupAdditionalConfiguration(){
        // nao acho que tu vai precisar dessa funçao mas vou deixar aqui caso precise
    }
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewHierarchy()
        setupViewAttributes()
        setupConstraints()
        setupAdditionalConfiguration()
    }
    
    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}



// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct EmContrucaoUIView_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            EmContrucaoUIView().showPreview().previewDevice("iPhone SE (3rd generation)")
            EmContrucaoUIView().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeRight)
        }
    }
}


#endif
