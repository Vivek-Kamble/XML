<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
    <head>
        
        
    </head>
<body>
  <h2>SCHOOL DATA</h2>

    
    <xsl:for-each select="school/students">
    <!-- <xsl:sort select="SNAME"></xsl:sort> -->
    <!-- <xsl:if test="ENGLISH &gt;=90"> -->
      <xsl:if test="ADDRESS='Pune'">
   
       
        <xsl:value-of select="SNAME"/>(<xsl:value-of select="ROLL"/>)<br></br>
        <xsl:value-of select="ENGLISH"/>, <xsl:value-of select="MATHS"/>, <xsl:value-of select="SCIENCE"/><br></br>
        <xsl:value-of select="ADDRESS"/><br></br><br></br>
        
      
      </xsl:if>
    <!-- </xsl:if> -->
    </xsl:for-each>
 
</body>
</html>
</xsl:template>
</xsl:stylesheet>