//
//  ViewController.swift
//  Task Picker
//
//  Created by MacBook on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    @IBOutlet weak var ourimageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // make show for photoes from library
    }
    
    @IBAction func openPressed(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        //picker.cameraDevice = .front  //to take photo from cameraDevice
       // picker.sourceType = .camera  // here if we want to take photo
        present(picker, animated: true)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.editedImage] ?? info[.originalImage]
        as? UIImage
        ourimageview.image = image as? UIImage
        dismiss(animated: true)
    }
}

