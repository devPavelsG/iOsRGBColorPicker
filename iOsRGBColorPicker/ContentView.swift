//
//  ContentView.swift
//  iOsRGBColorPicker
//
//  Created by Pāvels Garklāvs on 06/10/2021.
//
//

import SwiftUI

struct ContentView: View {

    @State private var redValue = 0.0
    @State private var greenValue = 0.0
    @State private var blueValue = 0.0

    @State private var isEditingRed = false
    @State private var isEditingGreen = false
    @State private var isEditingBlue = false

    var body: some View {
        ZStack {
            VStack {

                Text("RGB Color Picker")
                        .foregroundColor(.gray)
                        .font(.system(size: 60))
                        .multilineTextAlignment(.center)
                        .padding()

                // MARK: - Color Display
                Rectangle()
                        .fill(Color(red: redValue / 255, green: greenValue / 255, blue: blueValue / 255))
                        .frame(width: 200, height: 200)

                // MARK: - Red Slider
                Slider(
                        value: $redValue,
                        in: 0...255
                ) {
                    Text("Red")
                } minimumValueLabel: {
                    Text("0").foregroundColor(.red)
                } maximumValueLabel: {
                    Text("255").foregroundColor(.red)
                } onEditingChanged: { editing in
                    isEditingRed = editing
                }
                Text("\(Int(redValue))")
                        .foregroundColor(isEditingRed ? .red : .blue)

                // MARK: - Green Slider
                Slider(
                        value: $greenValue,
                        in: 0...255
                ) {
                    Text("Green")
                } minimumValueLabel: {
                    Text("0").foregroundColor(.green)
                } maximumValueLabel: {
                    Text("255").foregroundColor(.green)
                } onEditingChanged: { editing in
                    isEditingGreen = editing
                }
                Text("\(Int(greenValue))")
                        .foregroundColor(isEditingGreen ? .red : .blue)

                // MARK: - Blue Slider
                Slider(
                        value: $blueValue,
                        in: 0...255
                ) {
                    Text("Blue")
                } minimumValueLabel: {
                    Text("0").foregroundColor(.blue)
                } maximumValueLabel: {
                    Text("255").foregroundColor(.blue)
                } onEditingChanged: { editing in
                    isEditingBlue = editing
                }
                Text("\(Int(blueValue))")
                        .foregroundColor(isEditingBlue ? .red : .blue)

                // MARK: - All Values Displayed
                Text("Red: \(Int(redValue)) - Green: \(Int(greenValue)) - Blue: \(Int(blueValue))")
                        .foregroundColor(.gray)
                        .padding()

            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
