! This function simply computes the dot product of two vectors.
! Author: Rajendra Adhikar
! Kathmandu University, Dhulikhel, Kavre Nepal
! Date Jan 5th, 2019
function dot(x, y, n)  ! x and y are arrays of length n
  implicit none
  real(8) dot
  real(8) val
  integer(4) i, n
  real(8) x(n), y(n)
  val=0.0d0
  do i=1,n
    val=val+x(i)*y(i)
  end do
  dot=val
end function dot

  
