//import SwiftUI
import SwiftUI

struct OnboardingView: View {
    @Binding var showOnboarding: Bool
    let pages = [
        Page(title : "ONB1", message: "Interested in learning how to throw a bomb and hit your target accurately?"),
        Page(title : "ONB2", message: "Discover the secrets of accurate bomb throwing and surprise your opponents!"),
        Page(title : "ONB3", message: "Ensure your victory by effectively using explosives!")
    ]
    @State private var currentPageIndex = 0

    var body: some View {
        VStack {
            TabView(selection: $currentPageIndex) {
                ForEach(0..<pages.count, id: \.self) { index in
                    VStack {
                        Image(pages[index].title)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.main.bounds.width * 0.85)
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        
                        Text(pages[index].message)
                            .multilineTextAlignment(.center)
                            .padding()
                            .font(.title.bold())
                    }
                    .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            .onAppear {
                UIPageControl.appearance().currentPageIndicatorTintColor = .blue
                UIPageControl.appearance().pageIndicatorTintColor = .gray
            }

            Button(action: {
                withAnimation {
                    if currentPageIndex < pages.count - 1 {
                        currentPageIndex += 1
                    } else {
                        showOnboarding = false // Son sayfadaysa onboarding'i bitir
                    }
                }
            }) {
                Text(currentPageIndex < pages.count - 1 ? "Continue" : "Finish")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .padding()
        }
        .background(Color.indigo)
    }
}

struct Page {
    let title: String
    let message: String
}

// ContentView içeriği...

#Preview {
    OnboardingView(showOnboarding: .constant(true))
}
