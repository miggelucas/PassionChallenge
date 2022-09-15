//
//  SeeMoreViewController.swift
//  PassionChallenge
//
//  Created by João Pedro Monteiro on 14/09/22.
//

import UIKit

class SeeMoreViewController: UIViewController {
    
    let customView = SeeMoreView()
       
    let places = Place.getRecomendations()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.customView.backgroundColor = .white
        
        customView.tableView.delegate = self
        customView.tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    

}



extension SeeMoreViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SeeMoreTableViewCell.identifier, for: indexPath) as? SeeMoreTableViewCell
        
        let placeIndex = places[indexPath.item]
        
        cell?.localTitleLabel.text = placeIndex.name
        cell?.addressLabel.text = placeIndex.adress
        cell?.localImageView.image = UIImage(named: placeIndex.imageURL)
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 94
    }
    
}

extension SeeMoreViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("User tocou na celular \(places[indexPath.row])")
    }
}

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


import SwiftUI

#if DEBUG
@available(iOS 13, *)
struct SeeMoreViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            SeeMoreView().showPreview().previewDevice("iPhone SE (3rd generation)")
            SeeMoreView().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeRight)
        }
    }
}
#endif

