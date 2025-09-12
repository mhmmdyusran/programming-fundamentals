program main
    use variables_mod
    use input_output_mod
    use operators_mod
    use conditionals_mod
    use loops_mod
    use arrays_mod
    use functions_mod
    implicit none
    
    character(len=1) :: pause_input
    
    print *, 'Programming Fundamentals in Fortran'
    print *
    
    ! Demonstrate all concepts
    call demonstrate_variables()
    call demonstrate_io()
    call demonstrate_operators()
    call demonstrate_conditionals()
    call demonstrate_loops()
    call demonstrate_arrays()
    call demonstrate_functions()
    
    ! Pause before exit
    print *, 'Press Enter to exit...'
    read *, pause_input
end program main