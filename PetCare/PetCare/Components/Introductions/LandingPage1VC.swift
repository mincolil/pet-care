//
//  LandingPage1VC.swift
//  PetCare
//
//  Created by Apple on 09/01/2024.
//

import Foundation
import UIKit

class LandingPage1VC : UIViewController {
    var delegate: IntroductionDelegate?
    // MARK: -Outlets
    
    @IBOutlet weak var nextButton: UIButton!
    override func viewDidLoad() {
        nextButton.layer.cornerRadius = 10
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func skipAct(_ sender: Any) {
        delegate?.skipIntroduce()
    }
    
    @IBAction func nextAct(_ sender: Any) {
        delegate?.nextIntroduce()
    }
}
