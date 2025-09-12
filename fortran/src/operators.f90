module operators_mod
    implicit none

contains
    subroutine demonstrate_operators()
        integer :: a, b
        real :: x, y
        logical :: p, q
        
        print *, '=== Operators ==='
        
        ! Arithmetic operators
        a = 10
        b = 3
        
        print *, 'Arithmetic Operators:'
        print *, 'Addition: ', a + b
        print *, 'Subtraction: ', a - b
        print *, 'Multiplication: ', a * b
        print *, 'Division (real): ', real(a) / real(b)
        print *, 'Integer Division: ', a / b
        print *, 'Modulo: ', mod(a, b)
        print *, 'Power: ', a ** 2
        
        ! Comparison operators
        print *, 'Comparison Operators:'
        print *, 'Equal to: ', a == b
        print *, 'Not equal to: ', a /= b
        print *, 'Greater than: ', a > b
        print *, 'Less than: ', a < b
        print *, 'Greater or equal: ', a >= b
        print *, 'Less or equal: ', a <= b
        
        ! Logical operators
        p = .true.
        q = .false.
        
        print *, 'Logical Operators:'
        print *, 'AND: ', p .and. q
        print *, 'OR: ', p .or. q
        print *, 'NOT: ', .not. p
        
        ! Real numbers
        x = 3.14
        y = 2.0
        
        print *, 'Real Number Operations:'
        print *, 'Addition: ', x + y
        print *, 'Multiplication: ', x * y
        print *, 'Division: ', x / y
    end subroutine demonstrate_operators
end module operators_mod