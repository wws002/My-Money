import Foundation


struct MonthlyBill: Identifiable {
    let id: UUID
    let title: String
    var amount: Double
    var due: String
    var paid: Bool
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, amount: Double, due: String, paid: Bool, theme: Theme) {
        self.id = id
        self.title = title
        self.amount = amount
        self.due = due
        self.paid = paid
        self.theme = theme
    }
}

extension MonthlyBill {
    static let sampleData: [MonthlyBill] =
    [
        MonthlyBill(title: "Rent", amount: 950.00, due: "1/1/23", paid: false, theme: .magenta),
        MonthlyBill(title: "Car", amount: 483.58, due: "1/5/23", paid: true, theme: .navy),
        MonthlyBill(title: "Student Loan", amount: 157.23, due: "1/23/23", paid: true, theme: .lavender)
    ]
}
