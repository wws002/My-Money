import Foundation


struct MonthlyBill: Identifiable {
    let id: UUID
    let title: String
    var amount: Double
    var due: String
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, amount: Double, due: String, theme: Theme) {
        self.id = id
        self.title = title
        self.amount = amount
        self.due = due
        self.theme = theme
    }
}

extension MonthlyBill {
    static let sampleData: [MonthlyBill] =
    [
        MonthlyBill(title: "Rent", amount: 950.00, due: "1/1/23", theme: .magenta),
        MonthlyBill(title: "Car", amount: 483.58, due: "1/5/23", theme: .navy),
        MonthlyBill(title: "Student Loan", amount: 157.23, due: "1/23/23", theme: .lavender)
    ]
}
