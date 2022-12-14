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
    
    init(withPlaces places: [Place], withTitleName titleName: String){
        super.init(nibName: nil, bundle: nil)
        self.title = titleName
        self.places = places
    }
    
    init(){
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.largeTitleDisplayMode = .never
        self.tabBarController?.tabBar.isHidden = true

        
        self.view = customView
        customView.tableView.delegate = self
        customView.tableView.dataSource = self
        // Do any additional setup after loading the view.
    }       

}



extension SeeMoreViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return places.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        let cellSpacingHeight: CGFloat = 0.5
        return cellSpacingHeight
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = .clear
        return headerView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SeeMoreTableViewCell.identifier, for: indexPath) as? SeeMoreTableViewCell else {return UITableViewCell()}
        
        let placeIndex = places[indexPath.section]
        cell.draw(place: placeIndex)
        
        
    
        
        
        // gambiarrar para aparecer uma linha azul entre cada cell
        //let separatorLineView = UIView(frame: CGRect(x: 0, y: 0, width: view.widthAnchor.hash, height: 3))
        /// change size as you need.
        //separatorLineView.backgroundColor = UIColor(named: K.systemBackground)
        // you can also put image here
        //cell.contentView.addSubview(separatorLineView)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
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
        
        tableView.deselectRow(at: indexPath, animated: true)
        let placeSelected : Place = places[indexPath.section]
        
        
        let detailsViewController = DetailsViewController(withPlace: placeSelected)
        self.navigationController?.pushViewController(detailsViewController, animated: true)
        // self.navigationController?.navigationBar.prefersLargeTitles = false
        
        
        print("User tocou na celular \(places[indexPath.section])")
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

