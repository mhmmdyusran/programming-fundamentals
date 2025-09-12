module conditionals_mod
    implicit none

contains
    subroutine demonstrate_conditionals()
        integer :: number, score
        character(len=1) :: grade
        logical :: is_raining
        
        print *, '=== Conditional Statements ==='
        
        ! If-Then-Else statement
        number = 15
        if (number > 0) then
            print *, number, ' is positive'
        else if (number < 0) then
            print *, number, ' is negative'
        else
            print *, 'The number is zero'
        end if
        
        ! Case statement (Select Case)
        score = 85
        select case (score)
            case (90:100)
                grade = 'A'
            case (80:89)
                grade = 'B'
            case (70:79)
                grade = 'C'
            case default
                grade = 'F'
        end select
        
        print *, 'Grade: ', grade
        
        ! Logical IF statement (single line)
        is_raining = .true.
        if (is_raining) print *, 'Bring an umbrella!'
        
        ! Nested if statements
        if (score >= 60) then
            if (score >= 90) then
                print *, 'Excellent performance!'
            else
                print *, 'Good performance'
            end if
        else
            print *, 'Need improvement'
        end if
    end subroutine demonstrate_conditionals
end module conditionals_mod