//
//  RecipesViewController.swift
//  MHacksMealPlanningApp
//
//  Created by the Michigan Hanckers iOS Team on 10/27/21.
//

import UIKit

class RecipesViewController: UIViewController, UITableViewDataSource {
    

    @IBOutlet var tableView: UITableView!
    
    var recipes: [Recipe] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        
        Backend.instance.search(query: "Food") { results in
            self.recipes = results
            self.tableView.reloadData()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.recipes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath)
        let recipe = self.recipes[indexPath.row]
        cell.textLabel?.text = recipe.name
        return cell
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
