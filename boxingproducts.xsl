<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                xmlns:math="http://www.w3.org/2005/xpath-functions/math"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">


<xsl:template match = "/">
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="Boxing.css"/>
    <div class="topnav">
      <a href="Boxing.xml">Products</a>
        <a class="active" href="index.html">Home</a>
        <h1 class= "shopName">KOBOXWEAR</h1>
      </div>

    <title>KOBOXWEAR | Products</title>
</head>
<body class = "productsPage">
 <div class="search-border">
      <input class = "search" id="search" type="text" placeholder="Search for a product code"/>
  </div>
  
  <h1>Our Limited Edition Boxing Products</h1>
       <!--- <img id = "logo"src="images/boxlogo.png" width ="15%"> -->
       <!-- <watched a video on xsl to add images-> -->
      <div class="wrapper">
        <xsl:for-each select="boxing/product">
          <div class = "product" id='productslist'>
            <xsl:if test="name/@itemid=345">
              <img class ="imgg" src = "images/koshoe.jpg" width = "300px"/> 
            </xsl:if>
            <xsl:if test="name/@itemid=346">
              <img class = "imgg" src = "images/HyperKo.jpg" width = "250px"/> 
            </xsl:if>
              <xsl:if test="name/@itemid=370">
              <img class = "imgg" src = "images/Londsdale.jpg" width = "250px"/> 
            </xsl:if>
              <xsl:if test="name/@itemid=378">
              <img class = "imgg" src = "images/unlimitedpop.jpg" width = "300px"/> 
            </xsl:if>
              <xsl:if test="name/@itemid=865">
              <img class = "imgg" src = "images/Unlimitedset.jpg" width = "300px"/> 
            </xsl:if>
              <xsl:if test="name/@itemid=900">
              <img class = "imgg" src = "images/kevin.jpg" width = "300px"/> 
            </xsl:if>
            <xsl:if test="name/@itemid=756">
              <img class = "imgg" src = "images/knockout.jpg" width = "300px"/> 
            </xsl:if>
            <xsl:if test="name/@itemid=711">
              <img class = "imgg" src = "images/Rocky.jpg" width = "300px"/> 
            </xsl:if>
            <xsl:if test="name/@itemid=1000">
              <img class = "imgg" src = "images/redriot.jpg" width = "300px"/> 
            </xsl:if>
            <xsl:if test="name/@itemid=150">
              <img class = "imgg" src = "images/boxwraps.jpg" width = "300px"/> 
            </xsl:if>
                  <p><xsl:value-of select="name"/></p>
                  <p class = "category"><xsl:value-of select="category"/></p>
                  <p class = "desription"><xsl:value-of select="description"/></p>
                  <p class = "quantity"><xsl:value-of select="quantity"/></p>
                  <p class = "code" id ="code"><xsl:value-of select="code"/></p>
                  <p class = "price"><xsl:value-of select="price"/></p>
          </div>
        
       </xsl:for-each>
       </div>
       <div class = "errorbox">
       <p class = "error" id="error">error, retype a correct code</p>
       </div>
</body>
</html>
<script src ="Searchbar.js"/>
</xsl:template>
</xsl:stylesheet>