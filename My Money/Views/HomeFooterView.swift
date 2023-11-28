import SwiftUI


struct HomeFooterView: View {
    func calculateTotalBills() -> Double {
        var total: Double = 0.0
        for bill in MonthlyBill.sampleData {
            total = total + bill.amount
        }
        return total
    }
    
    func calculateRemainingBills() -> Double {
        return calculateTotalBills() - calculatePaidBills()
    }
    
    func calculatePaidBills() -> Double {
        var paid: Double = 0.0
        for bill in MonthlyBill.sampleData {
            if bill.paid {
                paid = paid + bill.amount
            }
        }
        return paid
    }
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Bills Paid")
                    Label(String(calculatePaidBills()), systemImage: "face.smiling")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Bills Remaining")
                    Label(String(calculateRemainingBills()), systemImage: "flag")
                }
            }
            ProgressView(value: calculatePaidBills(), total: calculateTotalBills())
        }
    }
}
