//
//  DataViewController.swift
//  WYSA
//
//  Created by Ayush Singh on 17/02/21.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var orderDate: UILabel!
    @IBOutlet weak var orderID: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var orderPrize: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        email.adjustsFontSizeToFitWidth = true
        orderID.text = FirstName[DataNum]+Phone[DataNum]
        orderDate.text = TodaysDate[DataNum]
        email.text = Email[DataNum]
        Name.text = FirstName[DataNum]+" "+LastName[DataNum]
        orderPrize.text = Prize[DataNum]
        print(DataNum)
        // Do any additional setup after loading the view.
    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
