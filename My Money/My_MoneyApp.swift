import SwiftUI


@main
struct My_MoneyApp: App {
    @State private var bills = MonthlyBill.sampleData
    
    var body: some Scene {
        WindowGroup {
            HomeView(bills: $bills)
        }
    }
}
