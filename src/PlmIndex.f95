integer function PlmIndex(l, m)
!-------------------------------------------------------------------------------
!
!	This function will return the index corresponding 
!	to a given l and m in the arrays of Legendre Polynomials
!	generated by routines such as PlmBar and PlmSchmidt.
!
!	Calling Parameters
!
!		l	Spherical harmonic angular degree.
!		m	Spherical harmonic angular order.
!
!	Dependencies:	None
!
!	Copyright (c) 2015, Mark A. Wieczorek
!	All rights reserved.
!
!-------------------------------------------------------------------------------
	implicit none
	
	integer, intent(in)	:: l, m
	
	if (l < 0) then
		print*, "Error --- PlmIndex"
		print*, "L must be greater of equal to 0."
		print*, "L = ", l
		print*, "M = ", m
		stop
		
	else if (m < 0 .or.  m > l) then
		print*, "Error --- PlmIndex"
		print*, "M must be greater than or equal to zero and less than or " // &
		        "equal to L."
		print*, "L = ", l
		print*, "M = ", m
		stop
		
	end if
	
	PlmIndex = (l*(l+1))/2+m+1
	
end function PlmIndex
