Quando("que {string} está no catálogo") do |movie_code|
    steps %{
        Dado que "#{movie_code}" é um novo filme
        Quando eu faço o cadastro deste filme
    }
end

Quando("eu solicito a execusão") do
    @moviePage.remove(@movie["title"])
end
  
Quando("eu confirmo a solicitação") do
    @moviePage.sweetAlert.swal2_confirm
end
  
Então("este item deve ser removido do catálogo") do
    expect(@moviePage.has_no_movie(@movie["title"])).to be true
end

Quando("cancelo a solicitação") do
    @moviePage.sweetAlert.swal2_cancel
end
  
Então("este item deve permanecer no catálogo") do
    expect(@moviePage.has_movie(@movie["title"])).to be true
end