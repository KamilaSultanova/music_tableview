//
//  TableViewController.swift
//  music_tableview
//
//  Created by Kamila Sultanova on 04.07.2023.
//

import UIKit

class TableViewController: UITableViewController {
    
//    var arrayArtists = ["Selena Gomez", "Harry Styles", "Rihanna", "Justin Bieber", "Lana Del Rey", "Years&Years", "Lana Del Rey", "Harry Styles"]
//    var arraySongs = ["Lose You to Love Me", "Falling", "Love on the brain", "Sorry", "Summertime sadness", "Take shelter", "Born to die", "Adore You"]
//    var arrayImage = ["selena1", "harry1", "rihanna1","justin1","lana1", "years1", "lana1", "harry1"]
//    var arrayImage2 = ["selena2", "harry2", "rihanna2","justin2","lana2", "years2", "lana2", "harry2"]
//    var arrayLyrics = ["You promised the world and I fell for it\nI put you first and you adored it\nSet fires to my forest\nAnd you let it burn\nSang off-key in my chorus\n'Cause it wasn't yours", "What am I now? What am I now?\nWhat if I'm someone I don't want around?\nI'm falling again, I'm falling again, I'm falling","And you got me like, oh\nWhat you want from me? (What you want from me?)\nAnd I tried to buy your pretty heart, but the price too high\nBaby you got me like, oh, mm\nYou love when I fall apart (fall apart)\nSo you can put me together\nAnd throw me against the wall","Is it too late now to say sorry?\nCause I'm missing more than just your body\nIs it too late now to say sorry?\nYeah I know that I let you down\nIs it too late to say that I'm sorry now?","I got my red dress on tonight\nDancin' in the dark, in the pale moonlight\nDone my hair up real big, beauty queen style\nHigh heels off, I'm feelin' alive","Take shelter (oh-oh-oh)\nTake the pressure (oh-oh-oh)\nDo what you want tonight\nIt's alright if you want to get used\nThen get used","Don't make me sad, don't make me cry\nSometimes love is not enough\nAnd the road gets tough, I don't know why\nKeep making me laugh\nLet's go get high\nThe road is long, we carry on\nTry to have fun in the meantime","Walk in your rainbow paradise (paradise)\nStrawberry lipstick state of mind (state of mind)\nI get so lost inside your eyes\nWould you believe it?"]
    
    var arrayPersons = [Person(artist: "Selena Gomez", song: "Lose You to Love Me", imagename: "selena1", imagename2: "selena2", lyrics: "You promised the world and I fell for it\nI put you first and you adored it\nSet fires to my forest\nAnd you let it burn\nSang off-key in my chorus\n'Cause it wasn't yours"),
                        Person(artist: "Harry Styles", song: "Falling", imagename: "harry1", imagename2: "harry2", lyrics: "What am I now? What am I now?\nWhat if I'm someone I don't want around?\nI'm falling again, I'm falling again, I'm falling"),
                        Person(artist: "Rihanna", song: "Love on the brain", imagename: "rihanna1", imagename2: "rihanna2", lyrics: "And you got me like, oh\nWhat you want from me? (What you want from me?)\nAnd I tried to buy your pretty heart, but the price too high\nBaby you got me like, oh, mm\nYou love when I fall apart (fall apart)\nSo you can put me together\nAnd throw me against the wall"),
                        Person(artist: "Justin Bieber", song: "Sorry", imagename: "justin1", imagename2: "justin2", lyrics: "Is it too late now to say sorry?\nCause I'm missing more than just your body\nIs it too late now to say sorry?\nYeah I know that I let you down\nIs it too late to say that I'm sorry now?"),
                        Person(artist: "Lana Del Rey", song: "Summertime sadness", imagename: "lana1", imagename2: "lana2", lyrics: "I got my red dress on tonight\nDancin' in the dark, in the pale moonlight\nDone my hair up real big, beauty queen style\nHigh heels off, I'm feelin' alive"),
                        Person(artist: "Years&Years", song: "Take shelter", imagename: "years1", imagename2: "years2", lyrics: "Take shelter (oh-oh-oh)\nTake the pressure (oh-oh-oh)\nDo what you want tonight\nIt's alright if you want to get used\nThen get used"),
                        Person(artist: "Lana Del Rey", song: "Born to die", imagename: "lana1", imagename2: "lana2", lyrics: "Don't make me sad, don't make me cry\nSometimes love is not enough\nAnd the road gets tough, I don't know why\nKeep making me laugh\nLet's go get high\nThe road is long, we carry on\nTry to have fun in the meantime"),
                        Person(artist: "Harry Styles", song: "Adore you", imagename: "harry1", imagename2: "harry2", lyrics: "Walk in your rainbow paradise (paradise)\nStrawberry lipstick state of mind (state of mind)\nI get so lost inside your eyes\nWould you believe it?")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    @IBAction func addSong(_ sender: Any) {
//        arrayArtists.append("Artist")
//        arraySongs.append("Song")
//        arrayImage.append("note")
//        arrayImage2.append("note")
//        arrayLyrics.append("Lyrics")
        
        arrayPersons.append(Person(artist: "New Artist", song: "Song", imagename: "note", imagename2: "note", lyrics: "Lyrics"))
        
        tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayPersons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MusicCell", for: indexPath)

        // Configure the cell...
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = arrayPersons[indexPath.row].artist
        
        let labelSongs = cell.viewWithTag(1001) as! UILabel
        labelSongs.text = arrayPersons[indexPath.row].song
        
        let labelImage = cell.viewWithTag(1002) as! UIImageView
        labelImage.image = UIImage(named: arrayPersons[indexPath.row].imagename)
        

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 94
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = storyboard?.instantiateViewController(identifier: "detailViewController") as! ViewController
        
//        detailVC.artist = arrayPersons[indexPath.row].artist
//        detailVC.song = arrayPersons[indexPath.row].lyrics
//        detailVC.imagetitle = arrayPersons[indexPath.row].imagename2
//        detailVC.songtitle = arrayPersons[indexPath.row].song
        
        detailVC.person = arrayPersons[indexPath.row]

        
        navigationController?.show(detailVC, sender: self)
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
//            arrayArtists.remove(at: indexPath.row)
//            arrayImage.remove(at: indexPath.row)
//            arraySongs.remove(at: indexPath.row)
//            arrayImage2.remove(at: indexPath.row)
//            arrayLyrics.remove(at: indexPath.row)
            arrayPersons.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
