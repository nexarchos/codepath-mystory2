//
//  ViewController.swift
//  MyStory
//
//  Created by Nicole Exarchos on 1/31/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func didTap(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.what = ContextItem(title: "My background", image: UIImage(named: "captain-america-14")!, description: "Steve Rogers was a would-be U.S. Army enlistee rejected by recruiters because of his small size. He volunteers to receive a top-secret serum and transforms into a 'super-soldier'. Dubbed Captain America and clad in a red, white, and blue costume with a matching stars-and-stripes shield, Rogers joins the army.")
            }
            else if tappedView.tag == 1 {
                detailViewController.what = ContextItem(title: "My powers", image: UIImage(named: "powers")!, description: "Captain America has agility, strength, speed, endurance, and reaction time superior to any Olympic athlete who ever competed. The Super-Soldier formula that he has metabolized has enhanced all of his bodily functions to the peak of human efficiency")
            }
            else if tappedView.tag == 2 {
                detailViewController.what = ContextItem(title: "My suit", image: UIImage(named: "suit")!, description: "The suit that Captain America wears was designed by none other than Tony Stark's father, Howard Stark. The uniform designed by Stark was made from a carbon polymer that is resistant to knife and ballistic damage, making Steve Rogers pretty difficult to hurt or incapacitate.")
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}



