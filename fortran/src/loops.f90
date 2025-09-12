module loops_mod
    implicit none

contains
    subroutine demonstrate_loops()
        integer :: i, j, count
        
        print *, '=== Loops ==='
        
        ! DO loop (traditional counter-based)
        print *, 'Basic DO loop:'
        do i = 1, 4
            write(6,'(I3)',advance='no') i
        end do
        print *
        
        ! DO loop with step
        print *, 'DO loop with step of 2:'
        do i = 1, 8, 2
            write(6,'(I3)',advance='no') i
        end do
        print *
        
        ! Nested DO loops
        print *, 'Multiplication table:'
        do i = 1, 3
            do j = 1, 3
                write(6,'(I3)',advance='no') i*j
            end do
            print *
        end do
        
        ! DO WHILE loop
        print *, 'DO WHILE loop:'
        count = 1
        do while (count <= 4)
            write(6,'(I3)',advance='no') count
            count = count + 1
        end do
        print *
        
        ! EXIT example (breaking out of loop)
        print *, 'Loop with EXIT:'
        do i = 1, 10
            if (i > 4) exit
            write(6,'(I3)',advance='no') i
        end do
        print *
        
        ! CYCLE example (continuing to next iteration)
        print *, 'Loop with CYCLE (skipping even numbers):'
        do i = 1, 6
            if (mod(i,2) == 0) cycle
            write(6,'(I3)',advance='no') i
        end do
        print *
    end subroutine demonstrate_loops
end module loops_mod