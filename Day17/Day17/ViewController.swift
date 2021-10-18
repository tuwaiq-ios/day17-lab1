//
//  ViewController.swift
//  Day17
//
//  Created by Tsnim Alqahtani on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var ourImageView: UIImageView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func openPressed(_ sender: Any) {
        let piker = UIImagePickerController()
        piker.allowsEditing = true
        piker.delegate = self
        present(piker, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let image = (info[.editedImage] ?? info [.originalImage]) as? UIImage
        ourImageView.image = image
        
        dismiss(animated : true )
    }
        
    }


