//
//  ContentView.swift
//  SBTUITestTunnel_Example_SwiftUI
//
//  Created by Marco Pagliari on 01/02/23.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationView {
            List {
                Group {
                    NavigationLink("hello") {
                        Text("hello")
                    }
                    NavigationLink("hallo") {
                        Text("hallo")
                    }
                    NavigationLink("hallo") {
                        Text("hallo")
                    }
                    NavigationLink("hallo") {
                        Text("hallo")
                    }
                    NavigationLink("hallo") {
                        Text("hallo")
                    }
                    NavigationLink("hallo") {
                        Text("hallo")
                    }
                    NavigationLink("hallo") {
                        Text("hallo")
                    }
                    NavigationLink("hallo") {
                        Text("hallo")
                    }
                    NavigationLink("hallo") {
                        Text("hallo")
                    }
                    NavigationLink("hallo") {
                        Text("hallo")
                    }
                }
                Group {
                    NavigationLink("hello") {
                        Text("hello")
                    }
                    NavigationLink("hallo") {
                        Text("hallo")
                    }
                    NavigationLink("hallo") {
                        Text("hallo")
                    }
                    NavigationLink("hallo") {
                        Text("hallo")
                    }
                    NavigationLink("hallo") {
                        Text("hallo")
                    }
                    NavigationLink("hallo") {
                        Text("hallo")
                    }
                    NavigationLink("hallo") {
                        Text("hallo")
                    }
                    NavigationLink("hallo") {
                        Text("hallo")
                    }
                    NavigationLink("hallo") {
                        Text("hallo")
                    }
                    NavigationLink("hallo") {
                        Text("hallo")
                    }
                }
            }
            .navigationTitle("SBTUITestTunnel Example")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
