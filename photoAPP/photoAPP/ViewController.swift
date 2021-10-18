//
//  ViewController.swift
//  photoAPP
//
//  Created by MacBook on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var ourImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func openPressed(_ sender: Any) {
        
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker,animated: true)
    }
                
                
                
                func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
                    
                    let image = (info[.editedImage] ?? info[.originalImage]) as? UIImage
            
                    ourImageView.image = image
            dismiss(animated: true)
            
            
            
        }
    
    


}

