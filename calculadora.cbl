      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULADORA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 NUMEROINICIAL        PIC 9(5)       VALUE ZERO.
       01 NUMEROFINAL          PIC 9(5)       VALUE ZERO.
       01 OPERADOR             PIC X(1)       VALUE "+".
          88 DIVIDIR                          VALUE "/".
          88 SUMAR                            VALUE "+".
          88 RESTAR                           VALUE "-".
          88 MULTIPLICAR                      VALUE "*".  
          88 OPERADORESVALIDO                 VALUE "*"
                                        , "+", "/", "-".
       01 RESULTADO            PIC S9(5)V9(2) VALUE ZERO. 
           

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "INGRESAR NUMERO INICIAL".
           ACCEPT NUMEROINICIAL.
           DISPLAY "INGRESAR SIMBOLO OPERACION".
           ACCEPT OPERADOR.
           DISPLAY "INGRESAR NUMERO FINAL".
           ACCEPT NUMEROFINAL. 
           EVALUATE TRUE
           WHEN DIVIDIR
                DIVIDE NUMEROINICIAL INTO NUMEROFINAL
                   GIVING RESULTADO
           WHEN SUMAR
                ADD NUMEROINICIAL, NUMEROFINAL GIVING
                   RESULTADO
           WHEN RESTAR
                SUBTRACT NUMEROINICIAL FROM NUMEROFINAL
                   GIVING RESULTADO
           WHEN MULTIPLICAR
                MULTIPLY NUMEROINICIAL BY NUMEROFINAL
                   GIVING RESULTADO
                
                
           END-EVALUATE
            
           IF OPERADORESVALIDO 
              DISPLAY "RESULTADO ES = " RESULTADO
           END-IF
            
           STOP RUN.
       END PROGRAM CALCULADORA.