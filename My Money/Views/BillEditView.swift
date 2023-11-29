import SwiftUI


struct BillEditView: View {
    @State private var bill = MonthlyBill.emptyBill
    
    var body: some View {
        Form {
            Section(header: Text("Bill Info")) {
                TextField("Title", text: $bill.title)
                TextField("Amount", value: $bill.amount, format: .number)
                TextField("Due Date", text: $bill.due)
                Toggle("Paid", isOn: $bill.paid)
            }
        }
    }
}

struct BillEditViewPreviews: PreviewProvider {
    static var previews: some View {
        BillEditView()
    }
}
