//
//  RequestViewController.swift
//  Week 1 - Lab Challenge 1
//
//  Created by Alvin Hsia on 2/3/16.
//  Copyright © 2016 Alvin Hsia. All rights reserved.
//

import UIKit

class RequestViewController: UIViewController {
    @IBOutlet weak var RequestScrollView: UIScrollView!

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
