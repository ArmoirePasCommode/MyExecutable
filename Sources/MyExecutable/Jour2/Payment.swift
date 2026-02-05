protocol PaymentMethod {
    func total(for amount: Double) -> Double
}
struct CreditCard: PaymentMethod {
    func total(for amount: Double) -> Double {
        return amount * 1.02
    }
}
struct Cash: PaymentMethod {
    func total(for amount: Double) -> Double {
        return amount
    }
}
func processPayment(amount: Double, method: PaymentMethod) {
    let total = method.total(for: amount)
    print("Montant: \(amount)€")
    print("Total: \(String(format: "%.2f", total))€")
}
