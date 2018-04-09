//
//  TimeTableViewCell.swift
//  Clock
//
//  Created by Serkan.Ozdemir on 09/04/2018.
//  Copyright © 2018 Serkan.Ozdemir. All rights reserved.
//

import UIKit

class TimeTableViewCell: UITableViewCell {

    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    var time = 0
    
    @IBAction func startButton(_ sender: Any) {
        
        time += 1
        timeLabel.text = String(time)
        
    }
    
    @IBAction func resetButton(_ sender: Any) {
        
        time = 0
        timer.invalidate()
        timeLabel.text = String(time)
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
