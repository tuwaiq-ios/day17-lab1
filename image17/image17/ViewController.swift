//
//  ViewController.swift
//  image17
//
//  Created by PC on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {

    @IBOutlet weak var imageview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad() }


    @IBAction func button(_ sender: Any) {
    

        let picker = UIImagePickerController()
            picker.allowsEditing = true
            picker.delegate = self
            present(picker, animated: true)
          }
    
    
          func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            let image = info[.editedImage] ?? info [.originalImage] as? UIImage
              imageview.image = image as? UIImage
            dismiss(animated: true)
          }
        }
