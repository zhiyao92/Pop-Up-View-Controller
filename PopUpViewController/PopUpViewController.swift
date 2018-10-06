//
//  PopUpViewController.swift
//  PopUpViewController
//
//  Created by Kelvin Tan on 10/6/18.
//  Copyright © 2018 Kelvin Tan. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {

    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var registerButton: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
    }
    
    func configureView(){
        popUpView.layer.cornerRadius = 6
        registerButton.layer.cornerRadius = 6
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(dismissView)))
    }
    
    @objc func dismissView(){
        self.dismiss(animated: false, completion: nil)
    }

}
