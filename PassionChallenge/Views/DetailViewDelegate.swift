//
//  DetailViewDelegate.swift
//  PassionChallenge
//
//  Created by Lucas Migge de Barros on 21/09/22.
//

import Foundation


protocol DetailViewDelegate : AnyObject {
    // for history button
    func pushNextViewController()
    
    // for addToCalendar Button
    func callCalendar()
}
