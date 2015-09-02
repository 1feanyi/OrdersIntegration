<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

<xsl:template match="/">
	<Orders>
        <xsl:for-each select="Orders/Customer_Order/ORDERLINEITEM">
            <order>
				<ClientName><xsl:text>REICHHOLD</xsl:text></ClientName>
				<CMCWarehouse><xsl:text>CT</xsl:text></CMCWarehouse>
				<OrderDate><xsl:value-of select="ancestor::Orders/Customer_Order/SODATE"/></OrderDate>
				<ClientOrderID><xsl:value-of select="ancestor::Orders/Customer_Order/PONUM"/></ClientOrderID>
				<CompanyName><xsl:value-of select="ancestor::Orders/Customer_Order/SNAME"/></CompanyName>
				<FirstName><xsl:value-of select="substring-before(ancestor::Orders/Customer_Order/CONTACT, ' ')"/></FirstName>
				<LastName><xsl:value-of select="substring-after(ancestor::Orders/Customer_Order/CONTACT, ' ') "/></LastName>
				<Email><xsl:value-of select="ancestor::Orders/Customer_Order/CONTACTEMAIL"/></Email>
				<Phone><xsl:value-of select="ancestor::Orders/Customer_Order/SPHONE"/></Phone>
				<Street><xsl:value-of select="ancestor::Orders/Customer_Order/SADD1"/></Street>
				<Street2><xsl:value-of select="ancestor::Orders/Customer_Order/SADD2"/></Street2>
				<Street3><xsl:value-of select="ancestor::Orders/Customer_Order/SADD3"/></Street3>
				<City><xsl:value-of select="ancestor::Orders/Customer_Order/SCITY"/></City>
				<State><xsl:value-of select="ancestor::Orders/Customer_Order/SSTATE"/></State>
				<Zip><xsl:value-of select="ancestor::Orders/Customer_Order/SZIP"/></Zip>
				<Country><xsl:value-of select="ancestor::Orders/Customer_Order/SCountry"/></Country>
				<Carrier><xsl:value-of select="ancestor::Orders/Customer_Order/SHIPID"/></Carrier>
				<Comments><xsl:value-of select="ancestor::Orders/Customer_Order/SHIPNOTE"/></Comments>
				<Requestor><xsl:value-of select="ancestor::Orders/Customer_Order/CONTACT"/></Requestor>
				<RequestorEmail><xsl:value-of select="substring-after(normalize-space(ancestor::Orders/Customer_Order/ORDNOTE), ' ')"/></RequestorEmail>
				<SalesRep><xsl:value-of select="ancestor::Orders/Customer_Order/Salesrep"/></SalesRep>
				<SalesEmail><xsl:value-of select="ancestor::Orders/Customer_Order/Salesrepemail"/></SalesEmail>
				<Distributor><xsl:value-of select="ancestor::Orders/Customer_Order/Distrib"/></Distributor>
				<ItemNumber><xsl:value-of select="SHIPPRODUCTID"/></ItemNumber>
				<ItemName><xsl:value-of select="SHIPDESCRIPT"/></ItemName>
				<Quantity><xsl:value-of select="QTY"/></Quantity>
				<Size><xsl:value-of select="substring-after(substring-after(normalize-space(ITEM), '_'), '_')"/></Size>
				<ItemNote><xsl:value-of select="NOTE"/></ItemNote>
			</order>
        </xsl:for-each>
	</Orders>
</xsl:template>
</xsl:stylesheet> 