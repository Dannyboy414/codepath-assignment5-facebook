//
//  FeedViewController.swift
//  Week 5 - Assignment 5
//
//  Created by Daniel Kim on 3/5/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var feedImageView: UIImageView!
    @IBOutlet weak var wedding1ImageView: UIImageView!
    
    var selectedImageView: UIImageView!
    
    var imageTransition: ImageTransition!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: 320, height: feedImageView.image!.size.height+110)

        imageTransition = ImageTransition()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "openPhotoSegue") {
            let photoViewController = segue.destinationViewController as! PhotoViewController
            let imageView = sender.view as! UIImageView;
            selectedImageView = imageView
            
            photoViewController.image = imageView.image
            
            photoViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
            photoViewController.transitioningDelegate = imageTransition
            photoViewController.view.layoutIfNeeded()

        }
    }

    @IBAction func tapWedding1ImageView(sender: AnyObject) {
        performSegueWithIdentifier("openPhotoSegue", sender: sender);
    }
    
    @IBAction func tapWedding2ImageView(sender: AnyObject) {
        performSegueWithIdentifier("openPhotoSegue", sender: sender);
    }
    
    @IBAction func tapWedding3ImageView(sender: AnyObject) {
        performSegueWithIdentifier("openPhotoSegue", sender: sender);
    }
    
    @IBAction func tapWedding4ImageView(sender: AnyObject) {
        performSegueWithIdentifier("openPhotoSegue", sender: sender);
    }
    
    @IBAction func tapWedding5ImageView(sender: AnyObject) {
        performSegueWithIdentifier("openPhotoSegue", sender: sender);
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
