module input_output_mod
    implicit none

contains
    subroutine demonstrate_io()
        character(len=50) :: name
        integer :: age, io_stat
        character(len=10) :: age_str
        
        print *, '=== Input and Output ==='
        
        ! Basic input
        print *, 'Enter your name: '
        read *, name
        
        ! Read age with error checking
10      print *, 'Enter your age (numeric value): '
        read(*,'(A)',iostat=io_stat) age_str
        if (io_stat /= 0) then
            print *, 'Error reading input. Please try again.'
            goto 10
        end if
        read(age_str,*,iostat=io_stat) age
        if (io_stat /= 0) then
            print *, 'Please enter a valid number.'
            goto 10
        end if
        
        ! Basic output
        print *, 'Hello, ', trim(name), '!'
        print *, 'You are ', age, ' years old.'
        
        ! Formatted output
        print '(A,I3,A)', 'In 10 years, you will be ', age + 10, ' years old.'
        
        ! Write to specific unit (standard output is unit 6)
        write(6,*) 'Writing to standard output explicitly'
        
        ! Formatted write with field width
        write(6,'(A12,I4)') 'Your age is:', age
    end subroutine demonstrate_io
end module input_output_mod