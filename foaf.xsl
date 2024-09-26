<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:foaf="http://xmlns.com/foaf/0.1/"
                xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">

  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <title>FOAF Profil de Wahib Bouchenaki</title>
      </head>
      <body>
        <h1>FOAF Profil de Wahib Bouchenaki</h1>
        <p><strong>Nom:</strong> <xsl:value-of select="//foaf:name"/></p>
        <p><strong>Email:</strong> <xsl:value-of select="//foaf:mbox/@rdf:resource"/></p>
        <p><strong>Page personnelle:</strong> 
          <a>
            <xsl:attribute name="href">
              <xsl:value-of select="//foaf:homepage/@rdf:resource"/>
            </xsl:attribute>
            <xsl:value-of select="//foaf:homepage/@rdf:resource"/>
          </a>
        </p>
        <p><strong>Avatar:</strong> 
          <img>
            <xsl:attribute name="src">
              <xsl:value-of select="//foaf:img/@rdf:resource"/>
            </xsl:attribute>
            <xsl:attribute name="width">150</xsl:attribute>
            <xsl:attribute name="height">150</xsl:attribute>
          </img>
        </p>
        <p><strong>Surnom:</strong> <xsl:value-of select="//foaf:nick"/></p>
        <p><strong>Genre:</strong> <xsl:value-of select="//foaf:gender"/></p>

        <div>
           <h2>Connaissances</h2>
             <xsl:for-each select="foaf:Person/foaf:knows/foaf:Person">
             <div class="friend">
             <h3><xsl:value-of select="foaf:name"/></h3>
             <p><strong>Email :</strong>
             <a href="{foaf:mbox/@rdf:resource}">
             <xsl:value-of select="foaf:mbox/@rdf:resource"/>
             </a>
             </p>
             <p><strong>Page d'accueil :</strong>
             <a href="{foaf:homepage/@rdf:resource}">
             <xsl:value-of select="foaf:homepage/@rdf:resource"/>
             </a>
             </p>
             <p><strong>Nom d'utilisateur :</strong> <xsl:value-of select="foaf:nick"/></p>
             <p><strong>Titre :</strong> <xsl:value-of select="foaf:title"/></p>
       </div>
 </xsl:for-each>
</div>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
