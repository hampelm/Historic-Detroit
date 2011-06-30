<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/get-buildings.xsl"/>
<xsl:import href="../utilities/get-galleries.xsl"/>

<xsl:template match="data">
  <xsl:apply-templates select="galleries-for-building/entry"/>
	
	<xsl:apply-templates select="building/entry"/>
	
</xsl:template>

</xsl:stylesheet>