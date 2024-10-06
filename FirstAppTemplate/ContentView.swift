//
//  ContentView.swift
//  FirstAppTemplate
//
//  Created by Rishabh Pratap Singh on 03/10/24.
//

import SwiftUI
import CoreData

struct SecondView: View {
    var body: some View {
        VStack {
            Text("This is the Second View")
                .font(.largeTitle)
                .padding()
                .navigationBarBackButtonHidden(false)
        }
    }
}

struct FirstView: View {
    var body: some View {
        VStack {
            Text("This is the First View")
                .font(.largeTitle)
                .padding()
            
            NavigationLink(destination: SecondView()) {
                Text("Go to Second View")
                    .font(.headline)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
    }
}

struct ContentView: View {

    var body: some View {
        NavigationView {
            FirstView()
                .navigationTitle("First View")
        }
    }
}


#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
