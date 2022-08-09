*** Variables ***

@{jogos}    COD    State of Decay    Zomboid    GTG    DayZ
*** Keywords ***

imprimir com condição
    FOR  ${numero}  IN RANGE  0  11
        IF  ${numero} == 5     
            Log To Console    \nEstou no numero: ${numero}
        ELSE IF  ${numero} == 8
            Log To Console    \nEstou no numero: ${numero}
        END  
    END

Imprimir item lista
    FOR  ${jogo}  IN  @{jogos}
       IF  "${jogo}" == "COD"
            Log To Console    \n ${jogo}            
        END    
    END
    