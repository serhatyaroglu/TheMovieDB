//
//  TableViewCell.swift
//  TheMovieDB
//
//  Created by serhat yaroglu on 17.03.2022.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieYearsLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
