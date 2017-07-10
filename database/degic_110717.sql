-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: Degic
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Categorys`
--

DROP TABLE IF EXISTS `Categorys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Categorys` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` tinytext COLLATE utf8_unicode_ci,
  `Alias` tinytext COLLATE utf8_unicode_ci,
  `Image` tinytext COLLATE utf8_unicode_ci,
  `Descriptions` tinytext COLLATE utf8_unicode_ci,
  `Activated` bit(1) DEFAULT NULL,
  `ClassType` bit(1) DEFAULT NULL,
  `Orders` int(11) DEFAULT NULL,
  `Content` longtext COLLATE utf8_unicode_ci,
  `News` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categorys`
--

LOCK TABLES `Categorys` WRITE;
/*!40000 ALTER TABLE `Categorys` DISABLE KEYS */;
INSERT INTO `Categorys` VALUES (3,'Khóa học','khoa-hoc','khoahoc','khóa học ','','',1,'<p>dfdf</p>',NULL),(4,'Bài viết','bai-viet',NULL,'tin tức 123','','\0',2,NULL,''),(7,'Giáo viên','giao-vien',NULL,'giáo viên','','\0',3,'<!-- Section: Experts Details -->\n    <section>\n      <div class=\"container\">\n        <div class=\"section-content\">\n          <div class=\"row\">\n            <div class=\"col-md-4\">\n              <div class=\"thumb\">\n                <img src=\"http://placehold.it/360x360\" alt=\"\">\n              </div>\n            </div>\n            <div class=\"col-md-8\">\n              <h4 class=\"name font-24 mt-0 mb-0\">Sakib Smith</h4>\n              <h5 class=\"mt-5 text-theme-color-2\">Chemistry Teachers</h5>\n              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam vero expedita fugiat illo quasi doloremque, in unde omnis sint assumenda! Quaerat in, reprehenderit corporis voluptatum natus sequi reiciendis ullam. Quam eaque dolorum voluptates cupiditate explicabo.</p>\n              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt culpa dicta quaerat qui recusandae possimus placeat quidem ipsam voluptates similique libero tempore, labore quasi delectus vero alias, consectetur blanditiis eum maxime sunt accusantium ipsa doloribus reiciendis. Ea quod reprehenderit deserunt. Veritatis omnis similique tempora delectus a consequuntur, quis.  Adipisicing elit. Nesciunt culpa dicta quaerat qui recusandae possimus placeat quidem ipsam voluptates similique libero tempore, labore quasi delectus vero alias.</p>\n              <ul class=\"styled-icons icon-dark icon-theme-colored icon-sm mt-15 mb-0\">\n               <li><a href=\"#\"><i class=\"fa fa-facebook\"></i></a></li>\n               <li><a href=\"#\"><i class=\"fa fa-skype\"></i></a></li>\n               <li><a href=\"#\"><i class=\"fa fa-twitter\"></i></a></li>\n             </ul>\n            </div>\n          </div>\n          <div class=\"row mt-30\">\n            <div class=\"col-md-4\">\n              <h4 class=\"line-bottom\">About Me:</h4>\n              <div class=\"volunteer-address\">\n                <ul>\n                  <li>\n                    <div class=\"bg-light media border-bottom p-15 mb-20\">\n                      <div class=\"media-left\">\n                        <i class=\"pe-7s-pen text-theme-colored font-24 mt-5\"></i>\n                      </div>\n                      <div class=\"media-body\">\n                        <h5 class=\"mt-0 mb-0\">Experiences:</h5>\n                        <p>Chemistry (BSc), Computer Science (BSc), English and Creative Writing (BA)</p>\n                      </div>\n                    </div>\n                  </li>\n                  <li>\n                    <div class=\"bg-light media border-bottom p-15 mb-20\">\n                      <div class=\"media-left\">\n                        <i class=\"fa fa-map-marker text-theme-colored font-24 mt-5\"></i>\n                      </div>\n                      <div class=\"media-body\">\n                        <h5 class=\"mt-0 mb-0\">Address:</h5>\n                        <p>Village 856 Broadway New York</p>\n                      </div>\n                    </div>\n                  </li>\n                  <li>\n                    <div class=\"bg-light media border-bottom p-15\">\n                      <div class=\"media-left\">\n                        <i class=\"fa fa-phone text-theme-colored font-24 mt-5\"></i>\n                      </div>\n                      <div class=\"media-body\">\n                        <h5 class=\"mt-0 mb-0\">Contact:</h5>\n                        <p><span>Phone:</span> +262 695 2601<br><span>Email:</span> you@yourdomain.com</p>\n                      </div>\n                    </div>\n                  </li>\n                </ul>\n              </div>\n            </div>\n            <div class=\"col-md-4\">\n              <h4 class=\"line-bottom\">Find Location:</h4>\n\n              <!-- Google Map HTML Codes -->\n              <div \n                data-address=\"121 King Street, Melbourne Victoria 3000 Australia\"\n                data-popupstring-id=\"#popupstring1\"\n                class=\"map-canvas autoload-map\"\n                data-mapstyle=\"style1\"\n                data-height=\"335\"\n                data-latlng=\"22.798835,89.534401\"\n                data-title=\"sample title\"\n                data-zoom=\"14\"\n                data-marker=\"images/map-marker.png\">\n              </div>\n              <div class=\"map-popupstring hidden\" id=\"popupstring1\">\n                <div class=\"text-center\">\n                  <h3>CharityFund Office</h3>\n                  <p>121 King Street, Melbourne Victoria 3000 Australia</p>\n                </div>\n              </div>\n              <!-- Google Map Javascript Codes -->\n              <script src=\"http://maps.google.com/maps/api/js\"></script>\n              <script src=\"js/google-map-init.js\"></script>\n            </div>\n            <div class=\"col-md-4\">\n              <div class=\"clearfix\">\n                <h4 class=\"line-bottom\">Quick Contact:</h4>\n              </div>\n              <form id=\"contact-form\" class=\"contact-form-transparent\">\n                <div class=\"row\">\n                  <div class=\"col-sm-12\">\n                    <div class=\"form-group\">\n                      <input type=\"text\" placeholder=\"Enter Name\" id=\"contact_name\" name=\"contact_name\" required=\"\" class=\"form-control\">\n                    </div>\n                  </div>\n                  <div class=\"col-sm-6\">\n                    <div class=\"form-group\">\n                      <input type=\"text\" placeholder=\"Enter Email\" id=\"contact_email\" name=\"contact_email\" class=\"form-control\" required=\"\">\n                    </div>\n                  </div>\n                  <div class=\"col-sm-6\">\n                    <div class=\"form-group\">\n                      <input type=\"text\" placeholder=\"Enter Subject\" id=\"contact_subject\" name=\"contact_subject\" class=\"form-control\" required=\"\">\n                    </div>\n                  </div>\n                </div>\n                <div class=\"form-group\">\n                  <textarea rows=\"5\" placeholder=\"Enter Message\" id=\"contact_message\" name=\"contact_message\" required class=\"form-control\"></textarea>\n                </div>\n                <div class=\"form-group\">\n                  <button data-loading-text=\"Please wait...\" class=\"btn btn-flat btn-dark btn-theme-colored mt-5\" type=\"submit\">Send your message</button>\n                </div>\n              </form>\n            </div>\n          </div>\n        </div>\n      </div>\n    </section',NULL);
/*!40000 ALTER TABLE `Categorys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Company`
--

DROP TABLE IF EXISTS `Company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Company` (
  `Name` tinytext COLLATE utf8_unicode_ci,
  `Address` tinytext COLLATE utf8_unicode_ci,
  `Phone` tinytext COLLATE utf8_unicode_ci,
  `Hotline` tinytext COLLATE utf8_unicode_ci,
  `Email` tinytext COLLATE utf8_unicode_ci,
  `TaxCode` tinytext COLLATE utf8_unicode_ci,
  `Facebook` tinytext COLLATE utf8_unicode_ci,
  `Google` tinytext COLLATE utf8_unicode_ci,
  `Tweeter` tinytext COLLATE utf8_unicode_ci,
  `Description` text COLLATE utf8_unicode_ci,
  `About` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company`
--

