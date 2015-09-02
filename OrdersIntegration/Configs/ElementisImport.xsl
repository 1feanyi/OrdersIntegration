<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

<xsl:template match="/">
	<orders>
        <xsl:for-each select="CMCSampleOrderSubmission/order/products/item">
            <order>
				<ClientName><xsl:text>ELEMENTIS</xsl:text></ClientName>
				<CMCWarehouse><xsl:text>CT</xsl:text></CMCWarehouse>
				<ClientOrderID><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/orderId"/></ClientOrderID>
				<CompanyName><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/companyName"/></CompanyName>
				<FirstName><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/firstName"/></FirstName>
				<LastName><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/lastName"/></LastName>
				<JobTitle><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/jobTitle"/></JobTitle>
				<Email><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/emailAddress"/></Email>
				<Phone><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/phone"/></Phone>
				<Street><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/address1"/></Street>
				<Street2><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/address2"/></Street2>
				<City><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/city"/></City>
				<State><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/state"/></State>
				<Zip><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/zip"/></Zip>
				<Country><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/country"/></Country>
				<RegionLocated><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/regionLocated"/></RegionLocated>
				<ShipExpedite><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/shipExpedite"/></ShipExpedite>
				<ShipAcctNum><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/shipAcctNum"/></ShipAcctNum>
				<Carrier><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/carrier"/></Carrier>
				<Market><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/market"/></Market>
				<EndUse><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/endUse"/></EndUse>
				<Comments><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/comments"/></Comments>
				<ApplicationTypes><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/applicationTypes"/></ApplicationTypes>
				<DecisionTimeFrame><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/descisionTimeframe"/></DecisionTimeFrame>
				<DecisionRole><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/descisionRole"/></DecisionRole>
				<DecisionSupport><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/descisionSupport"/></DecisionSupport>
				<Requestor><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/requestor"/></Requestor>
				<RequestorEmail><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/requestorEMail"/></RequestorEmail>
				<RequestorPhone><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/requestorPhone"/></RequestorPhone>
				<RequestorComments><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/requestorComments"/></RequestorComments>
				<SalesRep><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/salesRep"/></SalesRep>
				<SalesEmail><xsl:value-of select="ancestor::CMCSampleOrderSubmission/order/salesRepEMail"/></SalesEmail>
				
				<ItemNumber><xsl:value-of select="itemNumber"/></ItemNumber>
				<ItemName><xsl:value-of select="itemName"/></ItemName>
				<Quantity><xsl:value-of select="qty"/></Quantity>
				<AnnualUsage><xsl:value-of select="annualUsage"/></AnnualUsage>
				<ImportDate></ImportDate>
			</order>
        </xsl:for-each>
	</orders>
</xsl:template>

</xsl:stylesheet> 