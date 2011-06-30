<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="typography.xsl"/>

<xsl:template match="galleries-for-building/entry">
	<article>
		<h2>
			<a href="{$root}/galleries/{name/@handle}/"><xsl:value-of select="name"/></a>
		</h2>
  </article>
</xsl:template>


<xsl:template match="gallery/entry">
  
	<article class="gallery">
		<h2>
			<xsl:value-of select="building-name"/>
		</h2>
		<p class="byline"><xsl:value-of select="byline"/></p>
		<xsl:apply-templates select="description" mode="html" />		
  </article>
  
</xsl:template>


</xsl:stylesheet>