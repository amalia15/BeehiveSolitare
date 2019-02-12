//
//  WelcomeViewController.swift
//  Beehive Solitare
//
//  Created by Baxter Coronado on 2/16/18.
//  Copyright © 2018 bbbax. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var img_beehive: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        img_beehive.loadGif(name: "beehive")
        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
