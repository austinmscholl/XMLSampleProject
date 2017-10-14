<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:outpout method="html" />
	
	<xsl:template match="/">
	
		<html>
			<head><title>TV Shows</title></head>
			<body>
			
				<xsl:for-each select="tvshow/show">
				
					<xsl:sort select="name" order="ascending" data-type="text" />
					
					<p>
						The show <xsl:value-of select="name" /> was released in
						<xsl:value-of select="release" /> by
						<xsl:value-of select="network" />.
						<xsl:value-of select="description" />
					</p>
					
					<p>
						It had an average viewership of <xsl:value-of select="viewers" />
						million people. It was cancelled in <xsl:value-of select="end_date" />
					</p>
					
					<img>
					
						<xsl:attribute name="src">
							<xsl:value-of select="poster/@href" />
						</xsl:attribute>
					
					</img><br />
			
				</xsl:for-each>
			
			
			</body>
		
		</html>

	</xsl:template>
</xsl:stylesheet>