//
//  ProfileSummary.swift
//  Books
//
//  Created by Dang Le on 7/8/22.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text(profile.username)
                .bold()
                .font(.title)
            Text("Notifications: \(profile.prefersNotifications ? "On": "Off")")
            Text("Seassonal Photo: \(profile.seasonalPhoto.rawValue)")
        }

        
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
