//
//  ContentView.swift
//  ReadWell
//
//  Created by William Conrad Preston on 1/16/24.
//

// MainContentView.swift
import SwiftUI

// MainContentView.swift
struct MainContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }

            ActivityView()
                .tabItem {
                    Image(systemName: "list.bullet.rectangle.portrait.fill")
                    Text("Activity")
                }

            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
    }
}

// Placeholder views for each tab
struct HomeView: View {
    // Assuming you will have a ViewModel to hold your data
    @ObservedObject var viewModel: HomeViewModel = HomeViewModel()

    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(viewModel.categories, id: \.self) { category in
                        VStack(alignment: .leading) {
                            Text(category.name)
                                .font(.headline)
                                .padding(.leading)

                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 15) {
                                    ForEach(category.books) { book in
                                        NavigationLink(destination: BookDetailView(book: book)) {
                                            BookThumbnailView(book: book)
                                        }
                                    }
                                }
                                .padding(.horizontal)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Home")
        }
    }
}

// A view representing a book thumbnail
struct BookThumbnailView: View {
    let book: Book

    var body: some View {
        VStack {
            // Placeholder for book image
            Rectangle()
                .fill(Color.gray)
                .frame(width: 100, height: 150)
                .cor


struct SearchView: View {
    var body: some View {
        Text("Search View Placeholder")
    }
}

struct ActivityView: View {
    var body: some View {
        Text("Activity View Placeholder")
    }
}

struct ProfileView: View {
    var body: some View {
        Text("Profile View Placeholder")
    }
}
