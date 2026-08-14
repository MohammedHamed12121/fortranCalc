program Calc
  implicit none

  integer :: a,b
  character :: choise
  logical :: running
  logical :: askingValid
  running = .true.
  askingValid = .true.

  do while(running)
    print *, "Enter first number"
    read *, a
    
    print *, "Enter second number"
    read *, b
    
    print *, "Sum of ", a, " And ", b, " is ", sum(a,b)
    print *, "Sub of ", a, " And ", b, " is ", sub(a,b)
    print *, "Mult of ", a, " And ", b, " is ", mul(a,b)
    if(div(a,b) == 0) then
      print *, "The Second number can't be less than zero"
    else
      print *, "Div of ", a, " And ", b, " is ", div(a,b)
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
