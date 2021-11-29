//
//  ContentView.swift
//  SwiftUIConcurrency
//
//  Created by KANISHK VIJAYWARGIYA on 08/11/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var courseViewModel: CourseViewModel
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Learn Now")
                }
        }
        .task {
            await courseViewModel.fetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(CourseViewModel())
    }
}
