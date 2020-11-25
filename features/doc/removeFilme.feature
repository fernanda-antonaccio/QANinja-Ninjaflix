#language: pt

@login
Funcionalidade: Remover Filme
    Para que eu possa manter o catálogo atualizado
    Sendo um gestor de catálogo que encontrou um título cancelado/indesejado ou que não tem uma boa aceitação pelo público
    Posso remover este item

    @excluir
    Cenário: Excluir filme
        Dado que "10coisas" está no catálogo
        Quando eu solicito a execusão
        E eu confirmo a solicitação
        Então este item deve ser removido do catálogo

    @desistir
    Cenário: Desistir da exclusão
        Dado que "stardust" está no catálogo
        Quando eu solicito a execusão
        Mas cancelo a solicitação
        Então este item deve permanecer no catálogo