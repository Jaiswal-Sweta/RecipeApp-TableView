//
//  AllFoodListViewController.swift
//  Assignment7
//
//  Created by DCS on 09/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class AllFoodListViewController: UIViewController {
    
    private let myTableView=UITableView()
    private var FoodArray=["Pavbhaji","Masala Dhosa","Panir Masala"]
    private var Fooddesc=["A spicy curry of mixed  vegetables (bhaji) cooked in a special blend of spices and served with soft buttered pav., is any Indian food lover’s dream.","This classic Masala dosa recipe makes perfectly light, soft and crispy crepes stuffed with a savory, wonderfully spiced potato and onion filling","Paneer Masala is easy to make dish of paneer where paneer cubes are simmered in an onion-tomato based spicy gravy."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title="Custom Table View"
        view.addSubview(myTableView)
        setupTableView()
    }
    
    override func viewDidLayoutSubviews() {
        myTableView.frame=CGRect(x : 0,
                                 y : view.safeAreaInsets.top,
                                 width : view.frame.size.width,
                                 height: view.frame.size.height-view.safeAreaInsets.top-view.safeAreaInsets.bottom)
        
    }
}

extension AllFoodListViewController: UITableViewDataSource, UITableViewDelegate {
    
    private func setupTableView()
    {
        myTableView.dataSource = self
        myTableView.delegate = self
        myTableView.register(FoodListCell.self, forCellReuseIdentifier: "FoodListCell")
    }
    func passData()
    {
        let s = SpecificFoodDetailViewController()
        navigationController?.pushViewController(s, animated: true)
        present(s,animated: false)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FoodArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodListCell", for: indexPath) as! FoodListCell
        //        cell.textLabel?.text = cityArray[indexPath.row]
        cell.setupCityCellWith(title: FoodArray[indexPath.row],f: Fooddesc[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(FoodArray[indexPath.row])
        UserDefaults.standard.setValue(FoodArray[indexPath.row], forKey: "FoodName")
        passData()
    }
}
