program calcular_tempo
    implicit none

    integer, parameter :: nd = 5
    integer :: i, j
    real :: s, iniciod1, fimd1
    real, dimension(4) :: tempos

    s = 0.0

    do i = 0, 3
        ! Usando a função CPU_TIME para maior precisão em Fortran
        call cpu_time(iniciod1)

        do j = 0, 10**(nd + i)
            s = s + 2.5 *j
        end do

        call cpu_time(fimd1)
        tempos(i + 1) = fimd1 - iniciod1

        print *, "Tempo de execução (s):", tempos(i + 1)
    end do

end program calcular_tempo
