struct HR30DCDay29: ExerciceContent {
    private func bitwiseAnd(N: Int, K: Int) -> Int {
        ((K-1) | K <= N) ? K-1 : K-2
    }
    
    var task: String {
        """
        Given set S = {1, 2, 3, ..., N}. Find two integers, A and B (where A < B), from set S such that the value of A&B is the maximum possible and also less than a given integer, K. In this case, & represents the bitwise AND operator.
        """
    }
    
    var input: String {
        """
        5 2     N = 5, K = 2
        8 5     N = 8, K = 5
        2 2     N = 2, K = 2
        """
    }
    
    var output: String {
        """
        \(String(bitwiseAnd(N: 5, K: 2)))
        \(String(bitwiseAnd(N: 8, K: 5)))
        \(String(bitwiseAnd(N: 2, K: 2)))
        """
    }
}