LOCK TABLES `Company` WRITE;
/*!40000 ALTER TABLE `Company` DISABLE KEYS */;
INSERT INTO `Company` VALUES ('Trung tâm Degic Center Education','Đà Nẵng','chưa có mua','không thèm mua','a@gmail.com','chưa có đăng ký','chưa tạo facebook','chưa tạo google','chưa tạo tweeter','<div class=\"section-content\">\n                        <div class=\"row\">\n                            <div class=\"col-md-6\">\n                                <h6 class=\"letter-space-4 text-gray-darkgray text-uppercase mt-0 mb-0\">All About</h6>\n                                <h2 class=\"text-uppercase font-weight-600 mt-0 font-28 line-bottom\">The World’s Best Education in Our University</h2>\n                                <h4 class=\"text-theme-colored\">Lorem ipsum dolor sit amet soluta saepe odit error, maxime praesentium sunt udiandae!</h4>\n                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore atque officiis maxime suscipit expedita obcaecati nulla in ducimus iure quos quam recusandae dolor quas et perspiciatis voluptatum accusantium delectus nisi\n                                    reprehenderit, eveniet fuga modi pariatur, eius vero. Ea vitae maiores.</p>\n                                <a class=\"btn btn-theme-colored btn-flat btn-lg mt-10 mb-sm-30\" href=\"#\">Know More →</a>\n                            </div>\n                            <div class=\"col-md-6\">\n                                <div class=\"video-popup\">\n                                    <a href=\"https://www.youtube.com/watch?v=pW1uVUg5wXM\" data-lightbox-gallery=\"youtube-video\" title=\"Video\">\n                                        <img alt=\"\" src=\"http://placehold.it/555x330\" class=\"img-responsive img-fullwidth\">\n                                    </a>\n                                </div>\n                            </div>\n                        </div>\n                    </div>','    <!-- Section: About -->\n    <section class=\"\">\n      <div class=\"container\">\n        <div class=\"section-content\">\n          <div class=\"row\">\n            <div class=\"col-md-6\">\n              <h6 class=\"letter-space-4 text-gray-darkgray text-uppercase mt-0 mb-0\">All About</h6>\n              <h2 class=\"text-uppercase font-weight-600 mt-0 font-28 line-bottom\">The World’s Best Education in Our University</h2>\n              <h4 class=\"text-theme-colored\">Lorem ipsum dolor sit amet soluta saepe odit error, maxime praesentium sunt udiandae!</h4>\n              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore atque officiis maxime suscipit expedita obcaecati nulla in ducimus iure quos quam recusandae dolor quas et perspiciatis voluptatum accusantium delectus nisi reprehenderit, eveniet fuga modi pariatur, eius vero. Ea vitae maiores.</p>\n              <a class=\"btn btn-theme-colored btn-flat btn-lg mt-10 mb-sm-30\" href=\"#\">Know More →</a>\n            </div>\n            <div class=\"col-md-6\">\n              <div class=\"video-popup\">                \n                <a href=\"https://www.youtube.com/watch?v=pW1uVUg5wXM\" data-lightbox-gallery=\"youtube-video\" title=\"Video\">\n                  <img alt=\"\" src=\"http://placehold.it/555x330\" class=\"img-responsive img-fullwidth\">\n                </a>\n              </div>\n            </div>\n          </div>\n        </div>\n      </div>\n    </section>\n    \n    <!-- Section: Services -->\n    <section id=\"services\" class=\"bg-lighter\">\n      <div class=\"container\">\n        <div class=\"section-title\">\n          <div class=\"row\">\n            <div class=\"col-md-12\">\n              <h2 class=\"text-uppercase text-theme-colored title line-bottom\">Our <span class=\"text-theme-color-2 font-weight-400\">Features</span></h2>\n            </div>\n          </div>\n        </div>\n        <div class=\"row mtli-row-clearfix\">\n          <div class=\"col-xs-12 col-sm-6 col-md-4\">\n            <div class=\"icon-box iconbox-theme-colored bg-white p-15 mb-30 border-1px\">\n              <a class=\"icon icon-dark border-left-theme-color-2-3px pull-left flip mb-0 mr-0 mt-5\" href=\"#\">\n                <i class=\"pe-7s-scissors\"></i>\n              </a>\n              <div class=\"icon-box-details\">\n                <h4 class=\"icon-box-title font-16 font-weight-600 m-0 mb-5\">Less CSS</h4>\n                <p class=\"text-gray font-13 mb-0\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias non null</p>\n              </div>\n            </div>    \n          </div>\n          <div class=\"col-xs-12 col-sm-6 col-md-4\">\n            <div class=\"icon-box iconbox-theme-colored bg-white p-15 mb-30 border-1px\">\n              <a class=\"icon icon-dark border-left-theme-color-2-3px pull-left flip mb-0 mr-0 mt-5\" href=\"#\">\n                <i class=\"pe-7s-pen\"></i>\n              </a>\n              <div class=\"icon-box-details\">\n                <h4 class=\"icon-box-title font-16 font-weight-600 m-0 mb-5\">Easy Customiz</h4>\n                <p class=\"text-gray font-13 mb-0\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias non null</p>\n              </div>\n            </div>    \n          </div>\n          <div class=\"col-xs-12 col-sm-6 col-md-4\">\n            <div class=\"icon-box iconbox-theme-colored bg-white p-15 mb-30 border-1px\">\n              <a class=\"icon icon-dark border-left-theme-color-2-3px pull-left flip mb-0 mr-0 mt-5\" href=\"#\">\n                <i class=\"pe-7s-tools\"></i>\n              </a>\n              <div class=\"icon-box-details\">\n                <h4 class=\"icon-box-title font-16 font-weight-600 m-0 mb-5\">Special ShortCode</h4>\n                <p class=\"text-gray font-13 mb-0\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias non null</p>\n              </div>\n            </div>    \n          </div>\n          <div class=\"col-xs-12 col-sm-6 col-md-4\">\n            <div class=\"icon-box iconbox-theme-colored bg-white p-15 mb-30 border-1px\">\n              <a class=\"icon icon-dark border-left-theme-color-2-3px pull-left flip mb-0 mr-0 mt-5\" href=\"#\">\n                <i class=\"pe-7s-vector\"></i>\n              </a>\n              <div class=\"icon-box-details\">\n                <h4 class=\"icon-box-title font-16 font-weight-600 m-0 mb-5\">W3 validation</h4>\n                <p class=\"text-gray font-13 mb-0\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias non null</p>\n              </div>\n            </div>    \n          </div>\n          <div class=\"col-xs-12 col-sm-6 col-md-4\">\n            <div class=\"icon-box iconbox-theme-colored bg-white p-15 mb-30 border-1px\">\n              <a class=\"icon icon-dark border-left-theme-color-2-3px pull-left flip mb-0 mr-0 mt-5\" href=\"#\">\n                <i class=\"pe-7s-phone\"></i>\n              </a>\n              <div class=\"icon-box-details\">\n                <h4 class=\"icon-box-title font-16 font-weight-600 m-0 mb-5\">Responsive</h4>\n                <p class=\"text-gray font-13 mb-0\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias non null</p>\n              </div>\n            </div>    \n          </div>\n          <div class=\"col-xs-12 col-sm-6 col-md-4\">\n            <div class=\"icon-box iconbox-theme-colored bg-white p-15 mb-30 border-1px\">\n              <a class=\"icon icon-dark border-left-theme-color-2-3px pull-left flip mb-0 mr-0 mt-5\" href=\"#\">\n                <i class=\"pe-7s-light\"></i>\n              </a>\n              <div class=\"icon-box-details\">\n                <h4 class=\"icon-box-title font-16 font-weight-600 m-0 mb-5\">Retina Ready</h4>\n                <p class=\"text-gray font-13 mb-0\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias non null</p>\n              </div>\n            </div>    \n          </div>\n        </div>\n      </div>\n    </section>\n\n    <!-- Divider: Funfact -->\n    <section class=\"divider parallax layer-overlay overlay-theme-colored-9\" data-bg-img=\"http://placehold.it/1920x1280\" data-parallax-ratio=\"0.7\">\n      <div class=\"container\">\n        <div class=\"row\">\n          <div class=\"col-xs-12 col-sm-6 col-md-3 mb-md-50\">\n            <div class=\"funfact text-center\">\n              <i class=\"pe-7s-smile mt-5 text-theme-color-2\"></i>\n              <h2 data-animation-duration=\"2000\" data-value=\"5248\" class=\"animate-number text-white mt-0 font-38 font-weight-500\">0</h2>\n              <h5 class=\"text-white text-uppercase mb-0\">Happy Students</h5>\n            </div>\n          </div>\n          <div class=\"col-xs-12 col-sm-6 col-md-3 mb-md-50\">\n            <div class=\"funfact text-center\">\n              <i class=\"pe-7s-note2 mt-5 text-theme-color-2\"></i>\n              <h2 data-animation-duration=\"2000\" data-value=\"675\" class=\"animate-number text-white mt-0 font-38 font-weight-500\">0</h2>\n              <h5 class=\"text-white text-uppercase mb-0\">Our Courses</h5>\n            </div>\n          </div>\n          <div class=\"col-xs-12 col-sm-6 col-md-3 mb-md-50\">\n            <div class=\"funfact text-center\">\n              <i class=\"pe-7s-users mt-5 text-theme-color-2\"></i>\n              <h2 data-animation-duration=\"2000\" data-value=\"248\" class=\"animate-number text-white mt-0 font-38 font-weight-500\">0</h2>\n              <h5 class=\"text-white text-uppercase mb-0\">Our Teachers</h5>\n            </div>\n          </div>\n          <div class=\"col-xs-12 col-sm-6 col-md-3 mb-md-0\">\n            <div class=\"funfact text-center\">\n              <i class=\"pe-7s-cup mt-5 text-theme-color-2\"></i>\n              <h2 data-animation-duration=\"2000\" data-value=\"24\" class=\"animate-number text-white mt-0 font-38 font-weight-500\">0</h2>\n              <h5 class=\"text-white text-uppercase mb-0\">Awards Won</h5>\n            </div>\n          </div>\n        </div>\n      </div>\n    </section>');
/*!40000 ALTER TABLE `Company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Courses`
--

DROP TABLE IF EXISTS `Courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Courses` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `Alias` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `Image` tinytext COLLATE utf8_unicode_ci,
  `Status` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `ShortDesciptions` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `Content` longtext COLLATE utf8_unicode_ci,
  `Activated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Courses`
--

LOCK TABLES `Courses` WRITE;
/*!40000 ALTER TABLE `Courses` DISABLE KEYS */;
INSERT INTO `Courses` VALUES (3,'Photoshop','photoshop','http://res.cloudinary.com/degic-vn/image/upload/v1499497903/8_fqi4fb.jpg','comming soon',600000,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam aliquam ipsum quis ipsum facilisis sit amet.','<h5><em>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo unde, <span class=\"text-theme-color-2\">accounting technologies</span> corporis dolorum blanditiis ullam officia <span class=\"text-theme-color-2\">our university </span>natus minima fugiat repellat! Corrupti voluptatibus aperiam voluptatem. Exercitationem, placeat, cupiditate.</em></h5>\n              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore suscipit, inventore aliquid incidunt, quasi error! Natus esse rem eaque asperiores eligendi dicta quidem iure, excepturi doloremque eius neque autem sint error qui tenetur, modi provident aut, maiores laudantium reiciendis expedita. Eligendi</p>\n              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore voluptatem officiis quod animi possimus a, iure nam sunt quas aperiam non recusandae reprehenderit, nesciunt cumque pariatur totam repellendus delectus? Maxime quasi earum nobis, dicta, aliquam facere reiciendis, delectus voluptas, ea assumenda blanditiis placeat dignissimos quas iusto repellat cumque.</p>\n              <h4 class=\"line-bottom mt-20 mb-20 text-theme-colored\">All Courses Idea</h4>\n              <ul id=\"myTab\" class=\"nav nav-tabs boot-tabs\">\n                <li class=\"active\"><a href=\"#small\" data-toggle=\"tab\">Categories</a></li>\n                <li><a href=\"#medium\" data-toggle=\"tab\">Categories</a></li>\n                <li><a href=\"#large\" data-toggle=\"tab\">Categories</a></li>\n              </ul>\n              <div id=\"myTabContent\" class=\"tab-content\">\n                <div class=\"tab-pane fade in active\" id=\"small\">\n                  <table class=\"table table-bordered\"> \n                    <tr>\n                      <td class=\"text-center font-16 font-weight-600 bg-theme-color-2 text-white\" colspan=\"4\">Prices For All Lesson Type</td>\n                    </tr>\n                    <tr> <th>Coures Type</th> <th>Class time</th> <th>Course Duration</th> <th>Price</th> </tr>\n                    <tbody> \n                      <tr> <th scope=\"row\">Applied Psychology</th> <td>45 minutes</td> <td>3 years</td> <td>$810</td> </tr>\n                      <tr> <th scope=\"row\">Business Administration (MBA)</th> <td>45 minutes</td> <td>2 years</td> <td>$940</td> </tr>\n                      <tr> <th scope=\"row\">Computer Science (BSc)</th> <td>1 Hours</td> <td>4 years</td> <td>$1180</td> </tr>\n                      <tr> <th scope=\"row\">Development Studies (MDS)</th> <td>1 Hours</td> <td>5 years</td> <td>$1400</td> </tr> \n                      <tr> <th scope=\"row\">Engineering Technology (BSc)</th> <td>30 minutes</td> <td>3 years</td> <td>$600</td> </tr> \n                    </tbody> \n                  </table>\n                </div>\n                <div class=\"tab-pane fade\" id=\"medium\">\n                  <table class=\"table table-bordered\"> \n                    <tr>\n                      <td class=\"text-center font-16 font-weight-600 bg-theme-color-2 text-white\" colspan=\"4\">Prices For All Lesson Type</td>\n                    </tr>\n                    <tr> <th>Coures Type</th> <th>Class time</th> <th>Course Duration</th> <th>Price</th> </tr>\n                    <tbody> \n                      <tr> <th scope=\"row\">Applied Psychology</th> <td>45 minutes</td> <td>3 years</td> <td>$810</td> </tr>\n                      <tr> <th scope=\"row\">Business Administration (MBA)</th> <td>45 minutes</td> <td>2 years</td> <td>$940</td> </tr>\n                      <tr> <th scope=\"row\">Computer Science (BSc)</th> <td>1 Hours</td> <td>4 years</td> <td>$1180</td> </tr>\n                      <tr> <th scope=\"row\">Development Studies (MDS)</th> <td>1 Hours</td> <td>5 years</td> <td>$1400</td> </tr> \n                      <tr> <th scope=\"row\">Engineering Technology (BSc)</th> <td>30 minutes</td> <td>3 years</td> <td>$600</td> </tr> \n                    </tbody> \n                  </table>\n                </div>\n                <div class=\"tab-pane fade\" id=\"large\">\n                  <table class=\"table table-bordered\"> \n                    <tr>\n                      <td class=\"text-center font-16 font-weight-600 bg-theme-color-2 text-white\" colspan=\"4\">Prices For All Lesson Type</td>\n                    </tr>\n                    <tr> <th>Coures Type</th> <th>Class time</th> <th>Course Duration</th> <th>Price</th> </tr>\n                    <tbody> \n                      <tr> <th scope=\"row\">Applied Psychology</th> <td>45 minutes</td> <td>3 years</td> <td>$810</td> </tr>\n                      <tr> <th scope=\"row\">Business Administration (MBA)</th> <td>45 minutes</td> <td>2 years</td> <td>$940</td> </tr>\n                      <tr> <th scope=\"row\">Computer Science (BSc)</th> <td>1 Hours</td> <td>4 years</td> <td>$1180</td> </tr>\n                      <tr> <th scope=\"row\">Development Studies (MDS)</th> <td>1 Hours</td> <td>5 years</td> <td>$1400</td> </tr> \n                      <tr> <th scope=\"row\">Engineering Technology (BSc)</th> <td>30 minutes</td> <td>3 years</td> <td>$600</td> </tr> \n                    </tbody> \n                  </table>\n                </div>\n              </div>',1),(4,'NodeJS','nodejs','http://res.cloudinary.com/degic-vn/image/upload/v1499497903/6_ruc2jb.jpg','comming soon',650000,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam aliquam ipsum quis ipsum facilisis sit amet.','<h5><em>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo unde, <span class=\"text-theme-color-2\">accounting technologies</span> corporis dolorum blanditiis ullam officia <span class=\"text-theme-color-2\">our university </span>natus minima fugiat repellat! Corrupti voluptatibus aperiam voluptatem. Exercitationem, placeat, cupiditate.</em></h5>\n              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore suscipit, inventore aliquid incidunt, quasi error! Natus esse rem eaque asperiores eligendi dicta quidem iure, excepturi doloremque eius neque autem sint error qui tenetur, modi provident aut, maiores laudantium reiciendis expedita. Eligendi</p>\n              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore voluptatem officiis quod animi possimus a, iure nam sunt quas aperiam non recusandae reprehenderit, nesciunt cumque pariatur totam repellendus delectus? Maxime quasi earum nobis, dicta, aliquam facere reiciendis, delectus voluptas, ea assumenda blanditiis placeat dignissimos quas iusto repellat cumque.</p>\n              <h4 class=\"line-bottom mt-20 mb-20 text-theme-colored\">All Courses Idea</h4>\n              <ul id=\"myTab\" class=\"nav nav-tabs boot-tabs\">\n                <li class=\"active\"><a href=\"#small\" data-toggle=\"tab\">Categories</a></li>\n                <li><a href=\"#medium\" data-toggle=\"tab\">Categories</a></li>\n                <li><a href=\"#large\" data-toggle=\"tab\">Categories</a></li>\n              </ul>\n              <div id=\"myTabContent\" class=\"tab-content\">\n                <div class=\"tab-pane fade in active\" id=\"small\">\n                  <table class=\"table table-bordered\"> \n                    <tr>\n                      <td class=\"text-center font-16 font-weight-600 bg-theme-color-2 text-white\" colspan=\"4\">Prices For All Lesson Type</td>\n                    </tr>\n                    <tr> <th>Coures Type</th> <th>Class time</th> <th>Course Duration</th> <th>Price</th> </tr>\n                    <tbody> \n                      <tr> <th scope=\"row\">Applied Psychology</th> <td>45 minutes</td> <td>3 years</td> <td>$810</td> </tr>\n                      <tr> <th scope=\"row\">Business Administration (MBA)</th> <td>45 minutes</td> <td>2 years</td> <td>$940</td> </tr>\n                      <tr> <th scope=\"row\">Computer Science (BSc)</th> <td>1 Hours</td> <td>4 years</td> <td>$1180</td> </tr>\n                      <tr> <th scope=\"row\">Development Studies (MDS)</th> <td>1 Hours</td> <td>5 years</td> <td>$1400</td> </tr> \n                      <tr> <th scope=\"row\">Engineering Technology (BSc)</th> <td>30 minutes</td> <td>3 years</td> <td>$600</td> </tr> \n                    </tbody> \n                  </table>\n                </div>\n                <div class=\"tab-pane fade\" id=\"medium\">\n                  <table class=\"table table-bordered\"> \n                    <tr>\n                      <td class=\"text-center font-16 font-weight-600 bg-theme-color-2 text-white\" colspan=\"4\">Prices For All Lesson Type</td>\n                    </tr>\n                    <tr> <th>Coures Type</th> <th>Class time</th> <th>Course Duration</th> <th>Price</th> </tr>\n                    <tbody> \n                      <tr> <th scope=\"row\">Applied Psychology</th> <td>45 minutes</td> <td>3 years</td> <td>$810</td> </tr>\n                      <tr> <th scope=\"row\">Business Administration (MBA)</th> <td>45 minutes</td> <td>2 years</td> <td>$940</td> </tr>\n                      <tr> <th scope=\"row\">Computer Science (BSc)</th> <td>1 Hours</td> <td>4 years</td> <td>$1180</td> </tr>\n                      <tr> <th scope=\"row\">Development Studies (MDS)</th> <td>1 Hours</td> <td>5 years</td> <td>$1400</td> </tr> \n                      <tr> <th scope=\"row\">Engineering Technology (BSc)</th> <td>30 minutes</td> <td>3 years</td> <td>$600</td> </tr> \n                    </tbody> \n                  </table>\n                </div>\n                <div class=\"tab-pane fade\" id=\"large\">\n                  <table class=\"table table-bordered\"> \n                    <tr>\n                      <td class=\"text-center font-16 font-weight-600 bg-theme-color-2 text-white\" colspan=\"4\">Prices For All Lesson Type</td>\n                    </tr>\n                    <tr> <th>Coures Type</th> <th>Class time</th> <th>Course Duration</th> <th>Price</th> </tr>\n                    <tbody> \n                      <tr> <th scope=\"row\">Applied Psychology</th> <td>45 minutes</td> <td>3 years</td> <td>$810</td> </tr>\n                      <tr> <th scope=\"row\">Business Administration (MBA)</th> <td>45 minutes</td> <td>2 years</td> <td>$940</td> </tr>\n                      <tr> <th scope=\"row\">Computer Science (BSc)</th> <td>1 Hours</td> <td>4 years</td> <td>$1180</td> </tr>\n                      <tr> <th scope=\"row\">Development Studies (MDS)</th> <td>1 Hours</td> <td>5 years</td> <td>$1400</td> </tr> \n                      <tr> <th scope=\"row\">Engineering Technology (BSc)</th> <td>30 minutes</td> <td>3 years</td> <td>$600</td> </tr> \n                    </tbody> \n                  </table>\n                </div>\n              </div>',1),(5,'JavaScript','javascript','http://res.cloudinary.com/degic-vn/image/upload/v1499497903/5_1_finvtg.jpg','comming soon',1000000,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam aliquam ipsum quis ipsum facilisis sit amet.','<h5><em>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo unde, <span class=\"text-theme-color-2\">accounting technologies</span> corporis dolorum blanditiis ullam officia <span class=\"text-theme-color-2\">our university </span>natus minima fugiat repellat! Corrupti voluptatibus aperiam voluptatem. Exercitationem, placeat, cupiditate.</em></h5>\n              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore suscipit, inventore aliquid incidunt, quasi error! Natus esse rem eaque asperiores eligendi dicta quidem iure, excepturi doloremque eius neque autem sint error qui tenetur, modi provident aut, maiores laudantium reiciendis expedita. Eligendi</p>\n              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore voluptatem officiis quod animi possimus a, iure nam sunt quas aperiam non recusandae reprehenderit, nesciunt cumque pariatur totam repellendus delectus? Maxime quasi earum nobis, dicta, aliquam facere reiciendis, delectus voluptas, ea assumenda blanditiis placeat dignissimos quas iusto repellat cumque.</p>\n              <h4 class=\"line-bottom mt-20 mb-20 text-theme-colored\">All Courses Idea</h4>\n              <ul id=\"myTab\" class=\"nav nav-tabs boot-tabs\">\n                <li class=\"active\"><a href=\"#small\" data-toggle=\"tab\">Categories</a></li>\n                <li><a href=\"#medium\" data-toggle=\"tab\">Categories</a></li>\n                <li><a href=\"#large\" data-toggle=\"tab\">Categories</a></li>\n              </ul>\n              <div id=\"myTabContent\" class=\"tab-content\">\n                <div class=\"tab-pane fade in active\" id=\"small\">\n                  <table class=\"table table-bordered\"> \n                    <tr>\n                      <td class=\"text-center font-16 font-weight-600 bg-theme-color-2 text-white\" colspan=\"4\">Prices For All Lesson Type</td>\n                    </tr>\n                    <tr> <th>Coures Type</th> <th>Class time</th> <th>Course Duration</th> <th>Price</th> </tr>\n                    <tbody> \n                      <tr> <th scope=\"row\">Applied Psychology</th> <td>45 minutes</td> <td>3 years</td> <td>$810</td> </tr>\n                      <tr> <th scope=\"row\">Business Administration (MBA)</th> <td>45 minutes</td> <td>2 years</td> <td>$940</td> </tr>\n                      <tr> <th scope=\"row\">Computer Science (BSc)</th> <td>1 Hours</td> <td>4 years</td> <td>$1180</td> </tr>\n                      <tr> <th scope=\"row\">Development Studies (MDS)</th> <td>1 Hours</td> <td>5 years</td> <td>$1400</td> </tr> \n                      <tr> <th scope=\"row\">Engineering Technology (BSc)</th> <td>30 minutes</td> <td>3 years</td> <td>$600</td> </tr> \n                    </tbody> \n                  </table>\n                </div>\n                <div class=\"tab-pane fade\" id=\"medium\">\n                  <table class=\"table table-bordered\"> \n                    <tr>\n                      <td class=\"text-center font-16 font-weight-600 bg-theme-color-2 text-white\" colspan=\"4\">Prices For All Lesson Type</td>\n                    </tr>\n                    <tr> <th>Coures Type</th> <th>Class time</th> <th>Course Duration</th> <th>Price</th> </tr>\n                    <tbody> \n                      <tr> <th scope=\"row\">Applied Psychology</th> <td>45 minutes</td> <td>3 years</td> <td>$810</td> </tr>\n                      <tr> <th scope=\"row\">Business Administration (MBA)</th> <td>45 minutes</td> <td>2 years</td> <td>$940</td> </tr>\n                      <tr> <th scope=\"row\">Computer Science (BSc)</th> <td>1 Hours</td> <td>4 years</td> <td>$1180</td> </tr>\n                      <tr> <th scope=\"row\">Development Studies (MDS)</th> <td>1 Hours</td> <td>5 years</td> <td>$1400</td> </tr> \n                      <tr> <th scope=\"row\">Engineering Technology (BSc)</th> <td>30 minutes</td> <td>3 years</td> <td>$600</td> </tr> \n                    </tbody> \n                  </table>\n                </div>\n                <div class=\"tab-pane fade\" id=\"large\">\n                  <table class=\"table table-bordered\"> \n                    <tr>\n                      <td class=\"text-center font-16 font-weight-600 bg-theme-color-2 text-white\" colspan=\"4\">Prices For All Lesson Type</td>\n                    </tr>\n                    <tr> <th>Coures Type</th> <th>Class time</th> <th>Course Duration</th> <th>Price</th> </tr>\n                    <tbody> \n                      <tr> <th scope=\"row\">Applied Psychology</th> <td>45 minutes</td> <td>3 years</td> <td>$810</td> </tr>\n                      <tr> <th scope=\"row\">Business Administration (MBA)</th> <td>45 minutes</td> <td>2 years</td> <td>$940</td> </tr>\n                      <tr> <th scope=\"row\">Computer Science (BSc)</th> <td>1 Hours</td> <td>4 years</td> <td>$1180</td> </tr>\n                      <tr> <th scope=\"row\">Development Studies (MDS)</th> <td>1 Hours</td> <td>5 years</td> <td>$1400</td> </tr> \n                      <tr> <th scope=\"row\">Engineering Technology (BSc)</th> <td>30 minutes</td> <td>3 years</td> <td>$600</td> </tr> \n                    </tbody> \n                  </table>\n                </div>\n              </div>',1),(6,'Lập trình web cơ bản','lap-trinh-web-co-ban','http://res.cloudinary.com/degic-vn/image/upload/v1499497903/4_da9uye.jpg','started',2000000,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam aliquam ipsum quis ipsum facilisis sit amet.','<h5><em>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo unde, <span class=\"text-theme-color-2\">accounting technologies</span> corporis dolorum blanditiis ullam officia <span class=\"text-theme-color-2\">our university </span>natus minima fugiat repellat! Corrupti voluptatibus aperiam voluptatem. Exercitationem, placeat, cupiditate.</em></h5>\n              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore suscipit, inventore aliquid incidunt, quasi error! Natus esse rem eaque asperiores eligendi dicta quidem iure, excepturi doloremque eius neque autem sint error qui tenetur, modi provident aut, maiores laudantium reiciendis expedita. Eligendi</p>\n              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore voluptatem officiis quod animi possimus a, iure nam sunt quas aperiam non recusandae reprehenderit, nesciunt cumque pariatur totam repellendus delectus? Maxime quasi earum nobis, dicta, aliquam facere reiciendis, delectus voluptas, ea assumenda blanditiis placeat dignissimos quas iusto repellat cumque.</p>\n              <h4 class=\"line-bottom mt-20 mb-20 text-theme-colored\">All Courses Idea</h4>\n              <ul id=\"myTab\" class=\"nav nav-tabs boot-tabs\">\n                <li class=\"active\"><a href=\"#small\" data-toggle=\"tab\">Categories</a></li>\n                <li><a href=\"#medium\" data-toggle=\"tab\">Categories</a></li>\n                <li><a href=\"#large\" data-toggle=\"tab\">Categories</a></li>\n              </ul>\n              <div id=\"myTabContent\" class=\"tab-content\">\n                <div class=\"tab-pane fade in active\" id=\"small\">\n                  <table class=\"table table-bordered\"> \n                    <tr>\n                      <td class=\"text-center font-16 font-weight-600 bg-theme-color-2 text-white\" colspan=\"4\">Prices For All Lesson Type</td>\n                    </tr>\n                    <tr> <th>Coures Type</th> <th>Class time</th> <th>Course Duration</th> <th>Price</th> </tr>\n                    <tbody> \n                      <tr> <th scope=\"row\">Applied Psychology</th> <td>45 minutes</td> <td>3 years</td> <td>$810</td> </tr>\n                      <tr> <th scope=\"row\">Business Administration (MBA)</th> <td>45 minutes</td> <td>2 years</td> <td>$940</td> </tr>\n                      <tr> <th scope=\"row\">Computer Science (BSc)</th> <td>1 Hours</td> <td>4 years</td> <td>$1180</td> </tr>\n                      <tr> <th scope=\"row\">Development Studies (MDS)</th> <td>1 Hours</td> <td>5 years</td> <td>$1400</td> </tr> \n                      <tr> <th scope=\"row\">Engineering Technology (BSc)</th> <td>30 minutes</td> <td>3 years</td> <td>$600</td> </tr> \n                    </tbody> \n                  </table>\n                </div>\n                <div class=\"tab-pane fade\" id=\"medium\">\n                  <table class=\"table table-bordered\"> \n                    <tr>\n                      <td class=\"text-center font-16 font-weight-600 bg-theme-color-2 text-white\" colspan=\"4\">Prices For All Lesson Type</td>\n                    </tr>\n                    <tr> <th>Coures Type</th> <th>Class time</th> <th>Course Duration</th> <th>Price</th> </tr>\n                    <tbody> \n                      <tr> <th scope=\"row\">Applied Psychology</th> <td>45 minutes</td> <td>3 years</td> <td>$810</td> </tr>\n                      <tr> <th scope=\"row\">Business Administration (MBA)</th> <td>45 minutes</td> <td>2 years</td> <td>$940</td> </tr>\n                      <tr> <th scope=\"row\">Computer Science (BSc)</th> <td>1 Hours</td> <td>4 years</td> <td>$1180</td> </tr>\n                      <tr> <th scope=\"row\">Development Studies (MDS)</th> <td>1 Hours</td> <td>5 years</td> <td>$1400</td> </tr> \n                      <tr> <th scope=\"row\">Engineering Technology (BSc)</th> <td>30 minutes</td> <td>3 years</td> <td>$600</td> </tr> \n                    </tbody> \n                  </table>\n                </div>\n                <div class=\"tab-pane fade\" id=\"large\">\n                  <table class=\"table table-bordered\"> \n                    <tr>\n                      <td class=\"text-center font-16 font-weight-600 bg-theme-color-2 text-white\" colspan=\"4\">Prices For All Lesson Type</td>\n                    </tr>\n                    <tr> <th>Coures Type</th> <th>Class time</th> <th>Course Duration</th> <th>Price</th> </tr>\n                    <tbody> \n                      <tr> <th scope=\"row\">Applied Psychology</th> <td>45 minutes</td> <td>3 years</td> <td>$810</td> </tr>\n                      <tr> <th scope=\"row\">Business Administration (MBA)</th> <td>45 minutes</td> <td>2 years</td> <td>$940</td> </tr>\n                      <tr> <th scope=\"row\">Computer Science (BSc)</th> <td>1 Hours</td> <td>4 years</td> <td>$1180</td> </tr>\n                      <tr> <th scope=\"row\">Development Studies (MDS)</th> <td>1 Hours</td> <td>5 years</td> <td>$1400</td> </tr> \n                      <tr> <th scope=\"row\">Engineering Technology (BSc)</th> <td>30 minutes</td> <td>3 years</td> <td>$600</td> </tr> \n                    </tbody> \n                  </table>\n                </div>\n              </div>',1),(7,'HTML5','html5','http://res.cloudinary.com/degic-vn/image/upload/v1499497903/7_ehpklm.jpg','started',300000,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam aliquam ipsum quis ipsum facilisis sit amet.','<h5><em>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo unde, <span class=\"text-theme-color-2\">accounting technologies</span> corporis dolorum blanditiis ullam officia <span class=\"text-theme-color-2\">our university </span>natus minima fugiat repellat! Corrupti voluptatibus aperiam voluptatem. Exercitationem, placeat, cupiditate.</em></h5>\n              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore suscipit, inventore aliquid incidunt, quasi error! Natus esse rem eaque asperiores eligendi dicta quidem iure, excepturi doloremque eius neque autem sint error qui tenetur, modi provident aut, maiores laudantium reiciendis expedita. Eligendi</p>\n              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore voluptatem officiis quod animi possimus a, iure nam sunt quas aperiam non recusandae reprehenderit, nesciunt cumque pariatur totam repellendus delectus? Maxime quasi earum nobis, dicta, aliquam facere reiciendis, delectus voluptas, ea assumenda blanditiis placeat dignissimos quas iusto repellat cumque.</p>\n              <h4 class=\"line-bottom mt-20 mb-20 text-theme-colored\">All Courses Idea</h4>\n              <ul id=\"myTab\" class=\"nav nav-tabs boot-tabs\">\n                <li class=\"active\"><a href=\"#small\" data-toggle=\"tab\">Categories</a></li>\n                <li><a href=\"#medium\" data-toggle=\"tab\">Categories</a></li>\n                <li><a href=\"#large\" data-toggle=\"tab\">Categories</a></li>\n              </ul>\n              <div id=\"myTabContent\" class=\"tab-content\">\n                <div class=\"tab-pane fade in active\" id=\"small\">\n                  <table class=\"table table-bordered\"> \n                    <tr>\n                      <td class=\"text-center font-16 font-weight-600 bg-theme-color-2 text-white\" colspan=\"4\">Prices For All Lesson Type</td>\n                    </tr>\n                    <tr> <th>Coures Type</th> <th>Class time</th> <th>Course Duration</th> <th>Price</th> </tr>\n                    <tbody> \n                      <tr> <th scope=\"row\">Applied Psychology</th> <td>45 minutes</td> <td>3 years</td> <td>$810</td> </tr>\n                      <tr> <th scope=\"row\">Business Administration (MBA)</th> <td>45 minutes</td> <td>2 years</td> <td>$940</td> </tr>\n                      <tr> <th scope=\"row\">Computer Science (BSc)</th> <td>1 Hours</td> <td>4 years</td> <td>$1180</td> </tr>\n                      <tr> <th scope=\"row\">Development Studies (MDS)</th> <td>1 Hours</td> <td>5 years</td> <td>$1400</td> </tr> \n                      <tr> <th scope=\"row\">Engineering Technology (BSc)</th> <td>30 minutes</td> <td>3 years</td> <td>$600</td> </tr> \n                    </tbody> \n                  </table>\n                </div>\n                <div class=\"tab-pane fade\" id=\"medium\">\n                  <table class=\"table table-bordered\"> \n                    <tr>\n                      <td class=\"text-center font-16 font-weight-600 bg-theme-color-2 text-white\" colspan=\"4\">Prices For All Lesson Type</td>\n                    </tr>\n                    <tr> <th>Coures Type</th> <th>Class time</th> <th>Course Duration</th> <th>Price</th> </tr>\n                    <tbody> \n                      <tr> <th scope=\"row\">Applied Psychology</th> <td>45 minutes</td> <td>3 years</td> <td>$810</td> </tr>\n                      <tr> <th scope=\"row\">Business Administration (MBA)</th> <td>45 minutes</td> <td>2 years</td> <td>$940</td> </tr>\n                      <tr> <th scope=\"row\">Computer Science (BSc)</th> <td>1 Hours</td> <td>4 years</td> <td>$1180</td> </tr>\n                      <tr> <th scope=\"row\">Development Studies (MDS)</th> <td>1 Hours</td> <td>5 years</td> <td>$1400</td> </tr> \n                      <tr> <th scope=\"row\">Engineering Technology (BSc)</th> <td>30 minutes</td> <td>3 years</td> <td>$600</td> </tr> \n                    </tbody> \n                  </table>\n                </div>\n                <div class=\"tab-pane fade\" id=\"large\">\n                  <table class=\"table table-bordered\"> \n                    <tr>\n                      <td class=\"text-center font-16 font-weight-600 bg-theme-color-2 text-white\" colspan=\"4\">Prices For All Lesson Type</td>\n                    </tr>\n                    <tr> <th>Coures Type</th> <th>Class time</th> <th>Course Duration</th> <th>Price</th> </tr>\n                    <tbody> \n                      <tr> <th scope=\"row\">Applied Psychology</th> <td>45 minutes</td> <td>3 years</td> <td>$810</td> </tr>\n                      <tr> <th scope=\"row\">Business Administration (MBA)</th> <td>45 minutes</td> <td>2 years</td> <td>$940</td> </tr>\n                      <tr> <th scope=\"row\">Computer Science (BSc)</th> <td>1 Hours</td> <td>4 years</td> <td>$1180</td> </tr>\n                      <tr> <th scope=\"row\">Development Studies (MDS)</th> <td>1 Hours</td> <td>5 years</td> <td>$1400</td> </tr> \n                      <tr> <th scope=\"row\">Engineering Technology (BSc)</th> <td>30 minutes</td> <td>3 years</td> <td>$600</td> </tr> \n                    </tbody> \n                  </table>\n                </div>\n              </div>',1);
/*!40000 ALTER TABLE `Courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Feedbacks`
--

DROP TABLE IF EXISTS `Feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Feedbacks` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `Avatar` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `Content` text COLLATE utf8_unicode_ci NOT NULL,
  `CreateDate` datetime NOT NULL,
  `CourseId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `CourseId` (`CourseId`),
  CONSTRAINT `Feedbacks_ibfk_1` FOREIGN KEY (`CourseId`) REFERENCES `Courses` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Feedbacks`
--

LOCK TABLES `Feedbacks` WRITE;
/*!40000 ALTER TABLE `Feedbacks` DISABLE KEYS */;
INSERT INTO `Feedbacks` VALUES (1,'Hs A','http://res.cloudinary.com/degic-vn/image/upload/v1499497904/avatar-3_apebsz.jpg','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas vel sint, ut. Quisquam doloremque minus possimus eligendi dolore ad.</p>','2017-07-09 00:42:46',7),(2,'Hs B','http://res.cloudinary.com/degic-vn/image/upload/v1499497904/avatar-2_vp24ev.jpg','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas vel sint, ut. Quisquam doloremque minus possimus eligendi dolore ad.</p>','2017-07-09 00:43:18',5),(3,'Hs C','http://res.cloudinary.com/degic-vn/image/upload/v1499497903/avatar-1_u2zaq0.jpg','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas vel sint, ut. Quisquam doloremque minus possimus eligendi dolore ad.</p>','2017-07-09 00:43:45',4);
/*!40000 ALTER TABLE `Feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Images`
--

DROP TABLE IF EXISTS `Images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Images` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` tinytext,
  `Image` text,
  `Customer` bit(1) DEFAULT NULL,
  `Gallery` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Images`
--

LOCK TABLES `Images` WRITE;
/*!40000 ALTER TABLE `Images` DISABLE KEYS */;
INSERT INTO `Images` VALUES (4,'Dã ngoại','http://res.cloudinary.com/degic-vn/image/upload/v1499497910/new-3_ltij75.jpg','\0',''),(5,'Dã ngoại','http://res.cloudinary.com/degic-vn/image/upload/v1499497905/g-4_pwujal.jpg',NULL,''),(6,'Trên lớp','http://res.cloudinary.com/degic-vn/image/upload/v1499497905/g-4_pwujal.jpg',NULL,''),(7,'Trên lớp','http://res.cloudinary.com/degic-vn/image/upload/v1499497906/g-1_ivatwc.jpg',NULL,''),(8,'Trên lớp','http://res.cloudinary.com/degic-vn/image/upload/v1499497906/g-2_van5dp.jpg',NULL,''),(9,'Trên lớp','http://res.cloudinary.com/degic-vn/image/upload/v1499497906/g-7_qbx23s.jpg',NULL,''),(10,'Trên lớp','http://res.cloudinary.com/degic-vn/image/upload/v1499497907/g-10_ioknfe.jpg',NULL,''),(11,'Trên lớp','http://res.cloudinary.com/degic-vn/image/upload/v1499497907/g-12_mk1ltm.jpg',NULL,''),(12,'Trên lớp','http://res.cloudinary.com/degic-vn/image/upload/v1499497907/g-5_ydasts.jpg',NULL,''),(13,'Dã ngoại','http://res.cloudinary.com/degic-vn/image/upload/v1499497908/g-3_kjt3xo.jpg',NULL,''),(14,'Dã ngoại','http://res.cloudinary.com/degic-vn/image/upload/v1499497908/g-6_omrhrv.jpg',NULL,''),(15,'Dã ngoại','http://res.cloudinary.com/degic-vn/image/upload/v1499497909/g-8_mc9nxr.jpg',NULL,''),(16,'Dã ngoại','http://res.cloudinary.com/degic-vn/image/upload/v1499497909/g-9_h1vc2j.jpg',NULL,''),(17,'Dã ngoại','http://res.cloudinary.com/degic-vn/image/upload/v1499497911/g-11_qoefzf.jpg',NULL,''),(18,'kh1','http://res.cloudinary.com/degic-vn/image/upload/v1499540635/c-9_xirm2i.png','',NULL),(19,'kh2','http://res.cloudinary.com/degic-vn/image/upload/v1499540636/c-8_gxibqw.png','',NULL),(20,'kh3','http://res.cloudinary.com/degic-vn/image/upload/v1499540635/c-7_i2ah1b.png','',NULL),(21,'kh4','http://res.cloudinary.com/degic-vn/image/upload/v1499540635/c-5_m3wcgs.png','',NULL),(22,'kh5','http://res.cloudinary.com/degic-vn/image/upload/v1499540635/c-4_aak0ar.png','',NULL),(23,'kh6','http://res.cloudinary.com/degic-vn/image/upload/v1499540635/c-3_zinkvl.png','',NULL),(24,'kh7','http://res.cloudinary.com/degic-vn/image/upload/v1499540635/c-2_hmh57i.png','',NULL),(25,'kh8','http://res.cloudinary.com/degic-vn/image/upload/v1499540635/c-2_hmh57i.png','',NULL),(26,'kh9','http://res.cloudinary.com/degic-vn/image/upload/v1499540635/c-1_d2mn8y.png','',NULL);
/*!40000 ALTER TABLE `Images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Posts`
--

DROP TABLE IF EXISTS `Posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Posts` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `Alias` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `Image` tinytext COLLATE utf8_unicode_ci,
  `ShortDescriptions` tinytext COLLATE utf8_unicode_ci,
  `Content` longtext COLLATE utf8_unicode_ci,
  `Activated` tinyint(1) DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `CreateDate` datetime NOT NULL,
  `HomePage` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `CategoryId` (`CategoryId`),
  CONSTRAINT `Posts_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `Categorys` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Posts`
--

LOCK TABLES `Posts` WRITE;
/*!40000 ALTER TABLE `Posts` DISABLE KEYS */;
INSERT INTO `Posts` VALUES (1,'Bài viết a','bai-viet-a','http://res.cloudinary.com/degic-vn/image/upload/v1499497909/new-2_fqu3cj.jpg','Lorem ipsum dolor sit amet, consectetur adipisi cing elit. Molestias eius illum libero dolor nobis deleniti, sint assumenda Pariatur iste.','<p class=\"mb-15\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n                  <p class=\"mb-15\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n                  <blockquote class=\"theme-colored pt-20 pb-20\">\n                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>\n                    <footer>Someone famous in <cite title=\"Source Title\">Source Title</cite></footer>\n                  </blockquote>\n                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna et sed aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\n                  <div class=\"mt-30 mb-0\">\n                    <h5 class=\"pull-left mt-10 mr-20 text-theme-color-2\">Share:</h5>\n                    <ul class=\"styled-icons icon-circled m-0\">\n                      <li><a href=\"#\" data-bg-color=\"#3A5795\"><i class=\"fa fa-facebook text-white\"></i></a></li>\n                      <li><a href=\"#\" data-bg-color=\"#55ACEE\"><i class=\"fa fa-twitter text-white\"></i></a></li>\n                      <li><a href=\"#\" data-bg-color=\"#A11312\"><i class=\"fa fa-google-plus text-white\"></i></a></li>\n                    </ul>\n                  </div>',1,4,'0001-01-01 00:00:00',1),(2,'Bài viết b','bai-viet-b','http://res.cloudinary.com/degic-vn/image/upload/v1499497910/new-3_ltij75.jpg','Lorem ipsum dolor sit amet, consectetur adipisi cing elit. Molestias eius illum libero dolor nobis deleniti, sint assumenda Pariatur iste.','<p class=\"mb-15\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n                  <p class=\"mb-15\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n                  <blockquote class=\"theme-colored pt-20 pb-20\">\n                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>\n                    <footer>Someone famous in <cite title=\"Source Title\">Source Title</cite></footer>\n                  </blockquote>\n                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna et sed aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\n                  <div class=\"mt-30 mb-0\">\n                    <h5 class=\"pull-left mt-10 mr-20 text-theme-color-2\">Share:</h5>\n                    <ul class=\"styled-icons icon-circled m-0\">\n                      <li><a href=\"#\" data-bg-color=\"#3A5795\"><i class=\"fa fa-facebook text-white\"></i></a></li>\n                      <li><a href=\"#\" data-bg-color=\"#55ACEE\"><i class=\"fa fa-twitter text-white\"></i></a></li>\n                      <li><a href=\"#\" data-bg-color=\"#A11312\"><i class=\"fa fa-google-plus text-white\"></i></a></li>\n                    </ul>\n                  </div>',1,4,'2017-07-09 14:41:57',1),(3,'Bài viết c','bai-viet-c','http://res.cloudinary.com/degic-vn/image/upload/v1499497907/new-1_pldzdo.jpg','Lorem ipsum dolor sit amet, consectetur adipisi cing elit. Molestias eius illum libero dolor nobis deleniti, sint assumenda Pariatur iste.','<p class=\"mb-15\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n                  <p class=\"mb-15\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n                  <blockquote class=\"theme-colored pt-20 pb-20\">\n                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>\n                    <footer>Someone famous in <cite title=\"Source Title\">Source Title</cite></footer>\n                  </blockquote>\n                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna et sed aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\n                  <div class=\"mt-30 mb-0\">\n                    <h5 class=\"pull-left mt-10 mr-20 text-theme-color-2\">Share:</h5>\n                    <ul class=\"styled-icons icon-circled m-0\">\n                      <li><a href=\"#\" data-bg-color=\"#3A5795\"><i class=\"fa fa-facebook text-white\"></i></a></li>\n                      <li><a href=\"#\" data-bg-color=\"#55ACEE\"><i class=\"fa fa-twitter text-white\"></i></a></li>\n                      <li><a href=\"#\" data-bg-color=\"#A11312\"><i class=\"fa fa-google-plus text-white\"></i></a></li>\n                    </ul>\n                  </div>',1,4,'2017-07-09 14:42:29',1);
/*!40000 ALTER TABLE `Posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Slides`
--

DROP TABLE IF EXISTS `Slides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Slides` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `Alias` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `Image` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `ButtonViewer` tinyint(1) DEFAULT NULL,
  `LinkViewer` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `Activated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Slides`
--

LOCK TABLES `Slides` WRITE;
/*!40000 ALTER TABLE `Slides` DISABLE KEYS */;
INSERT INTO `Slides` VALUES (1,'Word best education','word-best-education','http://res.cloudinary.com/degic-vn/image/upload/v1499587220/slide-3_x5hzxp.jpg',1,'copy link toi post',1),(2,'Word best education 1','word-best-education-1','http://res.cloudinary.com/degic-vn/image/upload/v1499587220/slide-2_disfo9.jpg',0,'copy link toi post',1),(3,'Word best education 3','word-best-education-3','http://res.cloudinary.com/degic-vn/image/upload/v1499587216/slide-1_eijfbw.jpg',1,'copy link toi post',1);
/*!40000 ALTER TABLE `Slides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `UserName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Password` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `FullName` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `Activated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES ('dang','c4ca4238a0b923820dcc509a6f75849b','tan dang',1);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'Degic'
--
/*!50003 DROP PROCEDURE IF EXISTS `changePassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `changePassword`(IN pUserName VARCHAR(255), IN pPassword TINYTEXT)
BEGIN
    UPDATE Users
      SET Password = pPassword COLLATE utf8_unicode_ci
    WHERE UserName = pUserName COLLATE utf8_unicode_ci;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteCategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteCategory`(
    IN pId INT
  )
BEGIN
    DELETE FROM Categorys WHERE Id = pId;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteCourse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteCourse`(IN pId INT)
BEGIN 
    DELETE FROM Courses WHERE Id = pId;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteFeedback` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteFeedback`(IN pId INT)
BEGIN 
    DELETE FROM Feedbacks WHERE Id = pId;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteImage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteImage`(IN pId INT)
BEGIN 
    DELETE FROM Images WHERE Id = pId;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deletePost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletePost`(IN pId INT)
BEGIN 
    DELETE FROM Posts WHERE Id = pId;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteSlide` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteSlide`(IN pId INT)
BEGIN
    DELETE FROM Slides WHERE Id = pId;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteUser`(IN pUserName VARCHAR(25))
BEGIN 
    DELETE FROM Users WHERE UserName = pUserName COLLATE utf8_unicode_ci;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `findCategoryByAlias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `findCategoryByAlias`(IN pAlias TINYTEXT)
BEGIN
    DECLARE _find INT;
    SET _find = (SELECT count(Id) FROM Categorys WHERE Alias = pAlias COLLATE utf8_unicode_ci LIMIT 1);
    IF _find = 0 THEN
      SELECT 0;
    ELSE
      SELECT 1;
    END IF;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `findCourseByAlias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `findCourseByAlias`(IN pAlias TINYTEXT)
BEGIN
    DECLARE _find INT;
    SET _find = (SELECT COUNT(Id) FROM Courses WHERE Alias = pAlias  COLLATE utf8_unicode_ci LIMIT 1 );
    SELECT _find;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `findPostByAlias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `findPostByAlias`(IN pAlias TINYTEXT)
BEGIN
    DECLARE _find INT;
    SET _find = (SELECT count(Id) FROM Posts WHERE Alias = pAlias COLLATE utf8_unicode_ci LIMIT 1);
    if _find = 0 THEN
      SELECT 0;
    ELSE 
      SELECT 1;
    END IF;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `findSlideByAlias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `findSlideByAlias`(IN pAlias TINYTEXT)
BEGIN
    DECLARE _find INT;
    SET _find = (SELECT COUNT(Id)
                 FROM Slides WHERE Alias = pAlias COLLATE utf8_unicode_ci LIMIT 1);
    IF _find = 0 THEN
      SELECT 0;
    ELSE 
      SELECT 1;
    END IF;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `findUserByUserName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `findUserByUserName`(IN pUserName VARCHAR(25))
BEGIN
    DECLARE _find INT;
    SET _find = (SELECT count(UserName) FROM Users WHERE UserName = pUserName COLLATE utf8_unicode_ci LIMIT 1);
    IF _find = 0 THEN
      SELECT 0;
    ELSE
      SELECT 1;
    END IF;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAbout` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAbout`()
BEGIN 
    SELECT About
    FROM Company
    LIMIT 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllCategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllCategory`()
BEGIN
    SELECT Id, Name, Activated, ClassType, Orders
    FROM Categorys
    ORDER BY Name, Id;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllCategoryForPost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllCategoryForPost`()
BEGIN 
    SELECT Id, Name
    FROM Categorys
    ORDER BY Name;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllCourse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllCourse`()
BEGIN 
    SELECT Id, Name, Alias, Image, Status, Price, ShortDesciptions, Activated, Content
    FROM Courses
    ORDER BY Id;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllCourseForFeedback` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllCourseForFeedback`()
BEGIN 
    SELECT Id, Name
    FROM Courses
    ORDER BY Name;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllCourseForHomePage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllCourseForHomePage`()
BEGIN
    SELECT Id, Name, Alias, Image, Status, Price, ShortDesciptions
    FROM Courses
    WHERE Activated = 1
    LIMIT 6;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllCourseForMenuLine` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllCourseForMenuLine`()
BEGIN 
    SELECT Name, Alias
    FROM Courses
    WHERE Activated = 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllCourseOfClass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllCourseOfClass`()
BEGIN
    SELECT Name, Alias, Image, ShortDesciptions, Price, Status
    FROM Courses;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllCustomer`()
BEGIN 
    SELECT Name, Image
    FROM Images
    WHERE Customer = 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllFeedback` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllFeedback`()
BEGIN 
    SELECT f.Id, f.FullName, c.Name as CourseName
    FROM Feedbacks f
    INNER JOIN Courses c on f.CourseId = c.Id
    ORDER BY Id;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllFeedbackForHomePage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllFeedbackForHomePage`()
BEGIN
    SELECT FullName, Avatar, Content
    FROM Feedbacks;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllGallery` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllGallery`()
BEGIN
    SELECT Name, Image
    FROM Images
    WHERE Gallery = 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllImage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllImage`()
BEGIN
    SELECT Id, Name, Gallery, Customer
    FROM Images
    ORDER BY Name;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllPost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllPost`()
BEGIN
    SELECT p.Id, p.Name, p.CategoryId, c.Name AS CategoryName, p.Activated, p.HomePage
    FROM Posts p
    INNER JOIN Categorys c on p.CategoryId = c.Id
    ORDER BY Name, Id;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllPostForMenuLine` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllPostForMenuLine`()
BEGIN
    SELECT Name, Alias, CategoryId
    FROM Posts
    WHERE Activated = 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllPostOfCategoryAlias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllPostOfCategoryAlias`(IN pCateAlias TINYTEXT)
BEGIN
    SELECT p.Name, p.Alias, p.Image, ShortDescriptions, CreateDate
    FROM Posts p
    INNER JOIN Categorys c ON c.Id = p.CategoryId
    AND c.Activated = 1 AND p.Activated = 1 AND c.Alias = pCateAlias COLLATE utf8_general_ci;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllSlide` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllSlide`()
BEGIN
    SELECT Id, Name, Alias, Image, ButtonViewer, LinkViewer, Activated
    FROM Slides
    ORDER BY Name;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllSlideForHome` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllSlideForHome`()
BEGIN
    SELECT Name, Alias, Image, ButtonViewer, LinkViewer
    FROM Slides
    WHERE Activated = 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllUser`()
BEGIN 
    SELECT UserName, FullName, Activated
    FROM Users
    ORDER BY UserName;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCategoryById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCategoryById`(IN pId INT)
BEGIN 
    SELECT Id, Name, Alias, Image, Activated, Descriptions, ClassType, Content, Orders
    FROM Categorys
    WHERE Id = pId
    LIMIT 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCategoryContentByAlias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCategoryContentByAlias`(IN pAlias TINYTEXT)
BEGIN
    SELECT Name, Alias, Content
    FROM Categorys
    WHERE Alias = pAlias COLLATE utf8_general_ci
    LIMIT 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCompany` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCompany`()
BEGIN 
    SELECT Name, Address, Phone, Hotline, Email, TaxCode, Google, Tweeter, Facebook, Description, About
    FROM Company
    LIMIT 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCompanyForFooter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCompanyForFooter`()
BEGIN
    SELECT Address, Phone, Hotline, Email, Facebook, Google, Tweeter, TaxCode
    FROM Company
    LIMIT 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCompanyForHead` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCompanyForHead`()
BEGIN
    SELECT Facebook, Tweeter, Google, Hotline
    FROM Company
    LIMIT 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCompanyForHome` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCompanyForHome`()
BEGIN 
    SELECT Description
    FROM Company
    LIMIT 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCourseById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCourseById`(IN pId INT)
BEGIN
    SELECT Id, Name, Alias, Image, Status, Price, ShortDesciptions, Activated, Content
    FROM Courses
    WHERE Id = pId
    LIMIT 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCourseDetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCourseDetail`(IN pAlias TINYTEXT)
BEGIN
    SELECT Name, Alias, Image, Price, Status, Content
    FROM Courses
    WHERE Alias = pAlias COLLATE utf8_general_ci
    LIMIT 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCourseForFooter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCourseForFooter`()
BEGIN
    SELECT Name, Alias FROM Courses WHERE Activated = 1 LIMIT 5;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getFeedbackById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getFeedbackById`(IN pId INT)
BEGIN 
    SELECT Id, FullName, Avatar, Content, CreateDate, CourseId
    FROM Feedbacks
    WHERE Id = pId
    LIMIT 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getImageById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getImageById`(IN pId INT)
BEGIN
    SELECT Id, Name, Image, Gallery, Customer
    FROM Images
    WHERE Id = pId
    LIMIT 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getLastPost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getLastPost`()
BEGIN
    SELECT Name, Alias, Image, ShortDescriptions
    FROM Posts
    ORDER BY CreateDate DESC
    LIMIT 6;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMenuHead` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMenuHead`()
BEGIN
    SELECT Id, Name, Alias, ClassType, News
    FROM Categorys
    WHERE Activated = 1
    ORDER BY Orders;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getNewestCourse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getNewestCourse`()
BEGIN
    SELECT Name, Alias, Image, ShortDesciptions, Price
    FROM Courses
    ORDER BY Id DESC
    LIMIT 6;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPostById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getPostById`(IN pId INT)
BEGIN
    SELECT Id, Name, Alias, Image, ShortDescriptions, Activated, Content, CategoryId, HomePage
    FROM Posts
    WHERE Id = pId
    LIMIT 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPostDetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getPostDetail`(IN pAlias TINYTEXT)
BEGIN
    SELECT Name, Alias, Image, ShortDescriptions, CreateDate, Content
    FROM Posts
    WHERE Alias = pAlias COLLATE utf8_general_ci
    LIMIT 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPostForFooter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getPostForFooter`()
BEGIN
    SELECT p.Name, p.Alias
    FROM Posts p
    INNER JOIN Categorys c ON p.CategoryId = c.Id
    AND c.News = 1 AND p.Activated = 1
    LIMIT 3;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPostForHome` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getPostForHome`()
BEGIN
    SELECT p.Name, p.Alias, p.Image, p.ShortDescriptions, p.CreateDate
    FROM Posts p
    INNER JOIN Categorys c ON p.CategoryId = c.Id
    WHERE c.News = 1 AND  p.Activated = 1 AND p.HomePage = 1
    ORDER BY CreateDate DESC
    LIMIT 3;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getSlideById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getSlideById`(IN pId INT)
BEGIN
    SELECT Id, Name, Alias, Image, ButtonViewer, LinkViewer, Activated
    FROM Slides
    WHERE  Id = pId
    LIMIT 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getUserByUserName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getUserByUserName`(IN pUserName VARCHAR(25))
BEGIN 
    SELECT UserName, Password, FullName, Activated
    FROM Users
    WHERE UserName = pUserName COLLATE utf8_unicode_ci
    LIMIT 1;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertCategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertCategory`(IN pName TINYTEXT CHAR SET utf8, IN pAlias TINYTEXT CHAR SET utf8, IN pImage TINYTEXT CHAR SET utf8,
                                IN pActivated TINYINT(1), IN pDescriptions TINYTEXT CHAR SET utf8, IN pClassType TINYINT(1),
                                IN pContent TEXT, IN pOrders INT)
BEGIN
    INSERT INTO Categorys (Name, Alias, Image, Activated, Descriptions, Content, ClassType, Orders)
    VALUES (pName, pAlias, pImage, pActivated, pDescriptions, pContent, pClassType, pOrders);
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertCourse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertCourse`(IN pName TINYTEXT CHAR SET utf8, IN pAlias TINYTEXT  CHAR SET utf8, IN pImage TINYTEXT  CHAR SET utf8,
IN pStatus TINYTEXT CHAR SET utf8, IN pShortDescriptions TINYTEXT CHAR SET utf8, IN pActivated TINYINT(1),
IN pContent LONGTEXT CHAR SET utf8, IN pPrice INT)
BEGIN
    INSERT INTO Courses (Name, Alias, Image, Status, ShortDesciptions, Content, Activated, Price)
    VALUES (pName, pAlias, pImage, pStatus, pShortDescriptions, pContent, pActivated, pPrice);
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertFeedback` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertFeedback`(
    IN pFullName TINYTEXT CHAR SET utf8,
    IN pAvatar TINYTEXT,
    IN pContent TEXT CHAR SET utf8,
    IN pCourseId INT
  )
BEGIN
    INSERT INTO Feedbacks (FullName, Avatar, Content, CreateDate, CourseId)
    VALUES (pFullName, pAvatar, pContent, NOW(), pCourseId);
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertImage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertImage`(IN pName TINYTEXT CHAR SET utf8, IN pImage TINYTEXT  CHAR SET utf8, 
IN pGallery BIT, IN pCustomer BIT)
BEGIN 
    INSERT INTO Images(Name, Image, Customer, Gallery) VALUES (pName, pImage, pCustomer, pGallery);
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertPost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertPost`(IN pName TINYTEXT CHAR SET utf8, IN pAlias TINYTEXT CHAR SET utf8,
IN pImage TINYTEXT CHAR SET utf8, IN pShortDescriptions TINYTEXT CHAR SET utf8, IN pCategoryId INT,
IN pContent LONGTEXT  CHAR SET utf8, IN pActivated BIT, IN pHomePage BIT, IN pCreateDate DATETIME)
BEGIN 
    INSERT INTO Posts(Name, Alias, Image, ShortDescriptions, Content, Activated, CategoryId, CreateDate, HomePage)
      VALUES (pName, pAlias, pImage, pShortDescriptions, pContent, pActivated, pCategoryId, pCreateDate, pHomePage);
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertSlide` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertSlide`(IN pName TINYTEXT CHAR SET utf8, IN pAlias TINYTEXT CHAR SET utf8,
IN pImage TINYTEXT CHAR SET utf8, IN pButtonViewer BIT, IN pLinkViewer TINYTEXT CHAR SET utf8, IN pActivated BIT)
BEGIN
    INSERT INTO Slides (Name, Alias, Image, ButtonViewer, LinkViewer, Activated)
    VALUES (pName, pAlias, pImage, pButtonViewer, pLinkViewer, pActivated);
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertUser`(IN pUserName VARCHAR(25), IN pPassword TINYTEXT, IN pFullName TINYTEXT CHAR SET utf8,
IN pActivated BIT)
BEGIN 
    INSERT INTO Users(UserName, Password, FullName, Activated)
      VALUES (pUserName, pPassword, pFullName, pActivated);
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `login`(IN pUserName VARCHAR(255), IN pPassword TINYTEXT)
BEGIN 
    DECLARE _find INT;
    SET _find = (SELECT count(UserName) FROM Users WHERE UserName = pUserName COLLATE utf8_unicode_ci AND Password = pPassword COLLATE utf8_unicode_ci LIMIT 1);
    IF _find = 0 THEN 
      SELECT 0;
    ELSE 
      SELECT 1;
    END IF;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateCategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateCategory`(IN pId INT, IN pName TINYTEXT CHAR SET utf8, IN pAlias TINYTEXT CHAR SET utf8, IN pImage TINYTEXT CHAR SET utf8,
                                IN pActivated TINYINT(1), IN pDescriptions TINYTEXT CHAR SET utf8, IN pClassType TINYINT(1),
                                IN pContent TEXT, IN pOrders INT)
BEGIN
    UPDATE Categorys
    SET Name = pName, Alias = pAlias, Image = pImage, Activated = pActivated, Descriptions = pDescriptions,
        ClassType = pClassType, Content = pContent, Orders = pOrders
    WHERE Id = pId;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateCompany` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateCompany`(IN pName    TINYTEXT CHAR SET utf8, IN pAddress TINYTEXT CHAR SET utf8,
  IN pPhone TINYTEXT CHAR SET utf8, IN pHotline TINYTEXT CHAR SET utf8, IN pEmail   TINYTEXT CHAR SET utf8, 
  IN pTaxCode TINYTEXT CHAR SET utf8, IN pFacebook TINYTEXT CHAR SET utf8, IN pGoogle TINYTEXT CHAR SET utf8,
  IN pTweeter TINYTEXT CHAR SET utf8, IN pDescription TEXT CHAR SET utf8, IN pAbout LONGTEXT CHAR SET utf8)
BEGIN 
    UPDATE Company
    SET Name = pName, Address = pAddress, Phone = pPhone, Hotline = pHotline, Email = pEmail,
        TaxCode = pTaxCode, Facebook = pFacebook, Google = pGoogle, Tweeter = pTweeter,
        Description = pDescription, About = pAbout;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateCourse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateCourse`(IN pId INT, IN pName TINYTEXT CHAR SET utf8, IN pAlias TINYTEXT  CHAR SET utf8, IN pImage TINYTEXT  CHAR SET utf8,
IN pStatus TINYTEXT CHAR SET utf8, IN pShortDescriptions TINYTEXT CHAR SET utf8, IN pActivated TINYINT(1),
IN pContent LONGTEXT CHAR SET utf8, IN pPrice INT)
BEGIN
    UPDATE Courses
    SET Name = pName, Alias = pAlias, Image = pImage, Status = pStatus, ShortDesciptions = pShortDescriptions,
        Activated = pActivated, Content = pContent, Price = pPrice
    WHERE Id = pId;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateFeedback` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateFeedback`(
    IN pId INT,
    IN pFullName TINYTEXT CHAR SET utf8,
    IN pAvatar TINYTEXT,
    IN pContent TEXT CHAR SET utf8,
    IN pCourseId INT
  )
BEGIN
    UPDATE Feedbacks
    SET FullName = pFullName, Avatar = pAvatar, Content = pContent, CourseId = pCourseId
    WHERE Id = pId;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateImage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateImage`(IN pId INT, IN pName TINYTEXT CHAR SET utf8, IN pImage TINYTEXT  CHAR SET utf8,
IN pGallery BIT, IN pCustomer BIT)
BEGIN 
    UPDATE Images
      SET Name = pName, Image = pImage, Customer = pCustomer, Gallery = pGallery
    WHERE Id = pId;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updatePost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatePost`(IN pId INT, IN pName TINYTEXT CHAR SET utf8, IN pAlias TINYTEXT CHAR SET utf8,
IN pImage TINYTEXT CHAR SET utf8, IN pShortDescriptions TINYTEXT CHAR SET utf8, IN pCategoryId INT,
IN pContent LONGTEXT  CHAR SET utf8, IN pActivated BIT, IN pHomePage BIT, IN pCreateDate DATETIME)
BEGIN 
    UPDATE Posts
      SET Name = pName, Alias = pAlias, Image = pImage, ShortDescriptions = pShortDescriptions,
          CategoryId = pCategoryId, Content = pContent, Activated = pActivated, HomePage = pHomePage, CreateDate = pCreateDate
    WHERE Id = pId;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateSlide` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateSlide`(IN pId INT, IN pName TINYTEXT CHAR SET utf8, IN pAlias TINYTEXT CHAR SET utf8,
IN pImage TINYTEXT CHAR SET utf8, IN pButtonViewer BIT, IN pLinkViewer TINYTEXT CHAR SET utf8, IN pActivated BIT)
BEGIN 
    UPDATE Slides
      SET Name = pName, Alias = pAlias, Image = pImage, ButtonViewer = pButtonViewer, LinkViewer = pLinkViewer,
        Activated = pActivated
    WHERE Id = pId;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateUser`(IN pUserName VARCHAR(25), IN pPassword TINYTEXT, IN pFullName TINYTEXT, IN pActivated BIT)
BEGIN
    UPDATE Users
      SET Password = pPassword, FullName = pFullName, Activated = pActivated
    WHERE UserName = pUserName COLLATE utf8_unicode_ci;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-11  4:00:20
