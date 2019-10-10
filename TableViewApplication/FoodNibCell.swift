//
//  FoodNibCell.swift
//  TableViewApplication
//
//  Created by Oleg Mytryniuk on 2019-10-09.
//  Copyright © 2019 Oleg Mytryniuk. All rights reserved.
//

import UIKit

class FoodNibCell: UITableViewCell {

    @IBOutlet weak var foodImageview: UIImageView!
    @IBOutlet weak var foodNameLabel: UILabel!
    @IBOutlet weak var caloriesNameLabel: UILabel!
    func setCell(name: String, calories: Int, image: String) {
        self.foodNameLabel.text = name
        self.caloriesNameLabel.text = String(calories)
        self.foodImageview.image = UIImage(named: name)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
