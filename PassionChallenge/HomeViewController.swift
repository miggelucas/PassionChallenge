//
//  HomeViewController.swift
//  PassionChallenge
//
//  Created by Lucas Migge de Barros on 12/09/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    let customView = HomeView()

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
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("ENTROU AQUI")
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .green
        return cell
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
