<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

<xsl:template match="CMCSampleOrderSubmission">
	<Orders>
        <xsl:for-each select="LonzaOrder/LonzaItems/LonzaItem">
            <order>
				<ClientName><xsl:text>Lonza</xsl:text></ClientName>
				<CMCWarehouse><xsl:value-of select="ancestor::LonzaOrder/SourcingWarehouse"/></CMCWarehouse>
				<ClientOrderID><xsl:value-of select="ancestor::LonzaOrder/SFDCOrderID"/></ClientOrderID>
				<CustOrderID><xsl:value-of select="ancestor::LonzaOrder/SFDCOrderID"/></CustOrderID>
				<CompanyName><xsl:value-of select="ancestor::LonzaOrder/companyName"/></CompanyName>
				<FirstName><xsl:value-of select="ancestor::LonzaOrder/firstName"/></FirstName>
				<LastName><xsl:value-of select= "ancestor::LonzaOrder/lastName"/></LastName>
				<Email><xsl:value-of select="ancestor::LonzaOrder/emailAddress"/></Email>
				<Phone><xsl:value-of select="ancestor::LonzaOrder/phone"/></Phone>
				<Street><xsl:value-of select="ancestor::LonzaOrder/address1"/></Street>
				<Street2><xsl:value-of select="ancestor::LonzaOrder/address2"/></Street2>
				<City><xsl:value-of select="ancestor::LonzaOrder/city"/></City>
				<State><xsl:value-of select="ancestor::LonzaOrder/state"/></State>
				<Zip><xsl:value-of select="ancestor::LonzaOrder/zip"/></Zip>
				<Country><xsl:value-of select="ancestor::LonzaOrder/country"/></Country>
				<EndUse><xsl:value-of select="ancestor::LonzaOrder/endUse"/></EndUse>
				<Comments><xsl:value-of select="ancestor::LonzaOrder/comments"/></Comments>
				<RequestorName><xsl:value-of select="ancestor::LonzaOrder/requestor"/></RequestorName>
				<RequestorEmail><xsl:value-of select="ancestor::LonzaOrder/requestorEMail"/></RequestorEmail>
				<RequestorPhone><xsl:value-of select="ancestor::LonzaOrder/requestorPhone"/></RequestorPhone>
				<ItemID><xsl:value-of select="SFDCItemID"/></ItemID>
				<ItemNumber><xsl:value-of select="ProductCode"/></ItemNumber>
				<ItemName><xsl:value-of select="itemName"/></ItemName>
				<Quantity><xsl:value-of select="qty"/></Quantity>
				<Size><xsl:value-of select="size"/></Size>
			</order>
        </xsl:for-each>
	</Orders>
</xsl:template>
</xsl:stylesheet> 