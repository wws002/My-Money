import SwiftUI


struct BillDetailView: View {
    let bill: MonthlyBill
    
    var body: some View {
        VStack {
            Text(bill.title)
            Text(String(format: "%.2f", bill.amount))
            Text(bill.due)
        }
    }
}

struct BillDetailViewPreviews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            BillDetailView(bill: MonthlyBill.sampleData[0])
        }
    }
}
