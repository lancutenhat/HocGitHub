<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
	xmlns:x="http://tempuri.org/thuvien.xsd"			
>
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="x:TV">
		<html>
			<head>
				<title>Thư viện </title>
			</head>
			<body>
				<h2 >DANH MỤC SÁCH</h2>
				<p>
					<b>Nhà xuất bản:</b> <xsl:value-of select="x:NhaXB/@TenNXB"/>
				
					
				</p>
				<table border="2" cellpadding="3">
					<tr>
						<th>STT</th>
						<th>Tên sách</th>
						<th>Số trang</th>
						<th>Tác giả</th>
						<th>Giá</th>
					</tr>
					<xsl:for-each select="x:NhaXB/x:Sach">
					
						<tr>
							<td>
								<xsl:value-of select="position()"/>
							</td>
							<td>
								<xsl:value-of select="x:TenSach"/>
							</td>
							<td>
								<xsl:value-of select="x:SoTrang"/>
							</td>
							<td>
								<xsl:value-of select="x:TacGia"/>
							</td>
							<td>
								<xsl:if test="x:SoTrang &lt;= 100">
									<xsl:value-of select="x:SoTrang * 4000"/>							
								</xsl:if>
								<xsl:if test="x:SoTrang &gt;100 and x:SoTrang &lt;=150">
									<xsl:value-of select="100 * 4000 + (x:SoTrang - 100)* 3000"/>
								</xsl:if>
								<xsl:if test="x:SoTrang &gt;150">
									<xsl:value-of select="100*4000+50*3000+(x:SoTrang - 150) * 2000"/>
								</xsl:if>		
									
							</td>
						</tr>
						
					</xsl:for-each>
				</table>
			</body>
		</html>
    </xsl:template>
</xsl:stylesheet>
