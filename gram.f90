! This program returns the orthogonal basis vectors out of non-orthogonal basis.
! Author: Rajendra Adhikari
! date: 5th Jan, 2019
! Kathmandu University, Dhulikhel, Kavre, Nepal
program GramS
  implicit none
  integer(4) i, j, n, k
! n is number of rows 
! k is number of cols
  parameter(n=3, k=3)
  real(8) v(n,k), u(n,k)
  real(8), external :: dot
  u=0.0d0
  open(1,file='in.dat', action='read') ! Please change the content of in.dat with your vectors
  do i=1, n
    read(1,*) (v(i,j),j=1,k)
  end do
  close(1)
  u(:,1) = v(:,1)/sqrt(dot(v(:,1),v(:,1),n))
  do i=2, k
    u(:,i) = v(:,i)
    do j=1,i-1
      u(:,i)=u(:,i)-dot(u(:,i),u(:,j),n)/dot(u(:,j),u(:,j),n)*u(:,j)
    end do
    u(:,i)=u(:,i)/sqrt(dot(u(:,i),u(:,i),n))
  end do
  
  do i=1, n
    write(*,10) (u(i,j), j=1,k)
  end do
  10 format(3f13.8)
end program GramS

