//
//  ViewController.swift
//  Day 17 Image Picker
//
//  Created by Eth Os on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var openedImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func opendPressed(_ sender: Any) {
        let image = UIImagePickerController()
        image.allowsEditing = true
        image.delegate = self
    
        present(image, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = (info[.editedImage] ?? info[.originalImage]) as? UIImage
        openedImageView.image = image
        dismiss(animated: true)
    }
}

