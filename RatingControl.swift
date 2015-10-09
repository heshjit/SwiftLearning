//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Jithesh V K on 7/10/2015.
//  Copyright © 2015 Jithesh V K. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    //MARK: Properties
    var rating = 0 {
        didSet {
            setNeedsLayout()
        }
    }
    var ratingButtons = [UIButton]()
    let spacing = 5
    let stars = 5
    
    //MARK: Initialization
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let emptyStarImage = UIImage(named:"emptyStar")
        let filledStarImage = UIImage(named:"filledStar")
        
        for _ in 0..<stars{
            let button = UIButton()
            button.setImage(emptyStarImage, forState: .Normal)
            button.setImage(filledStarImage, forState: .Selected)
            button.setImage(filledStarImage, forState: [.Highlighted, .Selected])
            
            button.adjustsImageWhenHighlighted = false
            
            button.addTarget(self, action: "ratingButtonPressed:", forControlEvents: .TouchDown)
            ratingButtons+=[button]
            addSubview(button)
        }
    }
    
    override func layoutSubviews() {
        let buttonSize = Int(frame.size.height)
        var buttonFrame = CGRect(x: 0, y: 0, width: buttonSize, height: buttonSize)
        
        for (index, button) in ratingButtons.enumerate()
        {
            buttonFrame.origin.x = CGFloat(index * (buttonSize + spacing))
            button.frame = buttonFrame
        }
        updateButtonSelectionState()
    }

    override func intrinsicContentSize() -> CGSize {
        let buttonSize = Int(frame.size.height)
        let width = (buttonSize + spacing) * stars
        return CGSize(width: width, height: buttonSize)
    }
    
    //MARK: Button Action
    func ratingButtonPressed(button: UIButton){
        rating = ratingButtons.indexOf(button)! + 1
        updateButtonSelectionState()
    }
    
    func updateButtonSelectionState(){
        for (index,button) in ratingButtons.enumerate(){
            button.selected = index < rating
        }
    }
}
