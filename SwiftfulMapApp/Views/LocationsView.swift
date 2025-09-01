//
//  LocationsView.swift
//  SwiftfulMapApp
//
//  Created by Lahiru Amarasooriya on 2025-08-31.
//

import SwiftUI
import MapKit



struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $vm.mapRegion)
                
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel() )
}
