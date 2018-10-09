//
//  AllMoudleViewController.swift
//  TitanKingLibrary
//
//  Created by quanjunt on 2018/10/8.
//  Copyright © 2018年 quanjunt. All rights reserved.
//

import UIKit

class AllMoudleViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    fileprivate var dataArr = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataArr = ["APP评分", "签字效果", "获取手机信息"]
        tableView.reloadData()
    }
}

// MARK: 代理
extension AllMoudleViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        cell?.selectionStyle = .none
        cell?.accessoryType = .disclosureIndicator
        cell?.textLabel?.text = dataArr[indexPath.row]
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let vcs = [AllMoudleViewController()]
//        navigationController?.pushViewController(vcs[indexPath.row], animated: true)
    }
}
