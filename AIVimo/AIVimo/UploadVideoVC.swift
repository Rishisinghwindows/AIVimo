//
//  FirstViewController.swift
//  AIVimo
//
//  Created by Rishi Kumar on 30/10/18.
//  Copyright © 2018 Rishi Kumar. All rights reserved.
//

import UIKit
import MobileCoreServices
import Speech
import AVFoundation

class UploadVideoVC: UIViewController,UIDocumentPickerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func uploadbuttonTapped(_ sender: Any) {
        chooseVideoFrom()
    }
    
    fileprivate func transcribeFile(url: URL) {
        
        // 1
        guard let recognizer = SFSpeechRecognizer() else {
            print("Speech recognition not available for specified locale")
            return
        }
        
        if !recognizer.isAvailable {
            print("Speech recognition not currently available")
            return
        }
        
        // 2
        let request = SFSpeechURLRecognitionRequest(url: url)
        
        // 3
        
        print("recognizer start")
        recognizer.recognitionTask(with: request) {
             (result, error) in
            guard let result = result else {
                print("There was an error transcribing that file")
                return
            }
            
            print("result word by word:", result.bestTranscription.formattedString)
            
            // 4
            if result.isFinal {
                print("result.bestTranscription.formattedString", result.bestTranscription.formattedString)
                
            }
        }
    }
    
    func saveVideoFile(videoUrl:URL) {
        
        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let documentDirectory = path.first! as NSString
        let fileName = Utilities.createVideoFileName()
        let PathFileName = documentDirectory.appendingPathComponent(fileName as String)
        
        //print(PathFileName)
        let url = URL.init(string: PathFileName)
      
       //let url = URL.init(string: PathFileName)
       
        do {
             let videoData = try Data(contentsOf: videoUrl)
//            let asset = AVURLAsset(url: videoURL as! URL , options: nil)
//            let imgGenerator = AVAssetImageGenerator(asset: asset)
//            imgGenerator.appliesPreferredTrackTransform = true
//            let cgImage = try imgGenerator.copyCGImage(at: CMTimeMake(0, 1), actualTime: nil)
//            let thumbnail = UIImage(cgImage: cgImage)
//            imgView.image = thumbnail
//            // thumbnail here
            try videoData.write(to: url!)
             transcribeFile(url: videoUrl)
            
        } catch let error {
            print("*** Error generating thumbnail: \(error.localizedDescription)")
        }

    }
    
}

extension UploadVideoVC {
    //MARK: - ImagePicker
    func chooseVideoFrom() {
        /* Open Action Sheet for Image */
        Utilities.openActionSheetWith(arrOptions:["Add Video from gallery", "Take a new Video" , "Others"],openIn: self) { actionIndex in
            //Utilities.openActionSheetWith(openIn: self) { actionIndex in
            switch actionIndex {
            case 0: // Add photo from gallery
                self.openImageGalleryOrCamera(openGallery: true)
                break
            case 1: // Take a new photo
                self.openImageGalleryOrCamera(openGallery: false)
                break
            case 2: // Take a new photo
                self.openDocumentPicker()
                break
            default:
                self.openImageGalleryOrCamera(openGallery: true)
                break
            }
        }
    }
    
    override func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: Any]) {
        dismiss(animated: true, completion: {
            let videoURL = (info[UIImagePickerControllerMediaURL] as? NSURL)!
            self.transcribeFile(url: videoURL as URL)
        })
    }
    
    /* Open Image Gallery or Camera as per user selection */
    func openImageGalleryOrCamera(openGallery: Bool) {
        let picker: UIImagePickerController? = UIImagePickerController()
        picker?.delegate = self
        picker!.sourceType = openGallery ? .photoLibrary : UIImagePickerController.isSourceTypeAvailable(.camera) ? .camera : .photoLibrary
        picker?.allowsEditing = true
        picker?.mediaTypes = [kUTTypeMovie as String]
        present(picker!, animated: true, completion: nil)
    }
    
    func openDocumentPicker() {
        let types: [String] = [kUTTypeMovie as String]
        let documentPicker = UIDocumentPickerViewController(documentTypes: types, in: .import)
        documentPicker.delegate = self
        documentPicker.modalPresentationStyle = .formSheet
        self.present(documentPicker, animated: true, completion: nil)
    }
    
    
    public func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentAt url: URL) {
        let myURL = url as URL
        
        do {
           // let data = try Data(contentsOf: myURL)
            // do something with data
            // if the call fails, the catch block is executed
            //transcribeFile(url: myURL)
            saveVideoFile(videoUrl: myURL)
        } catch {
            print(error.localizedDescription)
        }
        print("import result : \(myURL)")
        
    }
    
    public func documentMenu(_ documentMenu:UIDocumentMenuViewController, didPickDocumentPicker documentPicker: UIDocumentPickerViewController) {
        documentPicker.delegate = self
        present(documentPicker, animated: true, completion: nil)
    }
    
    func documentPickerWasCancelled(_ controller: UIDocumentPickerViewController) {
        print("view was cancelled")
        dismiss(animated: true, completion: nil)
    }
}

