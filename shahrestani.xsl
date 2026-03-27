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
<!--            <h1>Text</h1>-->
            <ul><xsl:apply-templates select="//body"/></ul>
        </body>
        </html>
    </xsl:template>

    <xsl:template match="title">
        <h2>Title <xsl:value-of select="@n"/></h2>
            <ul>
                <li>
                    <strong>Pahlavi:</strong>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="seg[@xml:lang='pal']"/>
                </li>
                <li>
                    <strong>English:</strong>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="seg[@xml:lang='en']"/>
                </li>
            </ul>
    </xsl:template>

<!--    <xsl:template match="head/lg/l">
<!-\-        <xsl:if test="@n = 1">
            <h2>Introduction:</h2>
        </xsl:if>-\->
        <div class="line" id="line-{@n}">
            <div class="line-number">
                <strong>Line <xsl:value-of select="@n"/></strong>
            </div>
            <div class="pahlavi">
                <strong>Pahlavi:</strong>
                <xsl:text> </xsl:text>
                <xsl:value-of select="seg[@xml:lang='pal']"/>
            </div>
            <div class="english">
                <strong>English:</strong>
                <xsl:text> </xsl:text>
                <xsl:value-of select="seg[@xml:lang='en']"/>
            </div>
        </div>
    </xsl:template>-->
    
    <xsl:template match="head/lg/l">
        <xsl:if test="@n = 1">
            <h2>Introduction:</h2>
        </xsl:if>
        <li>
            <strong>Line <xsl:value-of select="@n"/></strong>
            <ul>
                <li>
                    <strong>Pahlavi:</strong>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="seg[@xml:lang='pal']"/>
                </li>
                <li>
                    <strong>English:</strong>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="seg[@xml:lang='en']"/>
                </li>
            </ul>
        </li>
    </xsl:template>
    
<!--    <xsl:template match="s">
        <xsl:if test="@n = 1">
            <h2>Body:</h2>
        </xsl:if>
        <div class="sentence" id="s-{@n}">
            <div class="sentence-number">
                <strong>Sentence <xsl:value-of select="@n"/>:</strong>
            </div>
            <div class="pahlavi">
                <strong>Pahlavi:</strong>
                <xsl:text> </xsl:text>
                <xsl:apply-templates select="seg[@xml:lang='pal']"/>
            </div>
            <div class="english">
                <strong>English:</strong>
                <xsl:text> </xsl:text>
                <xsl:apply-templates select="seg[@xml:lang='en']"/>
            </div>
        </div>
    </xsl:template>-->
    
    <xsl:template match="s">
        <xsl:if test="@n = 1">
            <h2>Body:</h2>
        </xsl:if>
        <li>
            <strong>Sentence <xsl:value-of select="@n"/></strong>
            <ul>
                <li>
                    <strong>Pahlavi:</strong>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="seg[@xml:lang='pal']"/>
                </li>
                <li>
                    <strong>English:</strong>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="seg[@xml:lang='en']"/>
                </li>
            </ul>
        </li>
    </xsl:template>
    
<!--    <xsl:template match="trailer/lg/l">
        <xsl:if test="@n = 1">
            <h2>Conclusion:</h2>
        </xsl:if>
        <div class="line" id="line-{@n}">
            <div class="line-number">
                <strong>Line <xsl:value-of select="@n"/></strong>
            </div>
            <div class="pahlavi">
                <strong>Pahlavi:</strong>
                <xsl:text> </xsl:text>
                <xsl:value-of select="seg[@xml:lang='pal']"/>
            </div>
            <div class="english">
                <strong>English:</strong>
                <xsl:text> </xsl:text>
                <xsl:value-of select="seg[@xml:lang='en']"/>
            </div>
        </div>
    </xsl:template>-->
    
    <xsl:template match="trailer/lg/l">
        <xsl:if test="@n = 1">
            <h2>Conclusion:</h2>
        </xsl:if>
        <li>
            <strong>Line <xsl:value-of select="@n"/></strong>
            <ul>
                <li>
                    <strong>Pahlavi:</strong>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="seg[@xml:lang='pal']"/>
                </li>
                <li>
                    <strong>English:</strong>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="seg[@xml:lang='en']"/>
                </li>
            </ul>
        </li>
    </xsl:template>
</xsl:stylesheet>