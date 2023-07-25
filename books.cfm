<cfprocessingdirective pageencoding="utf-8">
<cfinclude template="template_header.cfm">
        
        <cfquery name="qBooks" datasource="wc" result="r">
            select * from books
        </cfquery>

        <div class="card">
            <div class="card-body">
                
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <td>Kitap Adı</td>
                            <td>Yazar</td>
                            <td>Tarih</td>
                        </tr>
                    </thead>
                    <tbody>
                        <CFLOOP QUERY="qBooks">
                            <CFOUTPUT>
                                <tr>
                                    <td>#qBooks.BookName#</td>
                                    <td>#qBooks.AuthorName#</td>                        
                                    <td>#qBooks.CreatedAt#</td>                        
                                </tr>
                            </CFOUTPUT>
                        </CFLOOP>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

<cfinclude template="template_footer.cfm">