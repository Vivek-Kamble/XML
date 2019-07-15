<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
    <head>
        <style>
            table{
                width:100%;
                border-collapse:collapse;
            }
            th,td
            {
                border:1px solid black;
            }
            .passrow{
              background-color:green;
            }
            .failrow{
               background-color:red;
            }
        </style>
    </head>
<body>
  <h2>SCHOOL DATA</h2>
  <table>
    <tr>
      <th style="text-align:left">ROll No.</th>
      <th style="text-align:left">Name</th>
      <th style="text-align:left">Address</th>
      <th style="text-align:left">English</th>
      <th style="text-align:left">MAths</th>
      <th style="text-align:left">Science</th>
      <th style="text-align:left">DOB</th>
      <th style="text-align:left">Standard</th>
      <th style="text-align:left">Division</th>
    </tr>
    <xsl:for-each select="school/students">
    <!-- <xsl:sort select="SNAME"></xsl:sort> -->
    <!-- <xsl:if test="ENGLISH &gt;=90"> -->
      <xsl:choose>
        <xsl:when test="MATHS &gt;= 35">
      <tr class="passrow">
        <td><xsl:value-of select="ROLL"/></td>
        <td><xsl:value-of select="SNAME"/></td>
        <td><xsl:value-of select="ADDRESS"/></td>
        <td><xsl:value-of select="ENGLISH"/></td>
        <td><xsl:value-of select="MATHS"/></td>
        <td><xsl:value-of select="SCIENCE"/></td>
        <td><xsl:value-of select="DOB"/></td>
        <td><xsl:value-of select="STANDARD"/></td>
        <td><xsl:value-of select="DIVISION"/></td>
      </tr>
      </xsl:when>
      <xsl:otherwise>
           <tr class="failrow">
        <td><xsl:value-of select="ROLL"/></td>
        <td><xsl:value-of select="SNAME"/></td>
        <td><xsl:value-of select="ADDRESS"/></td>
        <td><xsl:value-of select="ENGLISH"/></td>
        <td><xsl:value-of select="MATHS"/></td>
        <td><xsl:value-of select="SCIENCE"/></td>
        <td><xsl:value-of select="DOB"/></td>
        <td><xsl:value-of select="STANDARD"/></td>
        <td><xsl:value-of select="DIVISION"/></td>
      </tr>
        </xsl:otherwise>
      </xsl:choose>
    <!-- </xsl:if> -->
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>