SUBROUTINE CU.INP.NATIONALITY.VALIDATION
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------

*-----------------------------------------------------------------------------

    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_F.CUSTOMER
	ETEXT = ''
	E=''
	ERR=''
    CUS.NATIONALITY=R.NEW(EB.CUS.NATIONALITY)
    IF CUS.NATIONALITY NE 'US' AND  CUS.NATIONALITY NE 'UK' THEN
	    AF = EB.CUS.NATIONALITY
        ETEXT='Invalid Nationality chosen. Only US or UK allowed'
        CALL STORE.END.ERROR
    END
    RETURN


END
