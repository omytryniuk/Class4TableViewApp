//
//  ViewController.swift
//  TableViewApplication
//
//  Created by Oleg Mytryniuk on 2019-10-09.
//  Copyright © 2019 Oleg Mytryniuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var foods: [String]?
    var calories: [Int]?
    var foodData: [(food: String, calories: Int)]?
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.foods = ["Apple", "Banana", "Orange", "Burger", "Fries", "Pizza"]
        self.calories = [50, 90, 40, 300, 320, 270]
        
        self.foodData = [(food: "Apple", calories: 50), (food: "Banana", calories: 90), (food: "Orange", calories: 40)]
//        Option 1. Code
//        self.tableView.register(FoodTableViewCell.self, forCellReuseIdentifier: "FoodCell")
        
        //Option 2. Nib
        let nib = UINib(nibName: "FoodNibCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "FoodCell")
        
        self.tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.foodData?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let foodName = self.foodData![indexPath.row].food
        let caloriesName = self.foodData![indexPath.row].calories
        
        
        //Option 1. Code
//        guard let cell = self.tableView.dequeueReusableCell(withIdentifier: "FoodCell") as? FoodTableViewCell else { return UITableViewCell() }
        
// Option 2. NIB
        guard let cell = self.tableView.dequeueReusableCell(withIdentifier: "FoodCell") as? FoodNibCell else { return UITableViewCell() }
        
        cell.setCell(name: foodName, calories: caloriesName, image: foodName)
        
        return cell
        
//        let cell = UITableViewCell(style: .default, reuseIdentifier: "")
//        cell.textLabel?.text = "Hello"
        
//        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let foodName = self.foodData?[indexPath.row].food {
            let alertController = UIAlertController(title: "Item selected", message: "You have selected", preferredStyle: .alert)
            
            let alertAction = UIAlertAction(title: "Okay", style: .cancel, handler: nil)
            let printAction = UIAlertAction(title: "Display", style: .default, handler: {
                (action) in
                print("***selected \(foodName)")
            })
            
            alertController.addAction(alertAction)
            alertController.addAction(printAction)
            
            self.present(alertController, animated: true, completion: nil)
        }
    }


}

