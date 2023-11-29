import SwiftUI


struct BillDetailView: View {
    let bill: MonthlyBill
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
            }
        }
        .sheet(isPresented: $isPresentingEditView) {
            NavigationStack {
                BillEditView()
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
            BillDetailView(bill: MonthlyBill.sampleData[0])
        }
    }
}
