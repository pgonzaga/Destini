//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allStories = Stories().all
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    var storyIndex : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {

        let selectedOption : Int = sender.tag

        if(selectedOption == 1 && !currentStory().lastStoryOnPath) {
            storyIndex = currentStory().nextIndexPathA
        }

        if(selectedOption == 2 && !currentStory().lastStoryOnPath) {
            storyIndex = currentStory().nextIndexPathB
        }

        updateUI()
    
    }

    func updateUI() {

        storyTextView.text = currentStory().text

        if(!allStories[storyIndex].lastStoryOnPath) {
            topButton.setTitle(currentStory().answerPathA, for: .normal)
            bottomButton.setTitle(currentStory().answerPathB, for: .normal)
        } else {
            topButton.isHidden = true
            bottomButton.isHidden = true
        }

    }

    func currentStory() -> Story {

        return allStories[storyIndex]

    }

}

