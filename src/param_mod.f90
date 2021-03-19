!******************************************************************************
!**                      MODULE OF GLOBAL PARAMETERS                         **
!******************************************************************************
module param_mod
 implicit none
!Constant for character lenght
 integer(kind=4),parameter :: midn=6, & !Maximum length for identifier
                            & milb=6, & !Maximum length for internal labels
                            & mchr=6, & !Maximum length for ???
                            & mprg=8, & !Maximum length for program label
                            & mich=11, & !Maximum length of digits for integers
                            & mset=15, & !Maximum length for sets comments
                            & mvar=15, & !Maximum length for variable name and components
                            & mnam=30, & !Maximum length for data label names
                            & msts=30, & !Maximum length for medium character variables
                            & mttl=80, & !Maximum length for problem title
                            & mstl=80, & !Maximum length for long character variables
                            & mlen=80, & !Maximum length for parameters and file names
                            & mlin=80, & !Maximum length for general lines
                            & miln=132 !Maximum length for lines of data input
end module param_mod
