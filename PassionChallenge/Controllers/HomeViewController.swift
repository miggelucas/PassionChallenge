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
        
        
        
        customView.delegate = self
        
        customView.categoriesCollection.delegate = self
        customView.categoriesCollection.dataSource = self
        
        customView.recomendationCollection.dataSource = self
        customView.recomendationCollection.delegate = self
        
        //self.title = "Bom dia!"
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.tabBarController?.tabBar.isHidden = false
    }
}


extension HomeViewController : HomeViewDelegate {
    func doSomeAction() {
        let seeMoreViewController = SeeMoreViewController(withPlaces: self.recomendations, withTitleName: "Recomendações")
        self.navigationController?.pushViewController(seeMoreViewController, animated: true)
        //print("aqui eu devo chamar o peform segue")
        
    }
}

extension HomeViewController:  UICollectionViewDataSource {
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
                
                cell.draw(categorie: categorieIndex)
                
                return cell
                
            }
            return UICollectionViewCell()
            
        }  else if collectionView == customView.recomendationCollection {
            
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RecomendationCollectionViewCell.identifier, for: indexPath) as? RecomendationCollectionViewCell {
                
                let recomendation = recomendations[indexPath.item]
                
                cell.draw(place: recomendation)
                
                return cell
                
            }
            return UICollectionViewCell()
            
        }
        return UICollectionViewCell()
    }
    
    
}



extension HomeViewController : UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == customView.categoriesCollection {
            
            
            let categorieSelected : String = categories[indexPath.item].name
            
            let places : [Place] = Categorie.getPlaces(forCategorie: categorieSelected)
            
            let seeMoreViewController = SeeMoreViewController(withPlaces: places, withTitleName: categorieSelected)
            //self.navigationController?.navigationBar.prefersLargeTitles = false
            
            self.navigationController?.pushViewController(seeMoreViewController, animated: true)
            
            print("Usuário cliclou na categoria \(categorieSelected)")
            
        } else if collectionView == customView.recomendationCollection {
            let recomendationSelected = recomendations[indexPath.item]
            
            
            let detailsViewController = DetailsViewController(withPlace: recomendationSelected)
            self.navigationController?.pushViewController(detailsViewController, animated: true)
            
            // present modal, mas perde o sharebutton no navigation
            //self.present(detailsViewController, animated: true)
            //self.navigationController?.navigationBar.prefersLargeTitles = false
            
            
            print("Usuário cliclou no place \(recomendationSelected.name)")
            
        }
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

