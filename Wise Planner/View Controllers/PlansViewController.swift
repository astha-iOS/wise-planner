//
//  PlansViewController.swift
//  Wise Planner
//
//  Created by Astha yadav on 21/02/21.
//

import UIKit

class PlansViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationBarUI()
    }
    
    func navigationBarUI(){
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Plans", style: .plain, target: self, action: #selector(addTapped))

    }
    
    @objc func addTapped(){
        
    }

}

extension PlansViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "PlansTableViewCell") as! PlansTableViewCell
        
        return cell
    }
    
     func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
            cell.animationForMoveLeftToRight(view:cell.contentView)

       }
    

}
