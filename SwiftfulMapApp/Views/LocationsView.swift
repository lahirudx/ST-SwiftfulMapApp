//
//  LocationsView.swift
//  SwiftfulMapApp
//
//  Created by Lahiru Amarasooriya on 2025-08-31.
//

import SwiftUI



struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        List {
            ForEach(vm.locations) {
                Text($0.name)
            }
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel() )
}
