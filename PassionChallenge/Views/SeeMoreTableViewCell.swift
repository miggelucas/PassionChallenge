//
//  SeeMoreTableViewCell.swift
//  PassionChallenge
//
//  Created by João Pedro Monteiro on 14/09/22.
//

import UIKit

class SeeMoreTableViewCell: UITableViewCell {
    
    
    
    let customView: SeeMoreView = {
        let view = SeeMoreView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    static let identifier: String = "SeeMoreTableViewCell"
    
    // inicializando componentes
    let cellView = UIView()

    let localImageView = UIImageView()
    let localTitleLabel = UILabel()
    let addressLabel = UILabel()
    
    let localAddressStackView = UIStackView()
    let cellInfoStackView = UIStackView()
    
    
    
    
    func setupViewHierarchy(){
        
        self.addSubview(cellView)
        
        cellInfoStackView.backgroundColor = .white
        cellInfoStackView.addArrangedSubview(localImageView)
        cellInfoStackView.addArrangedSubview(localAddressStackView)

        localAddressStackView.addArrangedSubview(localTitleLabel)
        localAddressStackView.addArrangedSubview(addressLabel)
    }
    
    
    
    func setupViewAttributes() {

        cellView.backgroundColor = .white //precisaria definir um tamanho pra ela, n?
    
        cellInfoStackView.axis = .horizontal
        cellInfoStackView.alignment = .fill
        cellInfoStackView.distribution = .fill
        cellInfoStackView.spacing = 12

        localAddressStackView.axis = .vertical
        localAddressStackView.alignment = .fill
        localAddressStackView.distribution = .fillProportionally
        localAddressStackView.spacing = 20
        
        localImageView.image = UIImage()
        localTitleLabel.text = "Local"  //ver como alinhar com o data source
        addressLabel.text = "Endereço"  //ver como alinhar com o data source
        
    }
    
    func setupConstraints(){
        cellView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cellView.topAnchor.constraint(equalTo: self.topAnchor),
            cellView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            cellView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            cellView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            
            cellView.heightAnchor.constraint(equalToConstant: 94) //tentando definir tamanho pra ela
        ])
        
        cellInfoStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cellInfoStackView.topAnchor.constraint(equalTo: cellView.topAnchor, constant: 8),
            cellInfoStackView.bottomAnchor.constraint(equalTo: cellView.bottomAnchor, constant: -8),
            cellInfoStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -14),
            cellInfoStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14)
        ])
        
        localImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            localImageView.topAnchor.constraint(equalTo: cellInfoStackView.topAnchor),
            localImageView.bottomAnchor.constraint(equalTo: cellInfoStackView.bottomAnchor),
//            localImageView.trailingAnchor.constraint(equalTo: cellInfoStackView.trailingAnchor), //acho que n precisa disso, né? (alinhada a direita)
            localImageView.leadingAnchor.constraint(equalTo: cellInfoStackView.leadingAnchor), //precisa ajustar
        ])

        localAddressStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            localAddressStackView.topAnchor.constraint(equalTo: cellInfoStackView.topAnchor, constant: 0),
            localAddressStackView.trailingAnchor.constraint(equalTo: cellInfoStackView.trailingAnchor, constant: -30),
//            localAddressStackView.leadingAnchor.constraint(equalTo: cellInfoStackView.leadingAnchor), //acho que n precisa, né? (alinhada a esquerda)
            localAddressStackView.bottomAnchor.constraint(equalTo: cellInfoStackView.bottomAnchor)

        ])


        
    }
    
    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
    }

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupViewHierarchy()
        setupViewAttributes()
        setupConstraints()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
