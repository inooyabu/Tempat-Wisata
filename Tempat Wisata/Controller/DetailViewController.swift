//
//  DetailViewController.swift
//  Tempat Wisata
//
//  Created by Tenti Atika Putri on 24/07/21.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var namaWisata: UILabel!
    @IBOutlet weak var lokasiWisata: UILabel!
    @IBOutlet weak var photoWisata: UIImageView!
    @IBOutlet weak var deksripsiWisata: UILabel!
    
    var wisata: Wisata?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Detail"

        
        if let result = wisata{
            namaWisata.text = result.name
            lokasiWisata.text = result.location
            photoWisata.image = result.photo
            deksripsiWisata.text = result.description
        }

    }
}
