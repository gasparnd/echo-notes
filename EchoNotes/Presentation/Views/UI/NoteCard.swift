//
//  NoteCard.swift
//  EchoNotes
//
//  Created by Gaspar Dolcemascolo on 01-05-25.
//

import SwiftUI

struct NoteCard: View {
    let note: Note
    
    var body : some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(note.title)
                .font(.headline)
                .lineLimit(2)
            
            Text(note.date.formatted(date: .long, time: .omitted))
                .font(.caption)
                .foregroundColor(.gray)
            
            Text(note.details)
                .font(.body)
                .foregroundColor(.primary)
                .lineLimit(3)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color(.secondarySystemGroupedBackground))
        .cornerRadius(12)
        .padding(.horizontal)
    }
}

#Preview {
    let note = Note(id: UUID(), title: "Llamada con cliente", date: Date().addingTimeInterval(-259200), details: "Feedback positivo sobre la última entrega y solicitudes para nuevas funcionalidades.Feedback positivo sobre la última entrega y solicitudes para nuevas funcionalidades.Feedback positivo sobre la última entrega y solicitudes para nuevas funcionalidades.")
    
    NoteCard(note: note)
}
