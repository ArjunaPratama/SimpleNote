//
//  AddTaskViewController.swift
//  SimpleNote
//
//  Created by DOTS2 on 10/24/17.
//  Copyright © 2017 Arjuna. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    @IBOutlet weak var etDescription: UITextField!
    @IBOutlet weak var etDay: UITextField!
    @IBOutlet weak var etNameTask: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnSaveTask(_ sender: Any) {
        //deklarasi context
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        //deklarasi task
        let nameTask = Task(context: context) //deklarasi nameTask sebagai konteks dari entiti Task
        nameTask.name_task = etNameTask.text //deklarasikan bahwa nameTask.name_task itu isinya dari etNametask.text
        
        nameTask.day_task = etDay.text
        nameTask.des_task = etDescription.text
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
