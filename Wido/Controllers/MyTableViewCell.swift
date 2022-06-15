//
//  MyTableViewCell.swift
//  Wido
//
//  Created by wido technologies on 14/06/22.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var carLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var locImage: UIImageView!
    @IBOutlet weak var addImage: UIImageView!
    @IBOutlet weak var cancelledLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var locLabel: UILabel!
    @IBOutlet weak var addLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
     
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
