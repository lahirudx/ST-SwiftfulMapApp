//
//  LocationsViewModel.swift
//  SwiftfulMapApp
//
//  Created by Lahiru Amarasooriya on 2025-09-01.
//
import Foundation

class LocationsViewModel: ObservableObject {
    @Published var locations: [Location]
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
    }
}
