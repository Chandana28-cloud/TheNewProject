//
//  DataCell.swift
//  PracticeProject
//
//  Created by Ravipati Lakshmi Sai Chandana on 08/02/22.
//

import UIKit

class DataCell: UITableViewCell {

    @IBOutlet weak var Email: UILabel!
    @IBOutlet weak var Name: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
