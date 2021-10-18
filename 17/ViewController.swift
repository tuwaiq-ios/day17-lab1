//
//  ViewController.swift
//  17
//
//  Created by Amal on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController , UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var OurImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func openImage(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.editedImage] ?? info [.originalImage] as? UIImage
        OurImage.image = image as? UIImage 
        dismiss(animated: true)
    }
    
}

