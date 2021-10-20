//
//  ViewController.swift
//  DSKeyStr
//
//  Created by Dimitri SMITH on 27/09/2021.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var displayLabel: NSTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }
    override func viewDidAppear() {
        view.window?.makeFirstResponder(self)
        view.window?.level = .floating
    }
    
    func clearPressLabel () {
        
        let seconds = 1.5
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            self.displayLabel.stringValue = ""
        }
    }

    
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    override func keyDown(with event: NSEvent) {
        
        if displayLabel.stringValue == "" {
            displayLabel.stringValue += event.characters!
            clearPressLabel()
        }else {
            displayLabel.stringValue += " + \(event.characters!)"
            clearPressLabel()
        }
        //displayLabel.stringValue = ""
   }
    
    override func keyUp(with event: NSEvent) {
        

    }
    
    override func flagsChanged(with event: NSEvent) {
            switch event.modifierFlags.intersection(.deviceIndependentFlagsMask) {
            case [.shift]:
                displayLabel.stringValue = "Shift"
                print("shift key is pressed")
            case [.control]:
                displayLabel.stringValue = "Control"
                print("control key is pressed")
            case [.option] :
                displayLabel.stringValue = "Option"
                print("option key is pressed")
            case [.command]:
                displayLabel.stringValue = "Command"
                print("Command key is pressed")
            case [.control, .shift]:
                displayLabel.stringValue = "Control + Shift"
                print("control-shift keys are pressed")
            case [.option, .shift]:
                displayLabel.stringValue = "Option + Shift"
                print("option-shift keys are pressed")
            case [.command, .shift]:
                displayLabel.stringValue = "COmmand + Shift"
                print("command-shift keys are pressed")
            case [.control, .option]:
                displayLabel.stringValue = "Control + Option"
                print("control-option keys are pressed")
            case [.control, .command]:
                displayLabel.stringValue = "Control + Command"
                print("control-command keys are pressed")
            case [.option, .command]:
                displayLabel.stringValue = "Option + Command"
                print("option-command keys are pressed")
            case [.shift, .control, .option]:
                displayLabel.stringValue = "Shift + Control + Option"
                print("shift-control-option keys are pressed")
            case [.shift, .control, .command]:
                displayLabel.stringValue = "Shift + Control + Command"
                print("shift-control-command keys are pressed")
            case [.control, .option, .command]:
                displayLabel.stringValue = "Control + Option + Command"
                print("control-option-command keys are pressed")
            case [.shift, .command, .option]:
                displayLabel.stringValue = "Shift + Command + Option"
                print("shift-command-option keys are pressed")
            case [.shift, .control, .option, .command]:
                displayLabel.stringValue = "Shift + Control + Option + Command"
                print("shift-control-option-command keys are pressed")
            default:
                print("no modifier keys are pressed")
            }
        }


}



