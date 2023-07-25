<cfprocessingdirective pageencoding="utf-8">
<cfinclude template="template_header.cfm">

<cfquery name="qMovies" datasource="wc" result="r">
            select * from Movies 
            left outer join ActorsMovies
            on Movies.Id = ActorsMovies.MovieId
            left outer join Actors
            on Actors.Id = ActorsMovies.ActorId
        </cfquery>

        <div class="card">
            <div class="card-body">
                
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <td>Filmin Adı</td>
                            <td>Oyuncu</td>
                            <td>Yıl</td>
                            <td>IMDB</td>
                            <td>Eklenme Tarihi</td>
                        </tr>
                    </thead>
                    <tbody>
                        <CFLOOP QUERY="qMovies">
                            <CFOUTPUT>
                                <tr>
                                    <td>#qMovies.MovieName#</td>
                                    <td>#qMovies.ActorName#</td>
                                    <td>#qMovies.Year#</td>                        
                                    <td>#qMovies.Imdb#</td>                        
                                    <td>#qMovies.CreatedAt#</td>                        
                                </tr>
                            </CFOUTPUT>
                        </CFLOOP>
                    </tbody>
                </table>
            </div>
        </div>
    </div> 

<cfinclude template="template_footer.cfm">