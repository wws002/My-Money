import SwiftUI


@main
struct My_MoneyApp: App {
    var monthlyBills = MonthlyBill.sampleData
    
    var body: some Scene {
        WindowGroup {
            HomeView(monthlyBills: monthlyBills)
        }
    }
}
 
