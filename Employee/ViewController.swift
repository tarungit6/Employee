//
//  ViewController.swift
//  Employee
//
//  Created by Tarun Kumar on 12/07/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    let viewModel = EmployeeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        viewModel.fetchEmployees {
            DispatchQueue.main.async{
                self.tableView.reloadData()
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.employees.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmployeeCell", for: indexPath) as! EmployeeTableViewCell
        let employee = viewModel.employees[indexPath.row]
        cell.configure(with: employee)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let employee = viewModel.employees[indexPath.row]
        performSegue(withIdentifier: "showDetail", sender: employee)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let detailVC = segue.destination as? DetailViewController,
        let employee = sender as? Employee{
            detailVC.employee = employee
        }
    }


}

