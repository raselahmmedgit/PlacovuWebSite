USE [PlacovuWebSite]
GO

SET IDENTITY_INSERT [dbo].[Menu] ON 
GO
INSERT [dbo].[Menu] ([Id], [Name], [Item], [AddedOn], [Status]) 
VALUES (1, N'Main'
, N'[{"deleted":0,"new":1,"slug":"our-capabilities","name":"Our Capabilities","id":"new-1"
,"children":[{"deleted":0,"new":1,"slug":"conceptual-design","name":"Conceptual Design","id":"new-2"},{"deleted":0,"new":1,"slug":"project-management","name":"Project Management","id":"new-3"},{"deleted":0,"new":1,"slug":"software-development","name":"Software Development","id":"new-4"},{"deleted":0,"new":1,"slug":"web-solutions","name":"Web Solutions","id":"new-5"},{"deleted":0,"new":1,"slug":"mobile-apps","name":"Mobile Apps","id":"new-6"}
,{"deleted":0,"new":1,"slug":"consultation-services","name":"Consultation Services","id":"new-7"}
,{"deleted":0,"new":1,"slug":"architectural-design 
","name":"Architectural Design","id":"new-8"}
,{"deleted":0,"new":1,"slug":"logistics 
","name":"Logistics","id":"new-9"},{"deleted":0,"new":1,"slug":"marketing-services","name":"Marketing Services","id":"new-10"}]}
,{"deleted":0,"new":1,"slug":"spring-board-solutions","name":"Spring Board Solutions","id":"new-11"
,"children":[{"deleted":0,"new":1,"slug":"product-apis","name":"Product Information APIs","id":"new-12"},{"deleted":0,"new":1,"slug":"data-sharing","name":"Store Data Sharing","id":"new-13"},
{"deleted":0,"new":1,"slug":"ecommerce-integration","name":"E-Commerce Integration","id":"new-14"},
{"deleted":0,"new":1,"slug":"product-cataloging","name":"Product Reviews Cataloging","id":"new-15"},
{"deleted":0,"new":1,"slug":"search-engine-collaboration","name":"Effective Search Engine Collaboration","id":"new-16"},
{"deleted":0,"new":1,"slug":"online-product-sales","name":"Online Product Sales/Promotion","id":"new-17"}]}
,{"deleted":0,"new":1,"slug":"our-services","name":"Our Services","id":"new-18"
,"children":[{"deleted":0,"new":1,"slug":"services-design","name":"Design","id":"new-19"},{"deleted":0,"new":1,"slug":"services-projectmanagment","name":"Project Management","id":"new-20"},{"deleted":0,"new":1,"slug":"services-softwaredevelopment","name":"Software Development","id":"new-21"},
{"deleted":0,"new":1,"slug":"services-websolutions","name":"Web Solutions","id":"new-22"},
{"deleted":0,"new":1,"slug":"services-mobileapps","name":"Mobile Apps","id":"new-23"},
{"deleted":0,"new":1,"slug":"services-consulting","name":"Consultation Services","id":"new-24"},
{"deleted":0,"new":1,"slug":"services-sarchitecturaldesign","name":"Architectural Design","id":"new-25"},
{"deleted":0,"new":1,"slug":"services-logistics","name":"Logistics","id":"new-26"}]}
,{"deleted":0,"new":1,"slug":"about-us","name":"About Us","id":"new-27"}
,{"deleted":0,"new":1,"slug":"contact-us","name":"Contact Us","id":"new-28"}]'
, CAST(N'2021-05-27T10:59:39.977' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO

-------------------------------------------------------------------------
-------------------------------------------------------------------------

SET IDENTITY_INSERT [dbo].[Page] ON 
GO

INSERT [dbo].[Page] ([Id], [Name], [Url], [MetaTitle], [MetaKeyword], [MetaDescription], [Description], [AddedOn], [Status]) 
VALUES (1, N'Home', N'home', N'Placovu - Elevating the Value of Your Product Data', NULL, 'Placovu - Elevating the Value of Your Product Data'
, N'<section class="d-flex align-items-center header-common header-common-img"><div class="container"><div class="row"><div class="col-xl-12 col-lg-12 col-md-12 d-flex flex-column" data-aos="fade-up" data-aos-delay="200"><h1 class="text-center">Welcome to PlacoVU Consulting, LLC..</h1></div></div></div></section><main id="main"><section class="header-common-des"><div class="container" data-aos="fade-up"><div class="row content"><div class="col-xl-12 col-lg-12 col-md-12"><h5>
                        Optimizing Product Databases for Increased Online and Digital Revenue Streams for: Manufacturers, Distributors and Retailers
                    </h5></div></div></div></section><section id="home"><div class="container" data-aos="fade-up"><div class="row content"><div class="col-xl-12 col-lg-12 col-md-12 pt-2 pt-lg-0" data-aos="fade-left" data-aos-delay="100"><div class="section-title"><h2>PlacoVU</h2></div><div class="section-text"><p class="text-justify">
                            PlacoVU Consulting, LLC is a premier software consulting firm that will boost your performance online and ignite a tremendous growth pattern for your company.
                        </p><p class="text-justify">
                            Find out how today...
                        </p><p class="text-justify">
                            A few Fortune 500 of companies utilize our SpringBoard Data Solutions and many more consult with us for their web-based software development needs and requirements. Its our goal to set the gold standard in quality of service and use our leading technologies over our peers. We serve abroad spectrum of different markets and industries
                        </p></div><div class="section-link"><a href="/home" class="link-btn"><span class="link-btn-label">More</span></a></div></div></div></div></section></main>'
                        , CAST(N'2021-05-27T10:59:17.277' AS DateTime), 1)
GO

SET IDENTITY_INSERT [dbo].[Page] OFF
GO

-------------------------------------------------------------------------
-------------------------------------------------------------------------