<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
    <style>
        table { border-collapse: collapse; width: 60%; margin: auto; }
        th, td { padding: 10px; text-align: center; }
        th { background-color: #333; color: white; }
        .topper { background-color: gold; }
    </style>
</head>

<body>

<h2 align="center">Student Performance</h2>

<table border="1">
<tr>
    <th>Name</th>
    <th>Marks</th>
    <th>Result</th>
    <th>Grade</th>
</tr>

<xsl:for-each select="class/student">

<tr>

    <!-- Highlight topper -->
    <xsl:if test="marks &gt;= 90">
        <xsl:attribute name="class">topper</xsl:attribute>
    </xsl:if>

    <td><xsl:value-of select="name"/></td>
    <td><xsl:value-of select="marks"/></td>

    <!-- Result using xsl:if -->
    <td>
        <xsl:if test="marks &gt;= 40">Pass</xsl:if>
        <xsl:if test="marks &lt; 40">Fail</xsl:if>
    </td>

    <!-- Grade using xsl:choose -->
    <td>
        <xsl:choose>
            <xsl:when test="marks &gt;= 85">A</xsl:when>
            <xsl:when test="marks &gt;= 60">B</xsl:when>
            <xsl:when test="marks &gt;= 40">C</xsl:when>
            <xsl:otherwise>F</xsl:otherwise>
        </xsl:choose>
    </td>

</tr>
</xsl:for-each>

</table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>