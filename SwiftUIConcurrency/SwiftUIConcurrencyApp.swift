//
//  SwiftUIConcurrencyApp.swift
//  SwiftUIConcurrency
//
//  Created by KANISHK VIJAYWARGIYA on 08/11/21.
//

import SwiftUI

@main
struct SwiftUIConcurrencyApp: App {
    @StateObject var courseViewModel = CourseViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(courseViewModel)
        }
    }
}
