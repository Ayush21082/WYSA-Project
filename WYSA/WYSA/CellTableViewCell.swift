//
//  CellTableViewCell.swift
//  WYSA
//
//  Created by Ayush Singh on 17/02/21.
//

import UIKit

class CellTableViewCell: UITableViewCell {

    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var prize: UILabel!
    @IBOutlet weak var questions: UILabel!
    @IBOutlet weak var textBox: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
