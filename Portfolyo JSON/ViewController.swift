//
//  ViewController.swift
//  Portfolyo JSON
//
//  Created by niyazi on 22/05/2017.
//  Copyright © 2017 tanyildiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    
    
    var works = [String]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let urlStr = "http://www.tanyildiz.com/?json=1"
        let url = URL(string: urlStr)
        let task = URLSession.shared.dataTask(with: url!) {(data, response, error) in
            
            if error != nil
            {
                print(error!)
            } else
            {
                do
                {
                    let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as? NSArray
                    let val = json?.value(forKey: "posts") as! NSDictionary
                    let titleName = val.value(forKey: "title")
                    print(titleName!)
                   
                    
//                    let post = json?.dictionaryWithValues(forKeys: ["posts"])
//                    for i in (post?.values)! {
//                    }
                }
                catch
                {
                    print(error)
                }
            }
        }; task.resume()
    }
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return works.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! CellTableViewCell
        cell.workName.text = works[indexPath.row]
        print(cell)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

