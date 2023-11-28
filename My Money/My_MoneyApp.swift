import SwiftUI


@main
struct My_MoneyApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView(bills: MonthlyBill.sampleData)
        }
    }
}
