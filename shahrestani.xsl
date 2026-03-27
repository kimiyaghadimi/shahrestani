<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math" version="3.0">
    <xsl:output method="xhtml" html-version="5"  include-content-type="no" indent="yes"/>
    <!--xmlt-xml-declaration ="yes"-->
    
    <xsl:template match ="/"> 
        <html>
            <head>
            <title>
                <h1>
                    Šahrestānīhā ī Ērān šahr
                </h1>
            </title>
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <link rel="stylesheet" type="text/css" href="webstyle.css"/>
        </head>
        <body> 
            <!--navbar-->
            <nav>
                <ul class="nav-links">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="methodolgy.html">Methodology</a></li>
                    <li><a href="texts.html">Texts</a></li>
                    <li><a href="analysis.html">Analysis</a></li>
                    <li><a href="about.html">About</a></li>
                </ul>
            </nav>
            <h1>Texts</h1>
            <ul><xsl:apply-templates select="//body//s"/></ul>
        </body>
        </html>
    </xsl:template>
    
<!-- <xsl:template match="s">
            <line id="{@n}"><xsl:apply-templates/></line>
</xsl:template>-->
    
    <xsl:template match="s">
        <li>
            <xsl:value-of select="count(preceding-sibling::*)+1"/>
            <span id="{@n}"><xsl:apply-templates/></span>
        </li>
    </xsl:template>
    
    <xsl:template match="seg">
        <span lang="{@xml:lang}"><xsl:apply-templates/></span>
    </xsl:template>
    
 <!--   <xsl:template match="span[@lang=en]">
        English:
    </xsl:template>-->
    
    <xsl:template match="interp">
        <strong><xsl:apply-templates/></strong>
    </xsl:template>
</xsl:stylesheet>