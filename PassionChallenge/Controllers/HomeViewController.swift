//
//  HomeViewController.swift
//  PassionChallenge
//
//  Created by Lucas Migge de Barros on 12/09/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    let customView = HomeView()
    
    let categories : [Categorie] = Categorie.getCategories()
    let recomendations : [Place] = Place.getRecomendations()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = customView
        
        customView.categoriesCollection.delegate = self
        customView.categoriesCollection.dataSource = self
        
        customView.recomendationCollection.dataSource = self
        customView.recomendationCollection.delegate = self
        
        self.title = "Bom dia!"
        
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == customView.categoriesCollection {
            return categories.count
            
        }   else if collectionView == customView.recomendationCollection {
            return recomendations.count
            
        } else {
            return 10
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == customView.categoriesCollection {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoriesCollectionViewCell.identifier, for: indexPath) as? CategoriesCollectionViewCell {
                
                let categorieIndex = categories[indexPath.item]
                
                // implementar função Draw
                cell.imageView.image = UIImage(named: categorieIndex.imageString)
                cell.label.text = categorieIndex.name
                
                return cell
                
            }
            return UICollectionViewCell()
            
        }  else if collectionView == customView.recomendationCollection {
            
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RecomendationCollectionViewCell.identifier, for: indexPath) as? RecomendationCollectionViewCell {
                
                let recomendationIndex = recomendations[indexPath.item]
                
                cell.imageView.image = UIImage(named: recomendationIndex.imageURL)
                cell.nameLabel.text = recomendationIndex.name
                cell.adressLabel.text = recomendationIndex.adress
                
                return cell
                
            }
            return UICollectionViewCell()
            
        }
        return UICollectionViewCell()
    }
    
    
}
    


    // MARK: - Preview
#if DEBUG
    import SwiftUI
    
    @available(iOS 13, *)
    struct HomeViewController_Preview: PreviewProvider {
        static var previews: some View {
            // view controller using programmatic UI
            Group {
                HomeViewController().showPreview().previewDevice("iPhone SE (3rd generation)")
                HomeViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeRight)
            }
        }
    }
#endif
    
