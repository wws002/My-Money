import SwiftUI


struct HomeView: View {
    let bills: [MonthlyBill]
    
    func getCurrentMonth() -> String {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "LLLL"
        return dateFormatter.string(from: date)
    }
    
    var body: some View {
        VStack {
            Text(getCurrentMonth())
                .font(.system(size: 36))
            NavigationStack {
                List(bills) { bill in
                    NavigationLink(destination: BillDetailView(bill: bill)) {
                        BillDetailView(bill: bill)
                    }
                    .scaledToFit()
                }
                .navigationTitle("Monthly Bills")
                .toolbar {
                    Button(action: {}) {
                        Image(systemName: "plus")
                    }
                }
                HomeFooterView()
            }
        }
    }
}

struct HomeViewPreviews: PreviewProvider {
    static var previews: some View {
        HomeView(bills: MonthlyBill.sampleData)
    }
}

