//
//  ImageTableViewCell.swift
//  SimpleTableViewApp
//
//  Created by Ashfak Ahamed Alauddeen on 20/05/24.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    @IBOutlet weak var view: UIView!
    @IBOutlet weak var photoView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func setupViewWith(){
        self.photoView.image = .passport
        self.photoView.layer.cornerRadius = 10
    }
    
}
