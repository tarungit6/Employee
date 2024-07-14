//
//  EmployeeTableViewCell.swift
//  Employee
//
//  Created by Tarun Kumar on 12/07/24.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell{
    @IBOutlet weak var employeeImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    func configure(with employee: Employee){
        nameLabel.text = employee.name
        if let url = URL(string: employee.imageUrl){
            DispatchQueue.global().async{
                if let data = try? Data(contentsOf: url){
                    DispatchQueue.main.async{
                        self.employeeImageView.image = UIImage(data: data)
                    }
                }
            }
        }
    }
}
