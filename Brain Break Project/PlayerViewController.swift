//
//  PlayerViewController.swift
//  Brain Break Project
//
//  Created by Sanjita Patwardhan on 6/16/21.
//

import UIKit

class PlayerViewController: UITableViewController {
    
    public var position: Int = 0
    public var songs: [Song] = []
    
    @IBOutlet var holder: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if holder.subviews.count == 1 {
            configure()
        }
    }
    
    func configure(){
        //player
        
        
        //element stuff
    }
    
}


