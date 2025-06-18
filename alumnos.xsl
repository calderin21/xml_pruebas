<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/alumnos">
    <html>
      <head>
        <meta charset="UTF-8"/>
        <title>Lista de Alumnos</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
              crossorigin="anonymous"/>
      </head>
      <body class="container mt-4">
        <h2 class="mb-4">Listado de Alumnos</h2>
        <table class="table table-primary table-striped table-bordered">
          <thead>
            <tr>
              <th>Expediente</th>
              <th>Nombre</th>
              <th>Apellido</th>
              <th>Curso</th>
              <th>Nota Media</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="alumno">
              <tr>
                <td><xsl:value-of select="@num_exp"/></td>
                <td><xsl:value-of select="nombre"/></td>
                <td><xsl:value-of select="apellido"/></td>
                <td><xsl:value-of select="curso"/></td>
                <td><xsl:value-of select="nota_media"/></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
                integrity="sha384-qG0Yt5Ifp4QvE4yA8PBPmvVEM/C+Fn7E1ijRm8DWUnC4p1Zh8U4rK68IpHRYomWc" 
                crossorigin="anonymous"></script>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
