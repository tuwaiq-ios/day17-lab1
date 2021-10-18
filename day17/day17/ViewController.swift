//
//  ViewController.swift
//  day17
//
//  Created by Macbook on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imagev: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func opencam(_ sender: UIButton) {
        let picker = UIImagePickerController()
            picker.allowsEditing = true
            picker.delegate = self
            present(picker, animated: true)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
         let image = (info[.editedImage] ?? info[.editedImage]) as? UIImage
        
        imagev.image = image

            dismiss(animated: true)
        
    }
    
    
}

