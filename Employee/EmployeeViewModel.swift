import Foundation

class EmployeeViewModel{
    var employees: [Employee] = []
    
    func fetchEmployees(completion: @escaping() -> Void){
        let url = URL(string: "https://dummyapis.com/dummy/employee")!
        URLSession.shared.dataTask(with: url){ data, response, error in
            if let data = data{
                let decoder = JSONDecoder()
                self.employees = (try? decoder.decode([Employee].self, from: data)) ?? []
                completion()
            }else{
                print("Failed to fetch employee:",error ?? "Unknown error")
            }
        }.resume()
    }
}
