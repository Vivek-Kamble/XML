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
      <!-- <th>TOTAL</th>
      <th>AVERAGE</th> -->
    </tr>
    <xsl:for-each select="school/students/ADDRESS[line1]/..">
    <!-- <xsl:sort select="SNAME"></xsl:sort> -->
    <!-- <xsl:if test="ENGLISH &gt;=90"> -->
      <!-- <xsl:choose> -->
        <!-- <xsl:when test="MATHS &gt;= 35 and SCIENCE &gt;= 35 and ENGLISH &gt;= 35"> -->
      <!-- <xsl:when test="STANDARD=3 or STANDARD=4"> -->
          <!-- <xsl:when test="ADDRESS[@state='GJ']"> -->
      <tr>
        <td><xsl:value-of select="ROLL"/></td>
        <td><xsl:value-of select="SNAME"/></td>
        <td><xsl:value-of select="ADDRESS"/></td>
        <td><xsl:value-of select="ENGLISH"/></td>
        <td><xsl:value-of select="MATHS"/></td>
        <td><xsl:value-of select="SCIENCE"/></td>
        <td><xsl:value-of select="DOB"/></td>
        <td><xsl:value-of select="STANDARD"/></td>
        <td><xsl:value-of select="DIVISION"/></td>
        <!-- <td><xsl:value-of select="ENGLISH+MATHS+SCIENCE"/></td>
        <td><xsl:value-of select="(ENGLISH+MATHS+SCIENCE) div 3"/></td> -->
      </tr>
      <!-- </xsl:when> -->
     
      <!-- </xsl:choose> -->
    <!-- </xsl:if> -->
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
<!-- shows only 1st student -->
 <!-- <xsl:for-each select="school/students[1]"> -->
 <!-- last studentt -->
 <!--  <xsl:for-each select="school/students[last()]"> -->
 <!-- top 100 students -->
 <!-- <xsl:for-each select="school/students[position()&lt;=100]"> -->