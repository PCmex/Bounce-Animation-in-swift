//
//  ViewController.swift
//  Bounce Animation
//
//  Created by Parth Changela on 11/12/16.
//  Copyright © 2016 Parth Changela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPass: UITextField!
    @IBOutlet weak var txtCoPass: UITextField!
    @IBOutlet weak var btnSubmit: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        Animation()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSubmitTapped(_ sender: Any) {
        Animation()
    }

    func Animation(){
        txtName.center.x = self.view.frame.width + 30

        UIView.animate(withDuration: 1.0, delay: 00, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .allowAnimatedContent, animations: {
            self.txtName.center.x = self.view.frame.width / 2
        }, completion:nil)


        txtEmail.center.x = self.view.frame.width + 30

        UIView.animate(withDuration: 2.0, delay: 00, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .allowAnimatedContent, animations: {
            self.txtEmail.center.x = self.view.frame.width / 2
        }, completion:nil)

        txtPass.center.x = self.view.frame.width + 30

        UIView.animate(withDuration: 3.0, delay: 00, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .allowAnimatedContent, animations: {
            self.txtPass.center.x = self.view.frame.width / 2
        }, completion:nil)

        txtCoPass.center.x = self.view.frame.width + 30

        UIView.animate(withDuration: 4.0, delay: 00, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .allowAnimatedContent, animations: {
            self.txtCoPass.center.x = self.view.frame.width / 2
        }, completion:nil)



        // zooming animation
        UIView.animate(withDuration: 0.5, animations: {
            self.btnSubmit.transform = CGAffineTransform.identity.scaledBy(x: 0.6, y: 0.6)
        }, completion: { (finish) in
            UIView.animate(withDuration: 0.20, animations: {
                self.btnSubmit.transform = CGAffineTransform.identity
            })
        })

    }
}

