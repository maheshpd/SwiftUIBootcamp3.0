//
//  AlertBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Mahesh Prasad on 09/04/22.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
    @State var backgroundColor: Color = Color.yellow
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("BUTTON 1") {
                    alertType = .error
                    showAlert.toggle()
                }
                
                Button("BUTTON 2") {
                    alertType = .success
                    showAlert.toggle()
                }
                
            }.alert(isPresented: $showAlert, content: {
                getAlert()
            })
        }
    }
    
    func getAlert() -> Alert {
        
        switch alertType {
            
        case .error:
            return Alert(title: Text("There was an error"))
            
        case .success:
            return Alert(title: Text("This was a success!"), message: nil, dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
            
        default:
            return Alert(title: Text("ERROR"))
            
        }
        
    }
    
    
    
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
