//
//  SignInView.swift
//  arctrek
//
//  Created by Karen Zhao on 2024-04-07.
//

import Foundation
import SwiftUI

struct SignInView: View {
    var color1 = hexStringToUIColor(hex: "#F5F5F5")
    
    var body: some View {
            NavigationView {
                VStack {
                    VStack(spacing: 150) {
                        Image("arctrek")
                            .resizable()
                            .frame(width: 280, height: 230)
                            .aspectRatio(contentMode: .fill)
                            .position(x: 200, y: 270)
                        
                        VStack(spacing: 90) {
                            Spacer()
                            
                            NavigationLink(destination: AuthView()) {
                                Text("Sign in")
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(width: 280, height: 40)
                            }
                            .background(Color.black)
                            .cornerRadius(8)
                            Image("mountain")
                        }
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea(.all)
                .background(color1)
                .navigationBarTitle("") // Hides the navigation bar title
                .navigationBarHidden(true) // Hides the navigation bar
            }
    }
}
    
    


func hexStringToUIColor (hex:String) -> Color {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }

    if ((cString.count) != 6) {
        return Color.gray
    }

    var rgbValue:UInt64 = 0
    Scanner(string: cString).scanHexInt64(&rgbValue)

    return Color(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0
        
    )
}

