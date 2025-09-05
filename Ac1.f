          program Ac1
           implicit none
           real :: kilos,Pkilo, total
           integer :: tipo
           character(len=1) :: volumen,loop
           logical :: op
           do
           ! Inizializacion
           op = .true.
           Pkilo = 50
          ! Pedir valores al usuario
           print *, 'Ingrese la cantidad de kilos:'
           read *, kilos
           print *, 'Ingrese el tipo de uva (1=A, 2=B):'
           read *, tipo
           print *, 'Ingrese el tamano de uva (A = Grande, B = Chica):'
           read *, volumen
           ! Escructura de Control
           if (tipo == 1) then              ! Tipo A
            if (volumen .eq. 'A' .or. volumen .eq. 'a') then
             Pkilo = Pkilo + 0.20
             total = Pkilo * kilos
            else if (volumen == 'B' .or. volumen .eq. 'b') then
             Pkilo = Pkilo + 0.30
             total = Pkilo * kilos
            else
            op = .false.
            end if
          else if (tipo == 2) then         ! Tipo B
            if (volumen .eq. 'A' .or. volumen .eq. 'a') then
             Pkilo = Pkilo - 0.30
             total = Pkilo * kilos
            else if (volumen == 'B' .or. volumen .eq. 'b') then
             Pkilo = Pkilo - 0.50
             total = Pkilo * kilos
            end if
         else
            op =  .false.
        end if
        if (op)then
            print *, 'Cantidad ',kilos
            print *, 'Tipo de Uva ',tipo
            print *, 'Tama¤o de Uva ',volumen
            print *, 'Precio inicial ',Pkilo
            print *, 'Total=',total
        else
           print *, 'Datos no encontrados'
        end if
        print *, 'Desea realizar otra operecion S/N'
        read *, loop
         if (loop == 'N' .or. loop == 'n') exit
         end do
         end program
