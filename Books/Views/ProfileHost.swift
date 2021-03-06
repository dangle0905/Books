//
//  ProfileHost.swift
//  Books
//
//  Created by Dang Le on 7/8/22.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    
    @EnvironmentObject var modelData: ModelData
    
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            HStack{
                Spacer()
                EditButton()
            }
            if editMode?.wrappedValue == .inactive{
                ProfileSummary(profile: modelData.profile)
            } else {
                Text("Profile Editor")
            }
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
            .environmentObject(ModelData())

    }
}
