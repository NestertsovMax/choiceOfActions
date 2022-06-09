//
//  ImageHideViewController.swift
//  choice of actions choiceOfAction
//
//  Created by M1 on 06.06.2022.
//

import UIKit

class ImageHideViewController: UIViewController {

    @IBOutlet private weak var imageFirst: UIImageView!
    @IBOutlet private weak var imageSecond: UIImageView!
    @IBOutlet private weak var imageThird: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Картинки"

        // Do any additional setup after loading the view.
    }
    @IBAction func hideFirstImage(_ sender: UIButton) {
        imageFirst.isHidden = !imageFirst.isHidden
    }
    
    @IBAction func hideSecondImage(_ sender: UIButton) {
        imageSecond.isHidden = !imageSecond.isHidden
    }
    
    @IBAction func hideThirdImage(_ sender: UIButton) {
        imageThird.isHidden = !imageThird.isHidden
    }
    
    @IBAction func showAllImage(_ sender: UIButton) {
        imageFirst.isHidden = false
        imageSecond.isHidden = false
        imageThird.isHidden = false
    }
 }

