<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/get-building.xsl"/>

<xsl:template match="data">
	<xsl:apply-templates select="all-buildings/entry"/>
</xsl:template>

</xsl:stylesheet>