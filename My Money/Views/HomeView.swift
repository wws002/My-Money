import SwiftUI


struct HomeView: View {
    var monthlyBills = MonthlyBill.sampleData
    
    var body: some View {
        VStack{
            HomeHeaderView()
            
            List(monthlyBills) {
                Text($0.title)
            }
        }
    }
}

struct HomeViewPreviews: PreviewProvider {
    static var monthlyBills = MonthlyBill.sampleData
    
    static var previews: some View {
        HomeView(monthlyBills: monthlyBills)
    }
}

