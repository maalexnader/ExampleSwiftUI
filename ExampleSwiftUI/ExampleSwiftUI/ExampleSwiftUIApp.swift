//
//  ExampleSwiftUIApp.swift
//  ExampleSwiftUI
//
//  Created by Alexander Martirosov on 20/04/2023.
//

import SwiftUI

@main
struct ExampleSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            MainView(city: LocationMockFactory().one())
        }
    }
}
