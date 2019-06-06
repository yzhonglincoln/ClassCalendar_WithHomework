//
//  CalendarTableViewCell.swift
//  ClassCalendar_WithHomework
//
//  Created by Soft Dev Student on 6/4/19.
//  Copyright © 2019 Alice Zhong. All rights reserved.
//

import UIKit

class CalendarTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet weak var titleLabel: UILabel!

    // update day in cell
    func update(with day: Day) {
        titleLabel.text = day.name
    }

}
