<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <html>

            <head>
            
                <link rel="stylesheet" type="text/css" href="css/instituto.css" />

                <title>ITE</title>
            
            </head>

            <body>

                <div class="fondo">

                    <section>
                    
                        <div class="cont-nav">
                        
                            <nav>
                            
                                <div class="cont-nav-logo">
                                
                                    <h1>
                                        <img src="resources/images/logo.png" title="edix antigua telefonica" class="cont-logo" alt="edix"/>
                                    </h1>
                                
                                </div>

                                <div class="cont-nav-menu">

                                    <ul>

                                        <li><a href="html/contacto.html">Contacto</a></li>

                                        <li>
                                        
                                            <xsl:for-each select="ite">
                                    
                                                <p>
                                                    Teléfono de contacto: <xsl:value-of select="telefono"></xsl:value-of>
                                                </p>
                                    
                                            </xsl:for-each>
                                        
                                        </li>

                                    </ul>
                                
                                </div>
                            
                            </nav>
                        
                        </div>
                    
                    </section>

                    <section>

                        <div class="container">
                    
                            <xsl:for-each select="ite">
                            
                                <h1 class="cont-h1">
                                    <xsl:value-of select="@nombre"></xsl:value-of>
                                </h1>

                                <h3 class="cont-h3">
                                    Accede a nuestra página web: <a href="https://institutotecnologico.edix.com"><xsl:value-of select="@web"></xsl:value-of></a>
                                </h3>

                                <p class="cont-profesores">
                                    <a href="#ciclos">Ver todos los ciclos</a>
                                </p>
                            
                            </xsl:for-each>

                        </div>
                    
                    </section>

                </div>

                <div id="ciclos">
                
                    <h1 class="cont-profesores-h1">
                        Ciclos
                    </h1>

                    <div class="cont-ciclos-table">

                        <table align="center" border="2">

                            <thead>

                                <tr>
                                
                                    <th>Ciclo</th>

                                    <th>Nombre</th>

                                    <th>Grado</th>

                                    <th>Decreto Título</th>
                                
                                </tr>

                            </thead>

                            <xsl:for-each select="//ciclo">
                            
                                <tr>
                            
                                    <td><xsl:value-of select="@id"></xsl:value-of></td>

                                    <td><xsl:value-of select="nombre"></xsl:value-of></td>

                                    <td><xsl:value-of select="grado"></xsl:value-of></td>

                                    <xsl:for-each select="decretoTitulo">

                                        <td><xsl:value-of select="@año"></xsl:value-of></td>

                                    </xsl:for-each>
                            
                                </tr>
                            
                            </xsl:for-each>
                        
                        </table>

                    </div>

                </div>

                <div class="profesores">
                
                    <h1 class="cont-profesores-h1">
                        Profesores
                    </h1>

                    <div class="cont-ciclos-table">

                        <table align="center" border="2">

                            <thead>
                            
                                <tr>
                                
                                    <th>Id</th>

                                    <th>Nombre</th>
                                
                                </tr>
                            
                            </thead>

                            <xsl:for-each select="//profesor">
                            
                                <tr>
                                
                                    <td><xsl:value-of select="id"></xsl:value-of></td>

                                    <td><xsl:value-of select="nombre"></xsl:value-of></td>
                                
                                </tr>
                            
                            </xsl:for-each>

                        </table>

                    </div>
                
                </div>

            </body>

        </html>

    </xsl:template>
    
</xsl:stylesheet>