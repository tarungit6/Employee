This is a simple iOS application that displays a list of employees fetched from a provided API. The app is built using MVVM architecture and includes a splash screen, a home screen with a list of employees, and a detail screen showing employee details.

Features:-
Splash Screen: Displays the app icon for 3 seconds when the app is launched.
Home Screen: Lists employees with their images and names using a UITableView.
Detail Screen: Shows detailed information about an employee when an item from the list is selected.


Requirements:-
iOS 13.0+
Xcode 12.0+
Swift 5.0+

Project Structure:-
AppDelegate.swift: Configures the app at launch.
SceneDelegate.swift: Manages the app's UI scene lifecycle.
ViewController.swift: Displays the list of employees and handles navigation to the detail screen.
EmployeeTableViewCell.swift: Custom UITableViewCell for displaying employee information.
DetailViewController.swift: Displays detailed information about a selected employee.
EmployeeViewModel.swift: Manages the fetching and handling of employee data.
Employee.swift: Model for the employee data.

API:-
The employee data is fetched from the following API:
URL: https://dummyapis.com/dummy/employee

How It Works:-
Splash Screen
The splash screen is configured in the LaunchScreen.storyboard and the launch delay is added in AppDelegate.swift
Home Screen
The home screen is implemented using a UITableView in ViewController.swift.
The EmployeeViewModel fetches the data from the API and binds it to the table view.
When a user selects an employee, the app navigates to the detail screen using a segue.
Detail Screen
The detail screen is implemented in DetailViewController.swift.
The selected employee's details are passed from ViewController using the prepare(for:sender:) method.
The UI elements are set up programmatically with NSLayoutConstraints.
