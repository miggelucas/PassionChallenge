//
//  SeeMoreTableViewCell.swift
//  PassionChallenge
//
//  Created by João Pedro Monteiro on 14/09/22.
//

import UIKit

class SeeMoreTableViewCell: UITableViewCell {
    
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
        
        cellView.addSubview(cellInfoStackView)
        
        cellInfoStackView.backgroundColor = .clear
        cellInfoStackView.addArrangedSubview(localImageView)
        cellInfoStackView.addArrangedSubview(localAddressStackView)

        localAddressStackView.addArrangedSubview(localTitleLabel)
        localAddressStackView.addArrangedSubview(addressLabel)
        
    }
    
    func setupViewAttributes() {

        self.backgroundColor = UIColor(named: "Light Gray Blue")
    
        cellInfoStackView.axis = .horizontal
        cellInfoStackView.alignment = .fill
        cellInfoStackView.distribution = .fill
        cellInfoStackView.spacing = 12

        localAddressStackView.axis = .vertical
        localAddressStackView.alignment = .fill
        localAddressStackView.distribution = .fillProportionally
        localAddressStackView.spacing = 12
        
        localImageView.image = UIImage()
        
        
        localTitleLabel.text = "Local"  //ver como alinhar com o data source
        localTitleLabel.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        addressLabel.text = "Endereço"  //ver como alinhar com o data source
        addressLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        addressLabel.textColor = UIColor(named: "systemBackground")
        
    }
    
    func setupConstraints(){
        cellView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cellView.topAnchor.constraint(equalTo: self.topAnchor),
            cellView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            cellView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            cellView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            
            //cellView.heightAnchor.constraint(equalToConstant: 94) //tentando definir tamanho pra ela
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
            localImageView.heightAnchor.constraint(equalToConstant: 94),
            localImageView.widthAnchor.constraint(equalToConstant: 102)
])

        localAddressStackView.translatesAutoresizingMaskIntoConstraints = false


        
    }
    
    required override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(self.cellView)
        setupViewHierarchy()
        setupViewAttributes()
        setupConstraints()
        self.accessoryType = .disclosureIndicator
        
        
    }
    
    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
    }

//    override func layoutSubviews() {
//        super.layoutSubviews()
//        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
//    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
