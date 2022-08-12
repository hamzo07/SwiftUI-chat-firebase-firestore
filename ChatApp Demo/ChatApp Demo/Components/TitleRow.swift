//
//  TitleRow.swift
//  ChatApp Demo
//
//  Created by Hamza Usmani on 11/08/22.
//

import SwiftUI

struct TitleRow: View {
    private var imageURL = URL(string: "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cG90cmFpdHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60")
    
    
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: imageURL) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading) {
                Text("John Doe")
                    .font(.ralewayBold(withSize: 16))
                
                Text("Online")
                    .font(.ralewayRegular(withSize: 10))
                    .foregroundColor(.customGray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
            Image(systemName: "phone.fill")
                .foregroundColor(.customGray)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
            
        }
        .padding()
        
        
        
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color.customPeach)
    }
}
