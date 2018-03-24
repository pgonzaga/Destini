//
//  Story.swift
//  Destini
//
//  Created by Pablo Gonzaga on 3/24/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Story {

    let text : String
    let answerPathA : String
    let answerPathB : String
    let nextIndexPathA : Int
    let nextIndexPathB : Int
    let lastStoryOnPath : Bool

    init(storyText : String, answerA : String, answerB : String, nextIndexA: Int, nextIndexB : Int) {

        text = storyText
        answerPathA = answerA
        answerPathB = answerB
        nextIndexPathA = nextIndexA
        nextIndexPathB = nextIndexB

        lastStoryOnPath = (nextIndexA == 0 && nextIndexB == 0)

    }

}
