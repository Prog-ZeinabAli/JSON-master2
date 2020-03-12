//
//  PostViewController.swift
//  JSON
//
//  Created by test1 on 3/11/20.
//  Copyright © 2020 test1. All rights reserved.
//

import UIKit

class PostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func post(_ sender: Any) {
        print("hey")
        let parameters = ["sortby":"1","cat":"1","category_id":"1"]
           print("i finshed reading cats")
        guard let url = URL(string: "http://blog-api.turathalanbiaa.com/api/posttpagination" ) else {return}
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        //request.addValue("application/json", forHTTPHeaderField: "Content-Type")
           print("i finished posting")
        guard let httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: []) else {return}
        request.httpBody = httpBody
        print("i reached the ddamn session")
        let session = URLSession.shared
        session.dataTask(with: request) { (data, response,error) in
            if let response = response{
                print(response)
            }
            if let data = data {
                do{
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                }catch{
                    print(error)
                }
            }
            } .resume()
        
    }
    
}
