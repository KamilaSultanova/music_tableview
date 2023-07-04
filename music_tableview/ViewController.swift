//
//  ViewController.swift
//  music_tableview
//
//  Created by Kamila Sultanova on 04.07.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var textSong: UITextView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var labelSong: UILabel!
    
//    var artist = ""
//    var song = ""
//    var imagetitle = ""
//    var songtitle = ""
    
    var person = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelName.text = person.artist
        textSong.text = person.lyrics
        imageView.image = UIImage(named: person.imagename2)
        labelSong.text = person.song
        
    }


}

