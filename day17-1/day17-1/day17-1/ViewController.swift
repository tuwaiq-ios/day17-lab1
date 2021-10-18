//
//  ViewController.swift
//  day17-1
//
//  Created by sally asiri on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController , UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var ourImageViow: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func openPressed(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
       let image = info[.originalImage] as? UIImage
        ourImageViow.image = image
        dismiss(animated: true)
    }
    
}

