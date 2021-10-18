//
//  ViewController.swift
//  Day17
//
//  Created by Fawaz on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
 
  @IBOutlet weak var ourImage: UIImageView!
  
  @IBAction func openImage(_ sender: Any) {
    let pick = UIImagePickerController()
    pick.allowsEditing = true
    pick.delegate = self
    present(pick, animated: true)
  }
  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
    
    let image = (info[.editedImage] ?? info[.originalImage]) as? UIImage;
    
    ourImage.image = image
    dismiss(animated: false)
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }


}

