//
//  UIViewController+UIImagePickerController.swift
//  Steve
//
//  Created by Sudhir Kumar on 23/05/18.
//  Copyright © 2018 Appster. All rights reserved.
//

import UIKit
import AVFoundation
import MobileCoreServices

extension UIViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    /**
     An IBAction which opens UIImagePickerController. You just need to connect it to a UIButton in your User Interface. all the hassel will be handled on by its own. you can also call this function programatically of course

     - parameter sender: UIButton in user interface which will fire this action
     */
    @IBAction func openImagePickerController(_ sender: UIButton) {

        let status = AVCaptureDevice.authorizationStatus(for: AVMediaType.video)

        if status == AVAuthorizationStatus.denied {
            let alertController = UIAlertController(title: NSLocalizedString("You do not have permissions enabled for this.", comment: "You do not have permissions enabled for this."), message: NSLocalizedString("Would you like to change them in settings?", comment: "Would you like to change them in settings?"), preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: { _ in
                guard let url = URL(string: UIApplicationOpenSettingsURLString) else { return }
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            })
            let cancelAction = UIAlertAction(title: NSLocalizedString("Cancel", comment: "Cancel"), style: .cancel, handler: nil)

            alertController.addAction(okAction)
            alertController.addAction(cancelAction)
            presentAlert(alertController)
        } else {
            let alertController = UIAlertController(title: NSLocalizedString("Where would you like to get photos from?", comment: "Where would you like to get photos from?"), message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
            alertController.popoverPresentationController?.sourceRect = sender.bounds
            alertController.popoverPresentationController?.sourceView = sender
            let cancelAction = UIAlertAction(title: NSLocalizedString("Cancel", comment: "Cancel"), style: .cancel, handler: nil)
            presentAlert(alertController)

            let imagePickerController = UIImagePickerController()
            imagePickerController.delegate = self
            imagePickerController.mediaTypes = [kUTTypeImage as String]
            imagePickerController.allowsEditing = true
            imagePickerController.modalPresentationStyle = UIModalPresentationStyle.popover
            imagePickerController.popoverPresentationController?.sourceView = sender
            imagePickerController.popoverPresentationController?.sourceRect = sender.bounds

            let camera = UIAlertAction(title: NSLocalizedString("Take a Photo", comment: "Take a Photo"), style: .default) { (camera) -> Void in
                imagePickerController.sourceType = .camera
                self.present(imagePickerController, animated: true, completion: nil)
            }

            let photoLibrary = UIAlertAction(title: NSLocalizedString("Choose from Library", comment: "Choose from Library"), style: .default) { (photoLibrary) -> Void in

                imagePickerController.sourceType = .photoLibrary
                self.present(imagePickerController, animated: true, completion: nil)
            }

            if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera) {
                alertController.addAction(camera)
            } else if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary) {
                alertController.addAction(photoLibrary)
            }
            alertController.addAction(cancelAction)
        }
    }

    fileprivate func presentAlert(_ sender: UIAlertController) {
        present(sender, animated: true, completion: nil)
    }

    public func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
}
