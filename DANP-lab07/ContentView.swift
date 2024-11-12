//
//  ContentView.swift
//  DANP-lab07
//
//  Created by panocca on 11/12/24.
//
import SwiftUI
import CoreLocation

struct ContentView: View {
    @StateObject private var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            if let location = locationManager.location {
                Text("Latitud: \(location.coordinate.latitude)")
                Text("Longitud: \(location.coordinate.longitude)")
            } else {
                Text("Obteniendo ubicación...")
            }
        }
        .onAppear {
            locationManager.startUpdatingLocation()
        }
        .onDisappear {
            locationManager.stopUpdatingLocation()
        }
    }
}


