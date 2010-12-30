<!DOCTYPE html>
<html>
<head>
  <title><g:layoutTitle default="Мэдээлэл технологийн тайлбар толь"/></title>
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
  <link rel="stylesheet" type="text/css" href="http://extjs.cachefly.net/ext-3.3.1/resources/css/ext-all.css"/>
  <script type="text/javascript" src="http://extjs.cachefly.net/ext-3.3.1/adapter/ext/ext-base.js"></script>
  <script type="text/javascript" src="http://extjs.cachefly.net/ext-3.3.1/ext-all.js"></script>
</head>
<script type="text/javascript">
  Ext.onReady(function() {

    var ds = new Ext.data.Store({
      proxy: new Ext.data.HttpProxy({
        url: '<g:createLink controller="search" action="word"/>'
      }),
      reader: new Ext.data.JsonReader({
        root: 'results',
        totalProperty: 'total_count',
        id: 'word_id'
      }, [
        {name: 'word_id'},
        {name: 'name'},
        {name: 'description'}
      ])
    });

    // Custom rendering Template
    var resultTpl = new Ext.XTemplate(
            '<tpl for="."><div class="search-item">',
            '<h3>{name}</h3>',
            '{description}',
            '</div></tpl>'
            );

    var search = new Ext.form.ComboBox({
      store: ds,
      displayField:'name',
      typeAhead: false,
      loadingText: 'Searching...',
      width: 460,
      minChars:2,
      pageSize:10,
      hideTrigger:true,
      tpl: resultTpl,
      applyTo: 'esearch',
      itemSelector: 'div.search-item',
      onSelect: function(record) { // override default onSelect to do redirect
        window.location = String.format('<g:createLink controller="rootWord" action="show"/>?id={0}', record.data.word_id);
      }
    });
  });
</script>
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

                    <div style="width:490px;">
                      <div class="x-box-tl"><div class="x-box-tr"><div class="x-box-tc"></div></div></div>
                      <div class="x-box-ml"><div class="x-box-mr"><div class="x-box-mc">
                        <input type="text" size="20" name="search" id="esearch"/>
                        <div style="padding-top:4px;">
                          Шууд хайлт нь хамгийн багадаа 2 үсгээр хайна
                        </div>
                      </div></div></div>
                      <div class="x-box-bl"><div class="x-box-br"><div class="x-box-bc"></div></div></div>
                    </div>

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

                                    <div>
                                      <sec:ifLoggedIn>
                                        <sec:username/>
                                        <g:link controller="logout" action="index">Гарах</g:link>

                                      </sec:ifLoggedIn>
                                      <sec:ifNotLoggedIn>
                                        <g:link controller="openId" action="auth">Нэвтрэх</g:link>
                                      </sec:ifNotLoggedIn>
                                    </div>

                                  </div>
                                </div>
                              </div>
                            </div>
                            <div class="module">
                              <div>
                                <div>
                                  <div>
                                    <h3>Хэн нэвтэрсэн байна</h3>
                                    8 зочин&nbsp;холбогдсон байна</div>
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

                        <div class="copyright">&copy; 2011</div>

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