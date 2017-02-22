//
//  ViewController.swift
//  core-data-basics
//
//  Created by Mark Hamilton on 2/29/16.
//  Copyright © 2016 dryverless. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var recipes = [Recipe]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        
        tableView.dataSource = self
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        fetchAndSetResults()
        tableView.reloadData()
        
    
    }
    
    func fetchAndSetResults() {
        
        let app = UIApplication.shared.delegate as! AppDelegate
        
        let context = app.managedObjectContext
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Recipe")
        
        do {
            
            let results = try context.fetch(fetchRequest)
            self.recipes = results as! [Recipe]
            
        } catch let err as NSError {
            
            NSLog(err.debugDescription)
            
        }
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "recipeCell") as? RecipeCell {
            
            if let recipe = recipes[indexPath.row] as Recipe! {
                
                cell.configureCell(recipe)
                
                return cell
                
            } else {
                
                return RecipeCell()
                
            }
            
            
        } else {
            
            return RecipeCell()
            
        }
        
    }

}

