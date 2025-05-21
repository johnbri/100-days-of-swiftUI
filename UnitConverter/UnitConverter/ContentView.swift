//
//  ContentView.swift
//  UnitConverter
//
//  Created by John Brink on 2025-05-21.
//

import SwiftUI

struct ContentView: View {
    @State private var firstUnit: UnitLength = .meters
    @State private var inputValue: Double = 100
    @State private var secondUnit: UnitLength = .meters

    let units: [UnitLength] = [.meters, .kilometers, .inches, .feet, .yards]

    var convertedValue: Measurement<UnitLength> {
        let inputMeasurement = Measurement(value: inputValue, unit: firstUnit)
        let convertedMeasurement = inputMeasurement.converted(to: secondUnit)

        return convertedMeasurement
    }

    var body: some View {
        NavigationStack {
            Form {
                Section("Choose a unit to convert") {
                    Picker("Unit", selection: $firstUnit) {
                        ForEach(units, id: \.self) {
                            Text($0.symbol)
                        }
                    }.pickerStyle(.segmented)
                }

                Section("Input a value") {
                    HStack {
                        TextField("Value", value: $inputValue, format: .number)
                            .keyboardType(.decimalPad)
                        Text(firstUnit.symbol)
                            .foregroundColor(.secondary)
                    }
                }

                Section("Choose a unit to convert to") {
                    Picker("Unit", selection: $secondUnit) {
                        ForEach(units, id: \.self) {
                            Text($0.symbol)
                        }
                    }.pickerStyle(.segmented)
                }

                Section("Result") {
                    HStack {
                        Text(convertedValue.value, format: .number)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text(convertedValue.unit.symbol)
                            .foregroundColor(.secondary)
                    }
                }
            }.navigationTitle("Unit Converter")
        }
    }
}

#Preview {
    ContentView()
}
