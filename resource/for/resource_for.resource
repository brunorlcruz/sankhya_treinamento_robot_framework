*** Variables ***

@{Frutas}    laranja    morango    banana    pera    abacaxi    manga
@{Paises}    Brasil    Alemanha    Belgica    Africa    Italia

*** Keywords ***

Contar de 0 a 9
    FOR  ${count}  IN RANGE  0  9
        Log To Console    ${count}
    END

Percorrer uma lista
    FOR  ${fruta}  IN  @{Frutas}
        Log To Console    ${fruta}
    END

Contador de Numeros
    FOR  ${numero}  IN RANGE  0  11
        Log To Console    \nEstou no numero: ${numero}
    END


Imprime paises
    FOR  ${pais}  IN  @{Paises}
        Log To Console    ${pais}
    END