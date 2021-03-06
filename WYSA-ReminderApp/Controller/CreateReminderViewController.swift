//
//  CreateReminderViewController.swift
//  WYSA-ReminderApp
//
//  Created by Chaitanya Deshpande on 28/06/21.
//
import UIKit

class CreateReminderViewController: UIViewController {
    
    
    @IBOutlet weak var dateTimePicker: UIDatePicker!
    @IBOutlet weak var noteTextField: UITextField!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        saveButton.layer.cornerRadius = 12
    }
    
    @IBAction func saveAction(_ sender: Any) {
        let reminder : Reminder = Reminder()
        reminder.createReminder(title: titleTextField.text ?? "", note: noteTextField.text ?? "", time: dateTimePicker.date)
        
        print(reminder.getAllReminders()?.debugDescription ?? "LOL")
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
