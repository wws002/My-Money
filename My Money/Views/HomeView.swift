import SwiftUI


struct HomeView: View {
    let bills: [MonthlyBill]
    
    var body: some View {
        VStack{
            HomeHeaderView()
            NavigationStack {
                List(bills) { bill in
                    NavigationLink(destination: BillDetailView(bill: bill)) {
                        BillDetailView(bill: bill)
                    }
                }
                .navigationTitle("Monthly Bills")
                .toolbar {
                    Button(action: {}) {
                        Image(systemName: "plus")
                    }
                }
            }
            HomeFooterView()
        }
    }
}

struct HomeViewPreviews: PreviewProvider {
    static var previews: some View {
        HomeView(bills: MonthlyBill.sampleData)
    }
}

