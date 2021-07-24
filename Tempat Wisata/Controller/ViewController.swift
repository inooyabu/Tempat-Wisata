//
//  ViewController.swift
//  Tempat Wisata
//
//  Created by Tenti Atika Putri on 23/07/21.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var wisataTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Tempat Wisata"
        
        wisataTableView.dataSource = self
        
        wisataTableView.delegate = self
        
        wisataTableView.register(UINib(nibName: "WisataTableViewCell", bundle: nil), forCellReuseIdentifier: "WisataCell")
        
    }
   
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wisatas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "WisataCell", for: indexPath) as? WisataTableViewCell{
            let wisata = wisatas[indexPath.row]
            cell.namaWisata.text = wisata.name
            cell.lokasiWisata.text = wisata.location
            cell.photoWisata.image = wisata.photo
        
            return cell
        }else{
            return UITableViewCell()
        }
    }
    
    
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = DetailViewController(nibName: "DetailViewController", bundle: nil)

        detail.wisata = wisatas[indexPath.row]

        self.navigationController?.pushViewController(detail, animated: true)
    }


}

