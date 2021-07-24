//
//  ProfilViewController.swift
//  Tempat Wisata
//
//  Created by Tenti Atika Putri on 24/07/21.
//

import UIKit

class ProfilViewController: UIViewController {

    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var email: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Profil"
    }
    

}
