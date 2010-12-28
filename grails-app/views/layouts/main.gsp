<!DOCTYPE html>
<html>
<head>
  <title><g:layoutTitle default="Grails"/></title>
  <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}"/>
  <link rel="stylesheet" href="${resource(dir: 'css', file: 'template_css.css')}"/>
  <link rel="stylesheet" href="${resource(dir: 'css', file: 'blue.css')}"/>
  <style type="text/css">
  div.wrapper {
    margin: 0 auto;
    width: 962px;
    padding: 0;
  }

  #left-column {
    width: 0px;
    padding: 0;
  }

  #right-column {
    width: 320px;
    padding: 0;
  }

  #center-column {
    margin-left: 0px;
    margin-right: 320px;
    padding: 0;
  }
  </style>
  <script type="text/javascript" src="${resource(dir: 'js', file: 'mootools.js')}"></script>
  <script type="text/javascript" src="${resource(dir: 'js', file: 'caption.js')}"></script>
  <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon"/>
  <g:layoutHead/>
  <g:javascript library="application"/>
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
</head>
<body id="ff-default" class="f-default bc-blue iehandle">
<div id="page-bg">
  <!-- Begin Wrapper -->
  <div class="wrapper">
    <div class="shadow-left">

      <div class="shadow-right">
        <div class="main-page">
          <div class="main-page2">
            <div class="main-page3">
              <div class="main-page4">
                <!-- Begin Header -->
                <div id="header">
                  <a href="#" class="nounder"><img src="${resource(dir: 'images', file: 'blank.gif')}" border="0" alt="" id="logo"/></a>

                  <div id="searchmod">
                    <div class="moduletable">
                      <form action="index.php" method="post">

                        <div class="search">
                          <input name="searchword" id="mod_search_searchword" maxlength="20" alt="Search" class="inputbox" type="text" size="20" value="search..." onblur="if (this.value == '') this.value = 'search...';" onfocus="if (this.value == 'search...') this.value = '';"/></div>
                        <input type="hidden" name="task" value="search"/>
                        <input type="hidden" name="option" value="com_search"/>
                      </form></div>

                  </div>
                </div>
                <!-- End Header -->

                <!-- Begin Horizontal Menu -->
                <div id="horiz-menu" class="splitmenu">
                  <ul class="menutop">
                    <li id="current" class="parent blue active"><a href="#" class="topdaddy"><span>Нүүр</span></a></li>
                    <li class="parent blue"><a href="#" class="topdaddy"><span>Танилцуулга</span></a></li>
                    <li class="parent blue"><a href="#" class="topdaddy"><span>Хөгжүүлэгчдэд</span></a></li>
                    <li class="parent blue"><a href="#" class="topdaddy"><span>Ашиглах заавар</span></a></li>
                    <li class="parent blue"><a href="#" class="topdaddy"><span>Хэрэглэгчийн хэсэг</span></a></li>
                    <li class="parent blue"><a href="#" class="topdaddy"><span>Лиценз</span></a></li>
                  </ul></div>


                <!-- End Horizontal Menu -->
                <!-- Begin Showcase Area -->
                <div id="showcase">

                  <!-- Begin Main Content Area -->
                  <div id="main-section">
                    <div class="padding">
                      <div class="main-content block">

                        <!-- Begin Left Column -->
                        <!-- End Left Column -->
                        <!-- Begin Right Column -->
                        <div id="right-column">
                          <div class="padding">
                            <div id="rightmodules" class="spacer">
                            </div>

                            <div class="module">
                              <div>

                                <div>
                                  <div>

                                    <div align="center">test</div>
                                  </div>
                                </div>
                              </div>
                            </div>

                            <div class="module">
                              <div>
                                <div>
                                  <div>
                                    <h3>Who's Online</h3>
                                    We have&nbsp;8 guests&nbsp;online</div>
                                </div>

                              </div>
                            </div>

                            <div id="rightmodules2" class="spacer w49">
                              <div class="block">
                                <div class="module">
                                  <div>
                                    <div>
                                      <div>
                                        <h3>Podcasts</h3>

                                        <ul class="bullet-8" style="padding-left:0;margin-left:0;margin-bottom:0">
                                          <li><a href="#">NewsUpdate</a></li>
                                          <li><a href="#">Screening Room</a></li>
                                          <li><a href="#">ShowBiz Tonight</a></li>
                                          <li><a href="#">Show and Tell</a></li>
                                        </ul></div>
                                    </div>
                                  </div>
                                </div>

                              </div>
                              <div class="block">
                                <div class="module">
                                  <div>
                                    <div>
                                      <div>
                                        <h3>Blogs</h3>
                                        <ul class="bullet-6" style="padding-left:0;margin-left:0;margin-bottom:0">

                                          <li><a href="#">Business 360</a></li>
                                          <li><a href="#">In the Field</a></li>
                                          <li><a href="#">The Marquee</a></li>
                                          <li><a href="#">SciTech Blog</a></li>
                                        </ul></div>
                                    </div>
                                  </div>
                                </div>

                              </div>

                            </div>
                          </div>
                        </div>
                        <!-- End Right Column -->
                        <!-- Begin Center Column -->
                        <div id="center-column">
                          <div class="padding">
                            <g:layoutBody/>

                            <div id="mainmodules" class="spacer w33">
                              <div class="block">
                                <div class="module">

                                  <div>
                                    <div>
                                      <div>
                                        <h3>Travel Deals</h3>
                                        <img src="images/4_thumb.jpg" alt="image" align="left" style="margin-right:8px"/>Hendon Hall is a 16th Century mansion in North London and perfect for a relaxing break. Whilst secluded enough...</div>
                                    </div>
                                  </div>
                                </div>

                              </div>
                              <div class="block">
                                <div class="module">
                                  <div>
                                    <div>
                                      <div>
                                        <h3>Enviro-Watch</h3>
                                        <img src="images/4_thumb.jpg" alt="image" align="left" style="margin-right:8px"/>Food and Drug inspectors headed for farms in Florida and Mexico on Friday as new clues...</div>

                                    </div>
                                  </div>
                                </div>

                              </div>
                              <div class="block">
                                <div class="module">
                                  <div>
                                    <div>
                                      <div>

                                        <h3>Tech Update</h3>
                                        <img src="images/2_thumb.jpg" alt="image" align="left" style="margin-right:8px"/>Plans to use a state of the art camera onboard a satellite to monitor the deforestation levels in parts of Africa...</div>
                                    </div>
                                  </div>
                                </div>

                              </div>
                            </div>
                          </div>

                        </div>
                        <div class="clr"></div>
                        <!-- End Center Column -->
                      </div>

                      <g:include controller="search" action="lastword"></g:include>
                    </div>

                  </div>
                  <!-- End Main Content Area -->
                  <!-- Begin Footer -->
                  <div id="footer">
                    <div class="footer-left">
                      <div class="footer-right">

                        <div class="copyright">&copy; 2008-2012 TerranTribune Inc. All rights reserved.</div>

                      </div>
                    </div>
                  </div>
                  <!-- End Footer -->
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
      <div class="debug">

      </div>
    </div>
    <!-- End Wrapper -->
  </div>
</div>
</body>

</html>