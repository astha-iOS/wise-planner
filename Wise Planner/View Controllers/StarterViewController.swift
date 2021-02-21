//
//  StarterViewController.swift
//  Wise Planner
//
//  Created by Astha yadav on 20/02/21.
//

import UIKit

class StarterViewController: UIViewController {

    @IBOutlet weak var bacgroundImage: UIImageView!
    @IBOutlet weak var wishMessageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        getTimeOfTheDay()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PlansViewController") as? PlansViewController {
                self.navigationController?.pushViewController(vc, animated: true)
            }
        }
        
    }
    
    //MARK:- Get time of the day
    func getTimeOfTheDay(){
        let hour = Calendar.current.component(.hour, from: Date())

        switch hour {
        case 6..<12 :
            
            wishMessageLabel.text = "Good Morning"
            bacgroundImage.image = UIImage(named: "splash")
        case 12 :
            
            wishMessageLabel.text = "Good Noon"
            bacgroundImage.image = UIImage(named: "splash")
        case 13..<17 :
            
            wishMessageLabel.text = "Good Afternoon"
            bacgroundImage.image = UIImage(named: "afternoon")
        case 17..<22 :
            
            wishMessageLabel.text = "Good Evening"
            bacgroundImage.image = UIImage(named: "sunset")
        default:
            
            wishMessageLabel.text = "Good Night"
            bacgroundImage.image = UIImage(named: "night")
        }
    }
    

}
