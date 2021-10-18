//
//  ViewController.swift
//  image
//
//  Created by alanood on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
   
    @IBOutlet weak var myImageview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
         
    }

    @IBAction func openPressed(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        picker.sourceType = .photoLibrary
        present (picker, animated: true)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let image = (info[.editedImage] ?? info[.originalImage]) as? UIImage
        myImageview.image = image
                
                dismiss(animated: true)
    }
        
    }


