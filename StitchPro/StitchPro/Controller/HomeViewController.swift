//
//  HomeViewController.swift
//  StitchPro
//
//  Created by Furi on 03/10/2022.
//

import UIKit
import KYDrawerController

class HomeViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var BtnCart: UIButton!
    @IBOutlet weak var btnChat: UIButton!
    @IBOutlet weak var btnSideMenu: UIButton!
    @IBOutlet weak var btnComingSoon: UIButton!
    
    //MARK: ViewController lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate()
        
        // Do any additional setup after loading the view.
    }
    
    //MARK: Functions
    func delegate() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    //MARK: IBActions
    @IBAction func btnSideMenu(_ sender: UIButton){
        if let main = navigationController?.parent as? KYDrawerController{
            main.setDrawerState(.opened, animated: true)
        }
    }
    @IBAction func BtnCart(_ sender: Any) {
    }
    @IBAction func BtnChat(_ sender: Any) {
    }
    @IBAction func btnComingSoon(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "StoreViewController") as! StoreViewController
        self.navigationController?.pushViewController(vc, animated: true)
//        self.navigationController?.present(vc, animated: true, completion: nil)
    }
}

//MARK: Extension for CollectionView functions
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let deviceType = UIDevice().type
        
        switch UIDevice().type {
            case .iPhoneSE, .iPhone5, .iPhone5S , .iPhone6, .iPhone7, .iPhone8, .iPhone6S: print("small")
            return CGSize(width: 150, height: 185)
        case .iPhone11, .iPhone12, .iPhone13: print("large")
            return CGSize(width: 165, height: 185)
            default:
            return CGSize(width: 150, height: 185)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
}
