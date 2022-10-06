//
//  StoreViewController.swift
//  StitchPro
//
//  Created by Furi on 05/10/2022.
//

import UIKit
import KYDrawerController

class StoreViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var BtnCart: UIButton!
    @IBOutlet weak var btnChat: UIButton!
    @IBOutlet weak var btnSideMenu: UIButton!
    
//    var heightLabel: Int = 550
//    @IBOutlet weak var topCornerRadiusLabel: UILabel!
//    @IBOutlet weak var presentDurationLabel: UILabel!
//    @IBOutlet weak var dismissDurationLabel: UILabel!

    
    //POPUP Slide
//    var height: CGFloat = 300 {
//        didSet {
//            heightLabel = String(format: "%.02f pt", height)
//        }
//    }
//    var topCornerRadius: CGFloat = 35 {
//        didSet {
//            topCornerRadiusLabel.text = String(format: "%.02f pt", topCornerRadius)
//        }
//    }
//    var presentDuration: Double = 1.5 {
//        didSet {
//            presentDurationLabel.text = String(format: "%.02f sec", presentDuration)
//        }
//    }
//    var dismissDuration: Double = 1.5 {
//        didSet {
//            dismissDurationLabel.text = String(format: "%.02f sec", dismissDuration)
//        }
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        delegate()
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
    
    @objc func btnAddCartAction(_ sender: UIButton){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let popupViewController = storyboard.instantiateViewController(withIdentifier: "popUpViewController") as? popUpViewController else { return }
        popupViewController.height = 560
        popupViewController.topCornerRadius = 30
        popupViewController.presentDuration = 0.5
        popupViewController.dismissDuration = 1.0
        popupViewController.popupDelegate = self
        present(popupViewController, animated: true, completion: nil)
    }
    
}



//MARK: Extension for CollectionView functions
extension StoreViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoreCollectionViewCell", for: indexPath) as! StoreCollectionViewCell
        cell.btnAddToCart.addTarget(self, action: #selector(btnAddCartAction), for: .touchUpInside)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let deviceType = UIDevice().type
        
        switch UIDevice().type {
            case .iPhoneSE, .iPhone5, .iPhone5S , .iPhone6, .iPhone7, .iPhone8, .iPhone6S: print("small")
            return CGSize(width: 150, height: 230)
        case .iPhone11, .iPhone12, .iPhone13: print("large")
            return CGSize(width: 165, height: 230)
            default:
            return CGSize(width: 150, height: 230)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
}


extension StoreViewController: BottomPopupDelegate {
    
    func bottomPopupViewLoaded() {
        print("bottomPopupViewLoaded")
    }
    
    func bottomPopupWillAppear() {
        print("bottomPopupWillAppear")
    }
    
    func bottomPopupDidAppear() {
        print("bottomPopupDidAppear")
    }
    
    func bottomPopupWillDismiss() {
        print("bottomPopupWillDismiss")
    }
    
    func bottomPopupDidDismiss() {
        print("bottomPopupDidDismiss")
    }
    
    func bottomPopupDismissInteractionPercentChanged(from oldValue: CGFloat, to newValue: CGFloat) {
        print("bottomPopupDismissInteractionPercentChanged fromValue: \(oldValue) to: \(newValue)")
    }
}
