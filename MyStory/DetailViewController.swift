//
//  DetailViewController.swift
//  MyStory
//
//  Created by Nicole Exarchos on 2/1/23.
//

import UIKit

class DetailViewController: UIViewController {
    var what: ContextItem?
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var imageLabel: UIImageView!
    
    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = what?.title
        imageLabel.image = what?.image
        infoLabel.text = what?.description
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
