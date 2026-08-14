program Calc
  implicit none

  character :: choise
  logical :: running
  logical :: askingValid
  integer :: numbers(2)

  running = .true.
  askingValid = .true.

  do while(running)
    print *, "Enter 2 numbers"
    read * , numbers

    print *, "Sum of ", numbers(1), " And ", numbers(2), " is ", sum(numbers(1), numbers(2))
    print *, "Sub of ", numbers(1), " And ", numbers(1), " is ", sub(numbers(1), numbers(2))
    print *, "Mult of ", numbers(1), " And ", numbers(1), " is ", mul(numbers(1), numbers(2))
    if(div(numbers(1), numbers(2)) == 0) then
      print *, "The Second number can't be less than zero"
    else
      print *, "Div of ", numbers(1), " And ", numbers(2), " is ", div(numbers(1), numbers(2))
    end if

    askingValid = .true.
    do while(askingValid)
      print * , "Want to containue? [y / n ]"
      read * , choise
      if(choise == 'y' .or. choise == 'n') then
        askingValid = .false.
      end if
    end do
    if(choise == 'n') then
      running = .false.
    end if
  end do

contains
  function sum(x,y) result(s)
    integer :: x,y
    integer :: s
    s = x + y
  end function sum

  function sub(x,y) result(s)
    integer :: x,y
    integer :: s
    s = x - y
  end function sub

  function mul(x,y) result(s)
    integer :: x,y
    integer :: s
    s = x * y
  end function mul

  function div(x,y) result(s)
    integer :: x,y
    integer :: s
    logical :: shouldStop
    shouldStop = .false.
    call checkZero(y, shouldStop)
    if(shouldStop) then
      s = 0
      return
    end if
    s = x / y
  end function div

  subroutine checkZero(x, shouldStop)
    integer :: x
    logical :: shouldStop
    shouldStop = x<=0
  end subroutine checkZero
end program Calc
