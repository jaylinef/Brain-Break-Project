//
//  ViewController.swift
//  Brain Break Project
//
//  Created by Jayline Febles on 6/15/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    

    @IBOutlet var table: UITableView!
    
    var songs = [Song]()

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSongs()
        table.delegate = self
        table.dataSource = self
        
    }
    func configureSongs() {
        songs.append(Song(name: "Background",
                          albumName: "IS",
                          artistName: "A",
                          imageName: "Test",
                          trackName: "Test"))
        songs.append(Song(name: "This",
                          albumName: "IS",
                          artistName: "A",
                          imageName: "Test",
                          trackName: "Test"))
        songs.append(Song(name: "This",
                          albumName: "IS",
                          artistName: "A",
                          imageName: "Test",
                          trackName: "Test"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableHeaderFooterView(withIdentifier: "cell", for: indexPath)
        
        return cell
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
        tableView.deselectRow(at: indexPath, animated: true)
        
        let position = indexPath.row
        //our songs!!
        guard let vc = storyboard?.instantiateViewController(identifier: "player") else{
             return
        }
        present(vc, animated: true)
                
    


}

struct Song {
    let name: String
    let albumName: String
    let artistName: String
    let imageName: String
    let trackName: String
}
}
