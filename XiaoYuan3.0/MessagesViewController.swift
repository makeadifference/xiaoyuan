//
//  MessagesViewController.swift
//  XiaoYuan3.0
//
//  Created by drf on 17/2/28.
//  Copyright © 2017年 drf. All rights reserved.
//

import UIKit

class MessagesViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{

    let testMessage : [[String : String ]] = [
        ["key" : "user1" ],
        ["key" : "user1" ]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.testMessage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let dictionary = self.testMessage[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "messagescell")
        cell?.textLabel?.text = dictionary["key"]
        return cell!
    }

}
