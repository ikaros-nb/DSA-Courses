struct HR30DCDay26: ExerciceContent {
    typealias LibraryDate = (day: Int, month: Int, year: Int)
    
    private static func getLibraryDate(from inputString: String) -> LibraryDate {
        let array = inputString
            .components(separatedBy: " ")
            .compactMap(Int.init)
        return LibraryDate(
            day: array[0],
            month: array[1],
            year: array[2]
        )
    }
    
    private func calculateFine(
        returnedDate: LibraryDate,
        dueDate: LibraryDate
    ) -> Int {
        if returnedDate.year > dueDate.year {
            return 10_000
        }
        
        if returnedDate.year < dueDate.year {
            return 0
        }
        
        if returnedDate.month > dueDate.month {
            return (returnedDate.month - dueDate.month) * 500
        } else if returnedDate.day > dueDate.day {
            return (returnedDate.day - dueDate.day) * 15
        }
        
        return 0
    }
    
    let returnedDate: LibraryDate
    let dueDate: LibraryDate
    
    var task: String {
        """
        Your local library needs your help! Given the expected and actual return dates for a library book, create a program that calculates the fine (if any). The fee structure is as follows:
        1. If the book is returned on or before the expected return date, no fine will be charged (i.e.: fine = 0).
        2. If the book is returned after the expected return day but still within the same calendar month and year as the expected return date, fine = 15 Hackos * (the number of days late).
        3. If the book is returned after the expected return month but still within the same calendar year as the expected return date, the fine = 500 Hackos * (the number of months late).
        4. If the book is returned after the calendar year in which it was expected, there is a fixed fine of 10000 Hackos.
        """
    }
    
    var input: String {
        """
        9 6 2015    day = 9, month = 6, year = 2015 (date returned)
        6 6 2015    day = 6, month = 6, year = 2015 (date due)
        """
    }
    
    var output: String {
        String(calculateFine(
            returnedDate: returnedDate,
            dueDate: dueDate
        ))
    }
    
    init() {
        self.returnedDate = HR30DCDay26.getLibraryDate(from: "9 6 2015")
        self.dueDate = HR30DCDay26.getLibraryDate(from: "6 6 2015")
    }
}
