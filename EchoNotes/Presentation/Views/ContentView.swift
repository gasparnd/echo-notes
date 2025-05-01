//
//  ContentView.swift
//  EchoNotes
//
//  Created by Gaspar Dolcemascolo on 01-05-25.
//

import SwiftUI

struct ContentView: View {
    let names: [String] = ["Alice", "Bob", "Charlie"]
    let mockNotes: [Note] = [
        Note(id: UUID(), title: "Reunión con el equipo", date: Date(), details: "Se discutieron los objetivos del trimestre y se asignaron nuevas tareas."),
        Note(id: UUID(), title: "Clase de historia", date: Date().addingTimeInterval(-86400), details: "Resumen sobre la Revolución Francesa y sus causas principales."),
        Note(id: UUID(), title: "Taller de diseño", date: Date().addingTimeInterval(-172800), details: "Conceptos básicos de UX y ejercicios de diseño de interfaces."),
        Note(id: UUID(), title: "Llamada con cliente", date: Date().addingTimeInterval(-259200), details: "Feedback positivo sobre la última entrega y solicitudes para nuevas funcionalidades.Feedback positivo sobre la última entrega y solicitudes para nuevas funcionalidades.Feedback positivo sobre la última entrega y solicitudes para nuevas funcionalidades."),
        Note(id: UUID(), title: "Planificación semanal", date: Date().addingTimeInterval(-345600), details: "Organización de tareas, bloqueos de tiempo y definición de prioridades.")
    ]
    
    var body: some View {
        
        NavigationView {
            ZStack {
                ScrollView {
                    LazyVStack(spacing: 16) {
                        ForEach(mockNotes) { note in
                            NoteCard(note: note)
                        }
                    }
                    .padding(.top, 16)
                    .frame(maxWidth: .infinity, alignment: .center)
                }
                .background(Color(.systemGroupedBackground))
                .navigationTitle("Notes")
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button(action: {
                            print("Botón flotante presionado")
                        }) {
                            Image(systemName: "plus")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(.white)
                                .padding()
                                .background(Color(.systemRed))
                                .clipShape(Circle())
                                .shadow(radius: 5)
                        }
                        .padding()
                        .padding(.bottom, 48)
                        
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}


