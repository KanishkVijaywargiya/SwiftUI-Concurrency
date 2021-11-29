//
//  HomeView.swift
//  SwiftUIConcurrency
//
//  Created by KANISHK VIJAYWARGIYA on 08/11/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack(alignment: .top) {
            ScrollView {
                DateTitle(title: "Learn SwiftUI")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 20)
                    .padding(.horizontal, 20)
                
                FeaturedCourseList()
                    .padding(.top, 20)
                
                Text("All Courses")
                    .font(.title2)
                    .bold()
                    .padding(.horizontal, 20)
                    .padding(.top, 40)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                CourseList()
                    .padding(.top, 20)
            }
            
            Color(.white)
                .animation(.easeIn)
                .ignoresSafeArea()
                .frame(height: 0)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
