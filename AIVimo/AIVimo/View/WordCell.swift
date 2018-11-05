//
//  WordCell.swift
//  AIVimo
//
//  Created by Rishi Kumar on 01/11/18.
//  Copyright © 2018 Rishi Kumar. All rights reserved.
//

import UIKit

class WordCell: UICollectionViewCell {
    @IBOutlet weak var wordButton: UIButton!
    
    func setupData(word:String) {
        wordButton.setTitle(word, for: .normal)
    }
}
