//
//  whyStitchProViewController.swift
//  StitchPro
//
//  Created by Furi on 05/10/2022.
//

import UIKit

class WhyStitchProViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    var imagesArray = ["designerCloth" , "affordableCart" , "PIckupGuy" , "DeliveryGuy" , "Convience" , "professionalTailors"]
    var titleArrays = ["Professional designing" , "Affordable" , "Free Pickup" , "Timely Delivery" , "Convenience" , "Professional tailors"]
    var descriptionArray = ["Our highly skilled and professional tailors have years of experience of making custom made dresses with the trendiest designs for men, women and children alike. " , "Our highly skilled and professional tailors have years of experience of making custom made dresses with the trendiest designs for men, women and children alike. Our experts work closely with the customers to ensure that they get to enjoy perfectly fitting dresses having the best and latest designs." , "Your dress material and the sample garment that fits you perfectly will be picked up by our representative as soon as you place an order." , "Your custom tailored outfit and the sample garment will be properly packaged and securely delivered at your doorstep within 7 days. You will avail both pickup and delivery services for free." , "Your custom tailored outfit and the sample garment will be properly packaged and securely delivered at your doorstep within 7 days. You will avail both pickup and delivery services for free." , "Our experts work closely with the customers to ensure that they get to enjoy perfectly fitting dresses having the best and latest designs."]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        delegates()
        
    }
    
    func delegates(){
        tableView.delegate = self
        tableView.dataSource = self
    }
    


}

extension WhyStitchProViewController: UITableViewDelegate , UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WhyStitchProTableViewCell") as! WhyStitchProTableViewCell
        cell.imgProvideStitchPro.image = UIImage(named: imagesArray[indexPath.row])
        cell.lblTitle.text = titleArrays[indexPath.row]
        cell.lblDescription.text = descriptionArray[indexPath.row]
        return cell
    }
    
    
    
}
