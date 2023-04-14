//
//  ViewController.swift
//  DemoTableview
//
//  Created by mayank ranka on 13/04/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    var mytableview : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadTable()
    }
    
    func loadTable(){
        mytableview = UITableView()
        mytableview.translatesAutoresizingMaskIntoConstraints = false
        mytableview.register(myTableViewCell.self, forCellReuseIdentifier: "myTableViewCell")
        mytableview.dataSource = self
        mytableview.delegate = self
        mytableview.insetsLayoutMarginsFromSafeArea = true
        view.addSubview(mytableview)
        
        NSLayoutConstraint.activate([
            mytableview.topAnchor.constraint(equalTo: view.topAnchor),
            mytableview.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mytableview.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            mytableview.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myTableViewCell", for: indexPath) as! myTableViewCell
//        cell.textLabel?.text = "Player"
        cell.loadContent()
        cell.outOfLabel.text = "1/1"
        
//        if indexPath.row == 3 {
//            cell.playerCrown.isHidden = false
//        } else {
//            cell.playerCrown.isHidden = true
//        }
//
        return cell
        }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

