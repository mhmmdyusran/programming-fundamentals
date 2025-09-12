module arrays_mod
    implicit none

contains
    subroutine demonstrate_arrays()
        ! Array declarations
        integer, dimension(5) :: numbers = [1, 2, 3, 4, 5]
        real, dimension(3,3) :: matrix
        character(len=10), dimension(4) :: fruits
        integer :: i, j
        
        print *, '=== Arrays ==='
        
        ! Initialize arrays
        fruits = ['apple    ', 'banana   ', 'orange   ', 'grape    ']
        matrix = reshape([1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0], [3,3])
        
        ! Array operations
        print *, 'Original numbers:', numbers
        print *, 'Numbers * 2:', numbers * 2
        print *, 'Sum of numbers:', sum(numbers)
        print *, 'Maximum value:', maxval(numbers)
        print *, 'Minimum value:', minval(numbers)
        
        ! Array slicing
        print *, 'First three numbers:', numbers(1:3)
        print *, 'Every second number:', numbers(1:5:2)
        
        ! 2D array operations
        print *, 'Matrix:'
        do i = 1, 3
            print *, (matrix(i,j), j=1,3)
        end do
        
        ! Array of strings
        print *, 'Fruits:'
        do i = 1, size(fruits)
            print *, trim(fruits(i))
        end do
        
        ! Array functions
        print *, 'Array size:', size(numbers)
        print *, 'Matrix shape:', shape(matrix)
        
        ! Array allocation (dynamic arrays)
        block
            integer, allocatable :: dynamic_array(:)
            allocate(dynamic_array(3))
            dynamic_array = [10, 20, 30]
            print *, 'Dynamic array:', dynamic_array
            deallocate(dynamic_array)
        end block
    end subroutine demonstrate_arrays
end module arrays_mod