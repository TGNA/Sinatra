describe "Film" do

 it "first have poster" do
   imdb_searcher = double("MovieDB")
   imdb_searcher.stub(:search_movie).and_return('poster')
   expect(imdb_searcher.search_movie).not_to eq(nil)
 end

 it "first have poster" do
   imdb_searcher = double(['hola', nil])
   imdb_searcher.stub(:search_movie).and_return(['hola', nil])
   expect(imdb_searcher.search_movie).not_to eq(['hola'])
 end

end