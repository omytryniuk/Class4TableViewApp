//
//  FoodTableViewCell.swift
//  TableViewApplication
//
//  Created by Oleg Mytryniuk on 2019-10-09.
//  Copyright © 2019 Oleg Mytryniuk. All rights reserved.
//

import UIKit

class FoodTableViewCell: UITableViewCell {
    var nameLabel: UILabel?
    var caloriesLabel: UILabel?
    var iconImageView: UIImageView?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setCell(name: String, calories: Int, image: String) {
        nameLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 140, height: 24))
        nameLabel!.text = name
        caloriesLabel = UILabel(frame: CGRect(x: 150, y: 10, width: 140, height: 24))
        caloriesLabel!.text = String(calories)
        
        iconImageView = UIImageView(image: UIImage(named: image))
        iconImageView?.frame = CGRect(x: 270, y: 2, width: 40, height: 40)
        
        self.contentView.addSubview(nameLabel!)
        self.contentView.addSubview(caloriesLabel!)
        self.contentView.addSubview(iconImageView!)
    }
}
