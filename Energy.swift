//
//  Energy.swift
//
//  Created by Roman Cernetchi
//  Created on 2021-11-22
//  Version 1.0
//  Copyright (c) 2020 Roman Cernetchi. All rights reserved.
//
//  This program calculates the amount of energy produced by a given mass.
//
import Foundation

let lightSpeed: Double = 2.9979 * pow(10, 7)

// User prompt
print("Enter the mass of your object (kg): ", terminator: "")

// Gathers the user input and makes sure it isn't empty
guard let massString = readLine(), !massString.isEmpty else {
    print("Something has gone wrong")
    exit(001)
}

// Validates and makes sure it is possible to convert to Double.
if let mass = Double(massString) {

    // Calculates (E = mc²) to find the amount of energy produced.
    let energy = mass * pow(lightSpeed, 2)

    print("\(mass) can create \(energy) J")
} else {
    print("That wasn't a number.")
}

print("\nDone.")
