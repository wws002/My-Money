import SwiftUI


struct HomeView: View {
    @Binding var bills: [MonthlyBill]
    
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
                List($bills) { $bill in
                    NavigationLink(destination: BillDetailView(bill: $bill)) {
                        VStack {
                            Text(bill.title)
                            Text(String(format: "%.2f", bill.amount))
                            Text(bill.due)
                        }
                    }
                }
                .scaledToFit()
                .navigationTitle("Monthly Bills")
                .toolbar {
                    Button(action: {}) {
                        Image(systemName: "plus")
                    }
                }
            }
            HomeFooterView(bills: $bills)
        }
    }
}

struct HomeViewPreviews: PreviewProvider {
    static var previews: some View {
        HomeView(bills: .constant(MonthlyBill.sampleData))
    }
}

