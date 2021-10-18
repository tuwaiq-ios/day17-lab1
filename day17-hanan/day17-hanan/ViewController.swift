//
//  ViewController.swift
//  day17-hanan
//
//  Created by  HANAN ASIRI on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,
UINavigationControllerDelegate{

 
    @IBOutlet var ourimageview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func openpressed(_ sender: Any) {
        let picker = UIImagePickerController ()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
        
      
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = (info[.editedImage] ?? info[.originalImage]) as! UIImage
        ourimageview.image = image
        dismiss(animated: true)
}
}

