//
//  PhotoViewController.swift
//  Facebook
//
//  Created by Daniel Kim on 3/6/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController, UIScrollViewDelegate {
    var image : UIImage!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var photoAction: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width: 320, height: 525)
        scrollView.delegate = self
        
        imageView.image = image
        
        self.view.backgroundColor = UIColor.clearColor()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    
    //Done Button Dismiss
    @IBAction func didTapDone(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        print("begin dragging")
        
        UIView.animateWithDuration(0.1) { () -> Void in
            self.doneButton.alpha = 0
            self.photoAction.alpha = 0
        }
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        print("\(scrollView.contentOffset.y)")
        if (scrollView.contentOffset.y >= 1) {
            scrollView.setContentOffset(CGPointMake(0, 1), animated: false);
        } else if (scrollView.contentOffset.y < -20) {
            dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        UIView.animateWithDuration(0.1) { () -> Void in
            self.doneButton.alpha = 1
            self.photoAction.alpha = 1
        }
    }
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView {
        
        return imageView
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
