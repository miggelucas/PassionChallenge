//
//  HomeViewController.swift
//  PassionChallenge
//
//  Created by Lucas Migge de Barros on 12/09/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    let customView = HomeView()
    
    let categories = Categorie.getCategories()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = customView
        
        customView.categoriesCollection.delegate = self
        customView.categoriesCollection.dataSource = self
        
//        customView.categoriesCollection.delegate = self
        
        
//        customView.categoriesCollectionDelegate = self
//        customView.categoriesCollectionDataSource = self
        
        self.title = "Bom dia!"
        
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //print("ENTROU AQUI")
        
    
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoriesCollectionViewCell.identifier, for: indexPath) as? CategoriesCollectionViewCell {
            
            let categorieIndex = categories[indexPath.item]
            print (indexPath)
            
            // implementar cel
            cell.imageView.image = UIImage(named: categorieIndex.imageString)
            cell.label.text = categorieIndex.name
            
            return cell

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
