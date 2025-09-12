module functions_mod
    implicit none

contains
    ! Function with return value
    function calculate_square(number) result(square)
        integer, intent(in) :: number
        integer :: square
        square = number * number
    end function calculate_square
    
    ! Function with multiple return values using optional arguments
    subroutine divide_with_remainder(dividend, divisor, quotient, remainder)
        integer, intent(in) :: dividend, divisor
        integer, intent(out) :: quotient, remainder
        
        quotient = dividend / divisor
        remainder = mod(dividend, divisor)
    end subroutine divide_with_remainder
    
    ! Function with optional argument
    function greet(name, title) result(greeting)
        character(len=*), intent(in) :: name
        character(len=*), intent(in), optional :: title
        character(len=50) :: greeting
        
        if (present(title)) then
            greeting = 'Hello, ' // trim(title) // ' ' // trim(name) // '!'
        else
            greeting = 'Hello, ' // trim(name) // '!'
        end if
    end function greet
    
    ! Recursive function
    recursive function factorial(n) result(fact)
        integer, intent(in) :: n
        integer :: fact
        
        if (n <= 1) then
            fact = 1
        else
            fact = n * factorial(n-1)
        end if
    end function factorial
    
    ! Pure function (no side effects)
    pure function celsius_to_fahrenheit(celsius) result(fahrenheit)
        real, intent(in) :: celsius
        real :: fahrenheit
        fahrenheit = (celsius * 9.0/5.0) + 32.0
    end function celsius_to_fahrenheit
    
    ! Main demonstration subroutine
    subroutine demonstrate_functions()
        integer :: num, quot, rem
        real :: temp_c = 25.0
        
        print *, '=== Functions ==='
        
        ! Using basic function
        num = 5
        print *, 'Square of ', num, ' is: ', calculate_square(num)
        
        ! Using subroutine with multiple returns
        call divide_with_remainder(17, 5, quot, rem)
        print *, '17 divided by 5:'
        print *, 'Quotient:', quot
        print *, 'Remainder:', rem
        
        ! Using function with optional argument
        print *, greet('Yusran')
        print *, greet('Firmansyah', 'Mr.')
        
        ! Using recursive function
        print *, 'Factorial of 5:', factorial(5)
        
        ! Using pure function
        print *, '25°C in Fahrenheit:', celsius_to_fahrenheit(temp_c)
    end subroutine demonstrate_functions
end module functions_mod