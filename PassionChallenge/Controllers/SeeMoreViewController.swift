//
//  SeeMoreViewController.swift
//  PassionChallenge
//
//  Created by João Pedro Monteiro on 14/09/22.
//

import UIKit

class SeeMoreViewController: UIViewController {
    
    let customView = SeeMoreView()
       
    //var places = Place.getRecomendations()
    var places : [Place] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view = customView
        customView.tableView.delegate = self
        customView.tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    

}



extension SeeMoreViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("Entrou aqui")
        return places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SeeMoreTableViewCell.identifier, for: indexPath) as? SeeMoreTableViewCell else {return UITableViewCell()}
        
        let placeIndex = places[indexPath.item]
        
        cell.localTitleLabel.text = placeIndex.name
        cell.addressLabel.text = placeIndex.adress
        cell.localImageView.image = UIImage(named: placeIndex.imageURL)
        cell.tintColor = .orange
        
        let separatorLineView = UIView(frame: CGRect(x: 0, y: 0, width: view.widthAnchor.hash, height: 3))
        /// change size as you need.
        separatorLineView.backgroundColor = UIColor(named: "systemBackground")
        // you can also put image here
        cell.contentView.addSubview(separatorLineView)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 94
    }
    
    
    // olha a gente tentando e dando errado dnovo
//    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 14; // space b/w cells
//    }
//
//    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        return places.count // count of items
//    }
//
//    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let header = UIView()
//        header.isUserInteractionEnabled = false
//        header.backgroundColor = .clear
//        return header
//    }


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
            SeeMoreViewController().showPreview().previewDevice("iPhone SE (3rd generation)")
            SeeMoreViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeRight)
        }
    }
}
#endif

