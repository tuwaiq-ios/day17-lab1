//
//  ViewController.swift
//  Day17
//
//  Created by Sara M on 12/03/1443 AH.
//


import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var ourPhotoView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func openPressed(_ sender: Any) {
        let picker = UIImagePickerController ()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let image = (info[.editedImage] ?? info[.originalImage]) as? UIImage
        ourPhotoView.image = image
        dismiss(animated: true)
    }
}
