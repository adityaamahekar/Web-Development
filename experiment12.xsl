<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
      <title>Bookstore Inventory</title>
      <style>
        body {
          font-family: Arial, sans-serif;
        }
        h2 {
          text-align: center;
          color: #333;
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
        tr:nth-child(even) {
          background-color: #f2f2f2;
        }
      </style>
    </head>

    <body>
      <h2>Bookstore Collection</h2>

      <table>
        <tr>
          <th>Title</th>
          <th>Author</th>
          <th>Category</th>
          <th>Year</th>
          <th>Price ($)</th>
        </tr>

        <xsl:for-each select="bookstore/book">
          <tr>
            <td><xsl:value-of select="title"/></td>
            <td><xsl:value-of select="author"/></td>
            <td><xsl:value-of select="@category"/></td>
            <td><xsl:value-of select="year"/></td>
            <td><xsl:value-of select="price"/></td>
          </tr>
        </xsl:for-each>

      </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>