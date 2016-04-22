//
//  PlayersTableViewController.swift
//  RatingsTutorial
//
//  Created by Kevin Grozav on 4/21/16.
//  Copyright © 2016 Kevin Grozav. All rights reserved.
//

import UIKit

class PlayersTableViewController: UITableViewController {

    var players:[Player] = playersData
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            return 1
    }
    
//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        print("Called CellForRowAtIndexPath")
//        let cell = tableView.dequeueReusableCellWithIdentifier("PlayerCell", forIndexPath: indexPath)
//        
//        let player = players[indexPath.row] as Player
//        print("Name: \(player.name)")
//        cell.textLabel?.text = player.name
//        cell.detailTextLabel?.text = player.game
//        return cell
//    }
    
    
//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCellWithIdentifier("PlayerCell", forIndexPath: indexPath) //1
//        
//        let player = players[indexPath.row] as Player //2
//        
//        if let nameLabel = cell.viewWithTag(100) as? UILabel { //3
//            nameLabel.text = player.name
//        }
//        if let gameLabel = cell.viewWithTag(101) as? UILabel {
//            gameLabel.text = player.game
//        }
//        if let ratingImageView = cell.viewWithTag(102) as? UIImageView {
//            ratingImageView.image = self.imageForRating(player.rating)
//        }
//        return cell
//    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)
        -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("PlayerCell", forIndexPath: indexPath)
                as! PlayerCell
            
            let player = players[indexPath.row] as Player
            cell.player = player
            return cell
    }
    
    
    
}
