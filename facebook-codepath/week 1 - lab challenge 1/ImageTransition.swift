//
//  ImageTransition.swift
//  Facebook
//
//  Created by Daniel Kim on 3/6/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import UIKit

class ImageTransition: BaseTransition {
    
    let movingImageView = UIImageView()
    
    override func presentTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        
        let feedViewController = ((fromViewController as! UITabBarController).selectedViewController as! UINavigationController).topViewController as! FeedViewController
        let photoViewController = toViewController as! PhotoViewController
        
        
        //Clone the view
        movingImageView.frame = feedViewController.selectedImageView.frame
        movingImageView.image = feedViewController.selectedImageView.image
        movingImageView.clipsToBounds = feedViewController.selectedImageView.clipsToBounds
        movingImageView.contentMode = .ScaleAspectFit
        
        containerView.backgroundColor = UIColor(white: 0.0, alpha: 0.90);
        containerView.addSubview(movingImageView)
        
        feedViewController.selectedImageView.alpha = 0
        
        photoViewController.imageView.alpha = 0
        toViewController.view.alpha = 0
        UIView.animateWithDuration(duration, animations: {
            toViewController.view.alpha = 1
            
            var frame = photoViewController.imageView.frame
            self.movingImageView.frame = frame
            
            }) { (finished: Bool) -> Void in
                photoViewController.imageView.alpha = 1
                feedViewController.selectedImageView.alpha = 1
                self.movingImageView.removeFromSuperview()
                self.finish()
        }
    }
    
    override func dismissTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        
        //        movingImageView.removeFromSuperview()
        
        fromViewController.view.alpha = 1
        UIView.animateWithDuration(duration, animations: {
            fromViewController.view.alpha = 0
            }) { (finished: Bool) -> Void in
                self.finish()
        }
    }
    
}

