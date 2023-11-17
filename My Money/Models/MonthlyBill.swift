import Foundation


struct MonthlyBill: Identifiable {
    let id: UUID
    let title: String
    var amount: Double
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, amount: Double, theme: Theme) {
        self.id = id
        self.title = title
        self.amount = amount
        self.theme = theme
    }
}

extension MonthlyBill {
    static let sampleData: [MonthlyBill] =
    [
        MonthlyBill(title: "Rent", amount: 950.00, theme: .magenta),
        MonthlyBill(title: "Car", amount: 483.58, theme: .navy),
        MonthlyBill(title: "Student Loan", amount: 157.23, theme: .lavender)
    ]
}
