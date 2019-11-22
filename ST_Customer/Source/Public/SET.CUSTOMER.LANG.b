* @ValidationCode : MjotMzI3NjQzOTEzOkNwMTI1MjoxNTU0Nzg2NzYyNTU1Om5lZWxhdmFubmFuanA6LTE6LTE6MDowOmZhbHNlOk4vQTpSMThfU1AyLjA6LTE6LTE=
* @ValidationInfo : Timestamp         : 09 Apr 2019 10:42:42
* @ValidationInfo : Encoding          : Cp1252
* @ValidationInfo : User Name         : neelavannanjp
* @ValidationInfo : Nb tests success  : N/A
* @ValidationInfo : Nb tests failure  : N/A
* @ValidationInfo : Rating            : N/A
* @ValidationInfo : Coverage          : N/A
* @ValidationInfo : Strict flag       : N/A
* @ValidationInfo : Bypass GateKeeper : false
* @ValidationInfo : Compiler Version  : R18_SP2.0
$PACKAGE ST.Customer

SUBROUTINE SET.CUSTOMER.LANG(SECTOR, NEW.LANG)
 
    GOSUB INIT
    GOSUB PROCESS
    
RETURN

INIT:
    CUST.SECTOR = SECTOR
RETURN

PROCESS:
    BEGIN CASE
        CASE SECTOR EQ "1001"
            NEW.LANG = "FR"
        CASE CUST.SECTOR EQ "1002"
            NEW.LANG = "DE"
        CASE CUST.SECTOR EQ "1003"
            NEW.LANG = "PL"
        CASE 1
            NEW.LANG = "EN"
    END CASE
    
RETURN

END
