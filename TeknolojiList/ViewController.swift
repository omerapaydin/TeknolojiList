//
//  ViewController.swift
//  TeknolojiList
//
//  Created by Ömer on 11.04.2025.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{

    @IBOutlet weak var searchButton: UISearchBar!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var techList = [Tech]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        var tech1 = Tech(techId: 1, techName: "Airpods Max", texhImage: "airpods-max", texhPrice: 12.000)
        var tech2 = Tech(techId: 2, techName: "Airpods Pro", texhImage: "airpods-pro-2-hero-select-202409", texhPrice: 13.000)
        var tech3 = Tech(techId: 3, techName: "Homepod", texhImage: "homepod", texhPrice: 7.000)
        var tech4 = Tech(techId: 4, techName: "Apple Key", texhImage: "key", texhPrice: 1.000)
        var tech5 = Tech(techId: 5, techName: "Apple Mouse", texhImage: "mouse", texhPrice: 9.000)
        var tech6 = Tech(techId: 6, techName: "Apple Pencil", texhImage: "pencil", texhPrice: 2.000)
        
        
        techList.append(tech1)
        techList.append(tech2)
        techList.append(tech3)
        techList.append(tech4)
        techList.append(tech5)
        techList.append(tech6)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return techList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
      
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "tekCell", for: indexPath) as! CollectionViewCell
        cell.nameLabel.text = techList[indexPath.row].techName
        cell.priceLabel.text = "\(techList[indexPath.row].texhPrice ?? 0) TL"
        cell.techImage.image = UIImage(named: techList[indexPath.row].texhImage ?? "")
        
        return cell
    }

}

