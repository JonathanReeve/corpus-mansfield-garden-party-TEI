<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 

<xsl:template match="/"> 
	<html>
		<head>
			<link rel="stylesheet" href="garden-party.css" />
			<link href='https://fonts.googleapis.com/css?family=Merriweather:400,300' rel='stylesheet' type='text/css' />
			<script src="jquery-2.1.4.min.js"></script>
			<script src="custom.js"></script>
		</head>
		<body>
			<xsl:apply-templates/>
		</body>
	</html>
</xsl:template> 

<xsl:template match="TEI/teiHeader">
	<div id="metadata">
		<xsl:apply-templates/>
	</div>
</xsl:template>

<xsl:template match="TEI/teiHeader/fileDesc/titleStmt/title">
	<h1 id="bookTitle">
		<xsl:apply-templates/>
	</h1>
</xsl:template>

<xsl:template match="TEI/teiHeader/fileDesc/titleStmt/author">
	<h2 id="author">
		<xsl:apply-templates/>
	</h2>
</xsl:template>

<!--<xsl:template match="TEI/teiHeader/fileDesc/editionStmt">-->
	<!--<div id="editionStmt" class="metadata">-->
		<!--<h2>About this Edition:</h2>-->
		<!--<xsl:apply-templates/>-->
	<!--</div> [>end of editionStmt<]-->
<!--</xsl:template>-->

<!--<xsl:template match="TEI/teiHeader/fileDesc/publicationStmt">-->
	<!--<div id="publicationStmt" class="metadata">-->
		<!--<h2>About this Publication:</h2>-->
		<!--<p>-->
			<!--<span class="infoHeader">Published by: </span><xsl:value-of select="publisher"/><br/>-->
			<!--<span class="infoHeader">Place: </span><xsl:value-of select="pubPlace"/><br/>-->
			<!--<span class="infoHeader">Date: </span><xsl:value-of select="date"/><br/>-->
			<!--<span class="infoHeader">Availability: </span><xsl:value-of select="availability"/><br/>-->
		<!--</p>-->
	<!--</div> [>end of editionStmt<]-->
<!--</xsl:template>-->

<xsl:template match="TEI/teiHeader/fileDesc/sourceDesc">
	<div id="sourceDesc" class="metadata">
		<xsl:apply-templates/>
	</div> <!--end of sourceDesc-->
</xsl:template>

<xsl:template match="TEI/teiHeader/fileDesc/encodingDesc">
	<div id="encodingDesc" class="metadata">
		<h2>About the Encoding: </h2>
		<xsl:apply-templates/>
	</div> <!--end of sourceDesc-->
</xsl:template>

<xsl:template match="TEI/teiHeader/profileDesc">
	<div id="profileDesc" class="metadata">
		<xsl:apply-templates/>
	</div>
</xsl:template>

<xsl:template match="TEI/teiHeader/publicationStmt">
	<div id="publicationStmt" class="metadata">
		<xsl:apply-templates/>
	</div>
</xsl:template>

<!--This is for the whole body of the text -->
<xsl:template match="TEI/text/body">
	<div id="textBody">
		<table>
			<tr>
				<th>Text</th>
				<th>Commentary</th>
			</tr>
			<xsl:apply-templates/>
		</table>
	</div> <!--End of Container-->
</xsl:template>

<xsl:template match="ab">
	<tr class="interp"><xsl:apply-templates/></tr>
</xsl:template>

<xsl:template match="p">
	<span class="pilcrow">¶</span><xsl:apply-templates/>
</xsl:template>

<xsl:template match="lg">
	<p class="song">
		<xsl:apply-templates/>
	</p>
</xsl:template>

<xsl:template match="l">
	<xsl:apply-templates/><br/>
</xsl:template>

<xsl:template match="emph">
	<span class="emph"><xsl:apply-templates/></span>
</xsl:template>

<xsl:template match="seg">
	<td class="lexeme">
		<xsl:attribute name="id">
			<xsl:value-of select="@n"/>
		</xsl:attribute>
	<xsl:apply-templates select="@n | node()"/>
	</td>
</xsl:template>

<xsl:template match="@n">
	<sup class="lexeme-id">
	<xsl:value-of select="."/>
	</sup>
</xsl:template> 

<xsl:template match="interp">
	<td class="interp">
		<xsl:apply-templates/>
	</td>
</xsl:template>

<xsl:template match="interp/desc">
	<xsl:for-each select=".">
		<span>
			<xsl:attribute name="class">tag 
				<xsl:value-of select="."/>
			</xsl:attribute>
			<xsl:value-of select="."/>
		</span>
	</xsl:for-each>
</xsl:template> 

<xsl:template match="ptr">
	<a>
	<xsl:attribute name="href">
		<xsl:value-of select="@target"/>
	</xsl:attribute>
	<xsl:apply-templates/>
	</a>
</xsl:template> 

<xsl:template match="head[@type='title']">
	<h1><xsl:apply-templates/></h1>
</xsl:template>

<xsl:template match="head[@type='byline']">
	<h2><xsl:apply-templates/></h2>
</xsl:template>

<xsl:template match="div[@type='header']">
	INSERTHEADERHERE
</xsl:template>

</xsl:stylesheet> 
