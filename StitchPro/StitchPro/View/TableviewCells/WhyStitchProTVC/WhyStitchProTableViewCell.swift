//
//  WhyStitchProTableViewCell.swift
//  StitchPro
//
//  Created by Furi on 05/10/2022.
//

import UIKit

class WhyStitchProTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var imgProvideStitchPro: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
