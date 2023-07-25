<cfprocessingdirective pageencoding="utf-8">
<cfinclude template="template_header.cfm">

<cfquery name="qInspireds" datasource="wc" result="r">
            select * from Inspireds
        </cfquery>

        <div class="card">
            <div class="card-body">
                
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <td>İlham Alınan Kişi</td>
                            <td>Meslek</td>
                        </tr>
                    </thead>
                    <tbody>
                        <CFLOOP QUERY="qInspireds">
                            <CFOUTPUT>
                                <tr>
                                    <td>#qInspireds.InspiredName#</td>
                                    <td>#qInspireds.Topic#</td>                    
                                </tr>
                            </CFOUTPUT>
                        </CFLOOP>
                    </tbody>
                </table>
            </div>
        </div>
    </div> 

<cfinclude template="template_footer.cfm">