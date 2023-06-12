//
//  DashboardTableViewCell.swift
//  SuperSoaker
//
//  Created by Francisco David Zárate Vásquez on 04/06/23.
//

import UIKit

class DashboardTableViewCell: UITableViewCell {
    static let reuseIdentifier = String(describing: DashboardTableViewCell.self)
    
    
    @IBOutlet weak var bckgrdView: UIView!
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        bckgrdView.layer.cornerRadius = 12
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with text: String) {
        if let cantidadLabel = titleLabel {
            cantidadLabel.text = text
        }
    }

    
}
