<%--
  Created by IntelliJ IDEA.
  User: xenon
  Date: 12/29/10
  Time: 1:11 AM
  To change this template use File | Settings | File Templates.
--%>
<!-- Begin Modules Block 2 -->
<div class="main-content block2">
  <div class="block-surround">
    <div class="block-surround2">
      <div class="block-surround3">
        <div class="block-surround4">
          <div id="bottommodules2" class="spacer w33">
            <div class="block">
              <div class="module">
                <div>
                  <div>
                    <div>
                      <h3>Сүүлд нэмэгдсэн үгс</h3>

                      <ul class="bullet-1">
                        <g:each in="${lastAddedRoot}" status="i" var="rootword">
                            <li><g:link controller="rootWord" action="show" params="[id: rootword.id ]">${fieldValue(bean: rootword, field: "word")}</g:link></li>
                        </g:each>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>

            </div>

            <div class="block">
              <div class="module">
                <div>
                  <div>
                    <div>

                      <ul class="bullet-1">
                        <g:each in="${lastUpdated}" status="i" var="lUpdated">
                            <li><g:link controller="rootWord" action="show" params="[id: lUpdated.id ]">${fieldValue(bean: lUpdated, field: "word")}</g:link></li>
                        </g:each>

                      </ul>
                      <ul class="bullet-1">

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
                      <ul class="bullet-1">
                        <li><a href="footer.gsp#">Chicago Under Attack &mdash; by Blackbirds</a></li>
                        <li><a href="footer.gsp#">Earning Our Pride</a></li>
                      </ul>
                      <ul class="bullet-1">
                        <li><a href="footer.gsp#">TV Dragon in &pound;310M Giveaway</a></li>
                        <li><a href="footer.gsp#">Gloucester Principal Stands by Story</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- End Modules Block 2 -->
