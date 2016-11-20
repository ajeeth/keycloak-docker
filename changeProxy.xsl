<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

	<!-- Enable proxy address forwarding -->
    <xsl:template xmlns="urn:jboss:domain:undertow:3.0" xmlns:ut="urn:jboss:domain:undertow:3.0" match="//ut:subsystem/ut:server/ut:http-listener">
		<http-listener proxy-address-forwarding="true">
			<xsl:apply-templates select="@*|node()"/>
		</http-listener>
    </xsl:template>

</xsl:stylesheet>
