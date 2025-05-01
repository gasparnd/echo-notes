//
//  Note.swift
//  EchoNotes
//
//  Created by Gaspar Dolcemascolo on 01-05-25.
//

import Foundation

struct Note: Identifiable {
    var id: UUID
    let title: String
    let date: Date
    let summarizedText: String    
}
