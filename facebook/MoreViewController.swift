//
//  MoreViewController.swift
//  Week 5 - Assignment 5
//
//  Created by Daniel Kim on 3/5/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController {

    @IBOutlet weak var MoreScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBarHidden = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
