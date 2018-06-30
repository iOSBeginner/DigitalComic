//
//  MainTableViewController.swift
//  ComicDemo
//
//  Created by 蘇健豪 on 2018/6/30.
//  Copyright © 2018年 蘇健豪. All rights reserved.
//

import UIKit
import AudioToolbox

class MainTableViewController: UITableViewController {
    
    var secondCell: UITableViewCell?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(UINib.init(nibName: "GridTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        self.tableView.separatorStyle = .none
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 18
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! GridTableViewCell
        
        cell.ComicPicture?.image = UIImage(named: "\(indexPath.row)")
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 123
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 1 {
            // 震動
            var soundID = SystemSoundID(kSystemSoundID_Vibrate)
            AudioServicesPlaySystemSound(soundID)
            
            // 聲音
            let path = Bundle.main.path(forResource: "scream_1", ofType: "mp3")
            let baseURL = NSURL(fileURLWithPath: path!)
            AudioServicesCreateSystemSoundID(baseURL, &soundID)
            AudioServicesPlaySystemSound(soundID)
        }
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if let cell = tableView.cellForRow(at: IndexPath.init(row: 0, section: 0)) {
            let rect = tableView.convert(cell.frame, from: tableView.superview)
            if rect.origin.y == UIScreen.main.bounds.height / 2 {
                
            }
        }

    }
}
