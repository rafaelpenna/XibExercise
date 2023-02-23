//
//  DetailTableViewCell.swift
//  XibExercise
//
//  Created by Rafael Penna on 23/02/23.
//

import UIKit

class DetailTableViewCell: UITableViewCell {

    @IBOutlet weak var imagem: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = "DetailTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupCell(name: String, foto: String) {
        nameLabel.text = name
        imagem.image = UIImage(named: foto)
    
    }
    
}
