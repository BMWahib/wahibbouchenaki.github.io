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
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
