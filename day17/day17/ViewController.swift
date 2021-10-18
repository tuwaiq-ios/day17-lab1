//
//  ViewController.swift
//  day17
//
//  Created by Kholod Sultan on 12/03/1443 AH.
//

import UIKit

class ViewController:UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    
    
    @IBOutlet weak var Myimageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func OpenPressed(_ sender: Any) {
        
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = (info[ .editedImage], info[.originalImage]) as? UIImage
        Myimageview.image = image
        dismiss(animated: true)
    }


}


