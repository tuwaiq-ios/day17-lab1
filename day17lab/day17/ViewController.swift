//
//  ViewController.swift
//  day17
//
//  Created by Ahmed Assiri on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var image123: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func butonPressed(_ sender: UIButton) {
        let pressed = UIImagePickerController()
        pressed.allowsEditing = true
        pressed.delegate = self
        //pressed.sourceType = .camera
        present(pressed, animated: true )
       
        
        
    
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
         let image = (info[.editedImage]  ?? info[.editedImage]) as? UIImage
        image123.image = image
        dismiss(animated: true)
        
        
    }
    
}

