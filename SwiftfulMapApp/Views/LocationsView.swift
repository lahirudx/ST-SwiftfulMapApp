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
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                header
                .padding()
                
                Spacer()
            }
                
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel() )
}

extension LocationsView {
    private var header: some View {
        VStack{
            Button(action: vm.toggleLocationsList) {
                Text("\(vm.mapLocation.name), \(vm.mapLocation.cityName)")
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundStyle(.primary)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .animation(.none, value: vm.mapLocation)
                    .overlay(alignment: .leading) {
                        Image(systemName: "arrow.down")
                            .font(.headline)
                            .foregroundStyle(.primary)
                            .padding()
                            .rotationEffect(Angle(degrees: vm.showLocationsList ? 180 : 0))
                    }
            }
            .tint(.primary)
            
            if(vm.showLocationsList) {
                LocationsListView()
            }
        }
        .background(.thickMaterial)
        .cornerRadius(10)
        .shadow(color: .black.opacity(0.3), radius: 20, x: 20, y: 20)
    }
}
