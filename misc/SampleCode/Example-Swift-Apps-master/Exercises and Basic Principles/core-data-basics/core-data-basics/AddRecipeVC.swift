//
//  AddRecipeVC.swift
//  core-data-basics
//
//  Created by Mark Hamilton on 3/7/16.
//  Copyright © 2016 dryverless. All rights reserved.
//

import UIKit
import CoreData

class AddRecipeVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var recipeTitle: UITextField!
    @IBOutlet weak var recipeIngredients: UITextField!
    @IBOutlet weak var recipeSteps: UITextField!
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var addRecipeButton: UIButton!
    @IBOutlet weak var addImageButton: UIButton!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        roundCornersOfView(recipeImage)
        roundCornersOfView(addImageButton)
        
    }
    
    func roundCornersOfView(_ view: UIView!) {
        
        view.layer.cornerRadius = 15.0
        view.clipsToBounds = true
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        
        imagePicker.dismiss(animated: true, completion: nil)
        recipeImage.image = image
        
    }
    
    @IBAction func addRecipeImage(_ sender: AnyObject!) {
        
        present(imagePicker, animated: true, completion: nil)
        
    }
    
    @IBAction func createRecipe(_ sender: AnyObject!) {
        
        if let title: String = recipeTitle.text, title != "" {
            
            let app = UIApplication.shared.delegate as! AppDelegate
            
            let context = app.managedObjectContext
            
            let entity = NSEntityDescription.entity(forEntityName: "Recipe", in: context)!
            
            let recipe = Recipe(entity: entity, insertInto: context)
            
            recipe.title = title
            
            if let ingredients: String = recipeIngredients.text ?? "" {
                
                recipe.ingredients = ingredients
                
            }
            
            if let steps: String = recipeSteps.text ?? "" {
                
                recipe.steps = steps
                
            }
            
            if let image: UIImage = recipeImage.image ?? UIImage() {
                
                recipe.setRecipeImage(image)
                
            }
            
            context.insert(recipe)
            
            do {
                
                // Uses Persistence Store Coordinator to Try and Save Data
                try context.save()
                
            } catch {
                
                NSLog("Failed to save recipe to Core Data.")
            }
            
            self.navigationController?.popViewController(animated: true)
            
        }
        
    }

}
