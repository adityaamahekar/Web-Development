<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
      <title>Student Marks - XSLT</title>
      <style>
        body {
          font-family: Arial, sans-serif;
        }
        h2 {
          text-align: center;
        }
        table {
          width: 80%;
          margin: auto;
          border-collapse: collapse;
        }
        th, td {
          border: 1px solid black;
          padding: 10px;
          text-align: center;
        }
        th {
          background-color: #4CAF50;
          color: white;
        }
        .high {
          background-color: #d4edda;
          font-weight: bold;
        }
      </style>
    </head>

    <body>
      <h2>Student Grade Report</h2>

      <table>
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Department</th>
          <th>Marks</th>
          <th>Grade</th>
        </tr>

        <xsl:for-each select="student_app/student">
          
          <xsl:choose>
            <xsl:when test="marks &gt; 90">
              <tr class="high">
            </xsl:when>
            <xsl:otherwise>
              <tr>
            </xsl:otherwise>
          </xsl:choose>

            <td><xsl:value-of select="id"/></td>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="department"/></td>
            <td><xsl:value-of select="marks"/></td>

            <td>
              <xsl:choose>
                <xsl:when test="marks &gt; 80">Excellent</xsl:when>
                <xsl:when test="marks &gt; 60">Good</xsl:when>
                <xsl:otherwise>Average</xsl:otherwise>
              </xsl:choose>
            </td>

          </tr>
        </xsl:for-each>

      </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>