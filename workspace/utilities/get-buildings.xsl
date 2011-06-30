<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="typography.xsl"/>

<xsl:template match="all-buildings/entry">
	<article>
		<h2>
			<a href="{$root}/buildings/{building-name/@handle}/"><xsl:value-of select="building-name"/></a>
		</h2>
  </article>
</xsl:template>


<xsl:template match="building/entry">
  
	<article>
		<h2>
			<xsl:value-of select="building-name"/>
		</h2>
		<p class="byline"><xsl:value-of select="byline"/></p>
		<xsl:apply-templates select="description" mode="html" />		
  </article>
  
  <aside id="sidebar">
    <dl>
      <dt>Address</dt>
      <dd><xsl:value-of select="address"/></dd>
      <dt>Year opened</dt>
      <dd><xsl:value-of select="year-opened"/></dd>
      <dt>Year closed</dt>
      <dd><xsl:value-of select="year-closed"/></dd>
      <dt>Year demolished</dt>
      <dd><xsl:value-of select="year-demolished"/></dd>
    </dl>
    
    
  </aside>
  
</xsl:template>


</xsl:stylesheet>