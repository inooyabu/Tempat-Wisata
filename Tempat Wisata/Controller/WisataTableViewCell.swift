//
//  WisataTableViewCell.swift
//  Tempat Wisata
//
//  Created by Tenti Atika Putri on 23/07/21.
//

import UIKit

class WisataTableViewCell: UITableViewCell {

    @IBOutlet weak var photoWisata: UIImageView!
    @IBOutlet weak var namaWisata: UILabel!
    @IBOutlet weak var lokasiWisata: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
