import SwiftUI


struct BillDetailView: View {
    @Binding var bill: MonthlyBill
    
    @State private var editingBill = MonthlyBill.emptyBill
    @State private var isPresentingEditView = false
    
    var body: some View {
        List {
            Section(header: Text("Bill Info")) {
                HStack {
                    Label("Amount", systemImage: "dollarsign.circle")
                    Spacer()
                    Text(String(format: "%.2f", bill.amount))
                }
                HStack {
                    Label("Due Date", systemImage: "calendar")
                    Spacer()
                    Text(bill.due)
                }
                HStack {
                    Label("Paid", systemImage: "checkmark")
                    Spacer()
                    if bill.paid {
                        Text("Paid!")
                    } else {
                        Text("Not Paid")
                    }
                }
            }
        }
        .navigationTitle(bill.title)
        .toolbar {
            Button("Edit") {
                isPresentingEditView = true
                editingBill = bill
            }
        }
        .sheet(isPresented: $isPresentingEditView) {
            NavigationStack {
                BillEditView(bill: $editingBill)
                    .navigationTitle(bill.title)
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                isPresentingEditView = false
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Confirm") {
                                isPresentingEditView = false
                                bill = editingBill
                            }
                        }
                    }
            }
        }
    }
}

struct BillDetailViewPreviews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            BillDetailView(bill: .constant(MonthlyBill.sampleData[0]))
        }
    }
}
