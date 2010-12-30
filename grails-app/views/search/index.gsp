<%--
  Created by IntelliJ IDEA.
  User: xenon
  Date: 12/29/10
  Time: 4:26 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
  <title>ComboBox - Live Search</title>
  <link rel="stylesheet" type="text/css" href="http://extjs.cachefly.net/ext-3.3.1/resources/css/ext-all.css"/>
  <script type="text/javascript" src="http://extjs.cachefly.net/ext-3.3.1/adapter/ext/ext-base.js"></script>
  <script type="text/javascript" src="http://extjs.cachefly.net/ext-3.3.1/ext-all.js"></script>

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
        width: 570,
        pageSize:10,
        hideTrigger:true,
        tpl: resultTpl,
        applyTo: 'search',
        itemSelector: 'div.search-item',
        onSelect: function(record) { // override default onSelect to do redirect
          window.location = String.format('http://extjs.com/forum/showthread.php?t={0}&p={1}', record.data.name, record.id);
        }
      });
    });
  </script>
  <link rel="stylesheet" type="text/css" href="combos.css"/>

  <style type="text/css">
  p {
    width: 650px;
  }
  </style>
</head>
<body>
%{--<script type="text/javascript" src="http://extjs.cachefly.net/ext-3.3.1/examples/shared/examples.js"></script><!-- EXAMPLES -->--}%

<div style="width:600px;">
  <div class="x-box-tl"><div class="x-box-tr"><div class="x-box-tc"></div></div></div>
  <div class="x-box-ml"><div class="x-box-mr"><div class="x-box-mc">
    <h3 style="margin-bottom:5px;">Хайх үгээ оруулна уу</h3>
    <input type="text" size="40" name="search" id="search"/>
    <div style="padding-top:4px;">
      Шууд хайлт нь хамгийн багадаа 2 үсгээр хайна
    </div>
  </div></div></div>
  <div class="x-box-bl"><div class="x-box-br"><div class="x-box-bc"></div></div></div>
</div>

</body>
</html>