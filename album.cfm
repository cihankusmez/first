<cfprocessingdirective pageencoding="utf-8">

<cfscript>
json = '[
  {
    "Sanatçı" : "Haluk Levent",
    "Albüm" : "Elfida"
  },
  {
    "Sanatçı" : "Tarkan",
    "Albüm" : "Kış Güneşi"
  },
  {
    "Sanatçı" : "Zeki Müren",
    "Albüm" : "Şimdi Uzaklardasın"
  }
]';
</cfscript>

<cfinclude template="template_header.cfm">
<cfset cfData=DeserializeJSON(json)>

<div class="card">
    <div class="card-body">        
        <table class="table table-striped table-hover">
            <thead>
                <tr>
                    <td>Sanatçı</td>
                    <td>Albüm</td>
                </tr>
            </thead>
            <tbody>
                <cfoutput>    
                  <cfloop from="1" to="#arraylen(cfData)#" index="i">
                      <tr>
                          <td>#cfData[i].Sanatçı#</td>
                          <td>#cfData[i].Albüm#</td>                      
                      </tr>
                  </cfloop>
                </cfoutput>
            </tbody>
        </table>
    </div>
</div>
<cfinclude template="template_footer.cfm">