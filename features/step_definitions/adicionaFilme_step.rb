Dado("que {string} é um novo filme") do |movie_code|
    file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/movies.yaml"))
    @movie = file[movie_code]
    #Database.new.delete_movie(@movie["title"])
end
  
Quando("eu faço o cadastro deste filme") do
    @moviePage.buttonAdd
    @moviePage.movieAdd.cadastro(@movie)
end
  
Então("devo ver o novo filme na lista") do
    result = @moviePage.movie_tr(@movie["title"])
    expect(result).to have_text @movie["title"]
    expect(result).to have_text @movie["status"]
end

Então("devo ver a notificação {string}") do |mensagem|
    expect(@moviePage.movieAdd.alert).to have_text mensagem
end