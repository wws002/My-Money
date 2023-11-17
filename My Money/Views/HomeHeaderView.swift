import SwiftUI


struct HomeHeaderView: View {
    func getCurrentMonth() -> String {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "LLLL"
        return dateFormatter.string(from: date)
    }
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("Last Month")
                        .padding()
                    Button(action: {}) {
                        Image(systemName: "backward.fill")
                    }
                }
                .padding()
                Text(getCurrentMonth())
                VStack {
                    Text("Next Month")
                        .padding()
                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                    }
                }
                .padding()
            }
        }
    }
}

struct HomeHeaderViewPreviews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
    }
}
