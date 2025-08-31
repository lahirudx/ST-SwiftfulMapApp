//
//  SwiftfulMapAppApp.swift
//  SwiftfulMapApp
//
//  Created by Lahiru Amarasooriya on 2025-08-31.
//

import SwiftUI

@main
struct SwiftfulMapAppApp: App {
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
