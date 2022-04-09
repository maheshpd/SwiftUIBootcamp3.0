//
//  ActionsheetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Mahesh Prasad on 09/04/22.
//

import SwiftUI

struct ActionsheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack{
                Circle()
                    .frame(width: 30, height: 30)
                
                Text("@username")
                
                Spacer()
                
                Button(action: {
                    actionSheetOption = .isMyPost
                    showActionSheet.toggle()
                }) {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.primary)
            }.padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }.actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        
        let shareButton: ActionSheet.Button = .default(Text("Share")){
            
        }
        
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            
        }
        
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        let title = Text("What would you like to do?")
        
        switch actionSheetOption {
        case .isOtherPost:
            return ActionSheet(title: Text("What would you like to do"), message: nil, buttons: [shareButton, reportButton, cancelButton])
        case .isMyPost:
            return ActionSheet(title: title, message: nil, buttons: [shareButton, reportButton, deleteButton, cancelButton])
        }
        
        
    }
    
}

struct ActionsheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionsheetBootcamp()
    }
}
