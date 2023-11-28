import SwiftUI


struct HomeFooterView: View {
    func calculateTotalBills() -> Double {
        let bills = MonthlyBill.sampleData
        var total: Double = 0.0
        
        for bill in bills {
            total = total + bill.amount
        }
        return total
    }
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Bills Paid")
                    Label("300", systemImage: "face.smiling")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Bills Remaining")
                    Label(String(calculateTotalBills()), systemImage: "flag")
                }
            }
            ProgressView(value: 5, total: 20)
        }
    }
}
