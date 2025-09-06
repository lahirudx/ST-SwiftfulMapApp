//
//  LocationMapAnnotationView.swift
//  SwiftfulMapApp
//
//  Created by Lahiru Amarasooriya on 2025-09-06.
//

import SwiftUI

struct LocationMapAnnotationView: View {
    
    var body: some View {
        VStack(spacing: 0.0) {
            Image(systemName: "map.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 30)
                .font(.headline)
                .foregroundStyle(.white)
                .padding(6)
                .background(.accent)
                .cornerRadius(36)
            
            Image(systemName: "triangle.fill")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.accent)
                .frame(width: 10)
                .rotationEffect(Angle(degrees: 180))
                .offset(y: -3)
                .padding(.bottom, 35)
        }    }
}

#Preview {
    LocationMapAnnotationView()
}
