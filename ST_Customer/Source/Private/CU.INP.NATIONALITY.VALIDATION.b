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
	V$ERROR=@FALSE
	
    CUS.NATIONALITY=R.NEW(EB.CUS.NATIONALITY)
    IF COMI NE 'IN' AND AF = EB.CUS.NATIONALITY THEN
	E='Invalid Nationality chosen. SG or IN allowed'
        ETEXT='Invalid Nationality chosen. Only IN allowed'
	V$ERROR=@TRUE
        CALL STORE.END.ERROR
	ETEXT = ''
	E=''
	ERR=''
    END
    RETURN


END
