struct HR30DCDay25: ExerciceContent {
    private let testCases: [Int]
    
    private func isPrime(number: Int) -> Bool {
        // A prime is a natural number greater than 1
        guard number > 1 else { return false }
        
        // 2 is the only even prime number
        if number == 2 {
            return true
        }
        
        // Other even numbers aren't prime
        if number % 2 == 0 {
            return false
        }
        
        // Check only odd numbers from 3 to the square root of the number
        var factor = 3
        while factor * factor <= number {
            if number % factor == 0 {
                return false
            }
            factor += 2
        }
        
        return true
    }
    
    private func primalityAlgorithm(testCases: [Int]) -> String {
        testCases
            .enumerated()
            .map { index, testCase in
                let value = isPrime(number: testCase) ? "Prime" : "Not prime"
                let isLastElement = index == testCases.count - 1
                return "\(value)\(isLastElement ? "" : "\n")"
            }
            .reduce("", +)
    }
    
    var task: String {
        """
        A prime is a natural number greater than 1 that has no positive divisors other than 1 and itself. Given a number, n, determine and print whether it is "Prime" or "Not prime".

        Note: If possible, try to come up with a O(√n) primality algorithm, or see what sort of optimizations you come up with for an O(n) algorithm. Be sure to check out the Editorial after submitting your code.
        """
    }
    
    var input: String {
        testCases.description
    }
    
    var output: String {
        primalityAlgorithm(testCases: testCases)
    }
    
    init() {
        testCases = [12, 5, 7, 31, 33]
    }
}
