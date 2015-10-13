//
//  ViewController.swift
//  Navigation Bar
//
//  Created by Nicolas Emery on 8/3/15.
//  Copyright © 2015 Nicolas Emery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // create time global variable counter
    var timeMin:Int = 0;
    var timeSec:Int = 0;
    // create a timer varaible equal to the timer function
    var timer = NSTimer();
    // function to occur every second
    func result()
    {
        if(timeSec < 59)
        {
            // add value to time the NSTimer calling func
            timeSec++;
            timeLabel.text = "\(timeMin):\(timeSec)";
        }
        else
        {
            timeMin++;
            timeSec = 0;
            // print to the label
            timeLabel.text = "\(timeMin):\(timeSec)";
        }
    }
    
    @IBOutlet var timeLabel: UILabel!
    
    @IBAction func startButton(sender: AnyObject)
    {
        // stands for Next Step (lang from Next company)
        // set up timer to have a result every second. Only need a 1 for second (not done in milisconds like Java)
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true);
    }
    
    @IBAction func stopButton(sender: AnyObject)
    {
        // stop the timer from running (like .stop() in Java)
        timer.invalidate();
        // reset timer variable and label back to 0
        timeMin = 0;
        timeSec = 0;
        timeLabel.text = "\(timeMin):\(timeSec)";
    }
    
    @IBAction func pauseButton(sender: AnyObject)
    {
        // stop the timer from running (like .stop() in Java)
        timer.invalidate();
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

