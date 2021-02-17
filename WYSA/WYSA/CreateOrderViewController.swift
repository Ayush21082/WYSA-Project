//
//  CreateOrderViewController.swift
//  WYSA
//
//  Created by Ayush Singh on 17/02/21.
//

import UIKit

class CreateOrderViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {

    var allCellsText = ["", "", "","","", "", "", ""]
    
    let sections = ["Customer Contact Info", "Shipment Address"]

    let items = [
        ["First Name", "Last Name", "Phone","Email"],
        ["Street 1", "Street 2", "City", "State"]
    ]
    let tags = [        [0, 1, 2,3],
                        [4, 5, 6, 7]
    ]
    
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()

        tableView.delegate = self
        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
   
        return self.sections[section]
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        
        return self.sections.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items[section].count
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create a new cell if needed or reuse an old one
        let cell: CellTableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "Cell") as! CellTableViewCell
        cell.questions?.text = items[indexPath.section][indexPath.row]
        cell.textBox.tag = tags[indexPath.section][indexPath.row]
        cell.textBox.delegate = self
        
        
        return cell
    }
        
    @IBAction func save(_ sender: Any) {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        let result = formatter.string(from: date)
        let randomFloat = Int.random(in: 1..<10)

        
        TodaysDate.append(result)
        Prize.append("$\(randomFloat)")
        FirstName.append(allCellsText[0])
        LastName.append(allCellsText[1])
        Phone.append(allCellsText[2])
        Email.append(allCellsText[3])
        Street1.append(allCellsText[4])
        Street2.append(allCellsText[5])
        City.append(allCellsText[6])
        State.append(allCellsText[7])
        
        //Segue to Home
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "HomeViewController")
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true) // this line shows error

  
    }
    func textFieldDidEndEditing(_ textField: UITextField) {

        allCellsText[textField.tag] = textField.text!

        print(allCellsText)
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
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
