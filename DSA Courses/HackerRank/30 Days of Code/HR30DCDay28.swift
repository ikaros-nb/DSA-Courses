struct HR30DCDay28: ExerciceContent {
    var task: String {
        """
        Consider a database table, Emails, which has the attributes First Name and Email ID. Given N rows of data simulating the Emails table, print an alphabetically-ordered list of people whose email address ends in '@gmail.com'.
        """
    }
    
    var input: String {
        database
            .enumerated()
            .reduce("") { result, element in
                let (index, value) = element
                if index < database.count - 1 {
                    return result + value + "\n"
                } else {
                    return result + value
                }
            }
    }
    
    var output: String {
        gmailUsers
            .sorted(by: <)
            .enumerated()
            .reduce("") { result, element in
                let (index, value) = element
                if index < gmailUsers.count - 1 {
                    return result + value + "\n"
                } else {
                    return result + value
                }
            }
    }
    
    private let database = [
        "riya riya@gmail.com",
        "julia julia@julia.me",
        "julia sjulia@gmail.com",
        "julia julia@gmail.com",
        "samantha samantha@gmail.com",
        "tanya tanya@gmail.com"
    ]
    private var gmailUsers = [String]()
    
    init() {
        for row in database {
            let contact = row
                .split(separator: " ")
                .map{ String($0) }
            
            let firstName = contact[0]
            let email = contact[1]
            
            let isGmailAddress = email.range(
                of: #".@gmail.com"#,
                options: .regularExpression
            ) != nil
            
            if isGmailAddress {
                gmailUsers.append(firstName)
            }
        }
    }
}
