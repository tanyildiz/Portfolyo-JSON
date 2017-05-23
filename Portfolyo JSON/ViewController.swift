//
//  ViewController.swift
//  Portfolyo JSON
//
//  Created by niyazi on 22/05/2017.
//  Copyright © 2017 tanyildiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    var works = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let urlString = "http://www.tanyildiz.com/?json=1"
        let url = URL(string: urlString)
        let task = URLSession.shared.dataTask(with: url!)
        { (data, response, error) in
            if error != nil
            {
                    print(error!)
                } else {
                        do {
                            let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as? NSDictionary
                            if let jsonDic = json {
                                for i in 0..<jsonDic.count {
                                    if let workTitles = jsonDic[i] as? NSDictionary {
                                        self.works.append(workTitles[self.works] as! NSString as String)
                                                                                }
                                                        }
                                print(self.works)
                                                }

                            }
                        catch {
                            print(error)
                              }
                        }
                }; task.resume()
            }
    
    
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return works.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
    }
}


