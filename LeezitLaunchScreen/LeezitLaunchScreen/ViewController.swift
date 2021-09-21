//
//  ViewController.swift
//  LeezitLaunchScreen
//
//  Created by Muhammad Qureshi on 9/21/21.
//

import UIKit

class ViewController: UIViewController {

    
    private var imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 150, height: 150))
        imageView.image = UIImage(named: "Image")
        return imageView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        DispatchQueue.main.asyncAfter(deadline: .now()+5) {
            self.performSegue(withIdentifier: "HomeVC", sender: nil)
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imageView.center = view.center
        DispatchQueue.main.asyncAfter(deadline: .now()) {
            self.animate()
        }
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    
    
    
    private func animate() {
        UIView.animate(withDuration: 2.0) {
            self.imageView.transform = CGAffineTransform(translationX: 0, y: -260)
            
        }
    }
}
