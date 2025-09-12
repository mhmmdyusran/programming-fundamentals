module variables_mod
    implicit none

    ! Module-level constants
    integer, parameter :: MAX_SCORE = 100
    real, parameter :: PI = 3.14159

contains
    subroutine demonstrate_variables()
        ! Variable declarations
        character(len=20) :: name
        integer :: age
        real :: height
        logical :: is_student
        
        ! Arrays
        integer, dimension(5) :: numbers = [1, 2, 3, 4, 5]
        real, dimension(2,2) :: matrix
        
        ! Derived type (similar to struct)
        type :: person
            character(len=20) :: name
            integer :: age
        end type person
        type(person) :: student
        
        ! Assigning values
        name = 'John Doe'
        age = 25
        height = 1.75
        is_student = .true.
        matrix = reshape([1.0, 2.0, 3.0, 4.0], [2,2])
        
        ! Output
        print *, '=== Variables and Data Types ==='
        print *, 'Name: ', trim(name)
        print *, 'Age: ', age
        print *, 'Height: ', height
        print *, 'Is Student: ', is_student
        
        print *, 'Numbers array: ', numbers
        print *, 'Matrix:'
        print *, matrix(1,:)
        print *, matrix(2,:)
        
        ! Using derived type
        student%name = 'Jane Smith'
        student%age = 20
        print *, 'Student:', trim(student%name), ', Age:', student%age
        
        ! Using constant
        print *, 'Maximum Score:', MAX_SCORE
        print *, 'PI:', PI
    end subroutine demonstrate_variables
end module variables_mod