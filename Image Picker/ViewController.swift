//
//  ViewController.swift
//  Image Picker
//
//  Created by JIJO G OOMMEN on 29/05/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    
    let img = UIImagePickerController()
    @IBOutlet weak var imgview: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        img.delegate = self
    }

    @IBAction func acTion(_ sender: Any) {
        
        img.sourceType = .photoLibrary
        img.allowsEditing = false
        present(img,animated: true,completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let image = info[UIImagePickerController.InfoKey.originalImage]as! UIImage
        imgview.image = image
        
        dismiss(animated: true, completion: nil)
    }
    
}

