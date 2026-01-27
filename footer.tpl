    </div>
  </div>
<div class="footer">
                <div class="footer-container">
                    <div class="col">
                        <h1>About Us</h1>
                        <div class="footer-line"></div>
                        <p>
    						Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. 
    					</p>
                    </div>
                    <div class="col" id="copywriting">
                       <img class="footer-img" src="{$LOGO_IMAGE}">
                       <div class="social-media">
                           <ul class="footer-menu">
                              <li><a href="#" target="_blank"><i class="fab fa-twitter hvr-bounce-in"></i></a></li>
                              <li><a href="#" target="_blank"><i class="fab fa-instagram hvr-bounce-in"></i></a></li>
                              <li><a href="#" target="_blank"><i class="fab fa-discord hvr-bounce-in"></i></a></li>
                              <li><i class="fas fa-ellipsis-h"></i></li>
                              <li><a href="#" target="_blank"><i class="fab fa-youtube hvr-bounce-in"></i></a></li>
                           </ul>
                       </div></div>
                    <div class="col">
                        <h1>Visit Our Store</h1>
                        <div class="footer-line"></div>
    					<p>
    						Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
    					<br><a href="/" class="btn btn-primary">Visit Store</a>
    					</p>
                    </div>
                </div>

<div class="container">
	<div class="cyvers-cp p-body-inner" id="mobile-hide">
			<p>
				© 2021 <b>{$smarty.const.SITE_NAME}</b> INC. ALL RIGHTS RESERVED.
			</p>
			<div class="f-right">
				<a href="https://ipolotech.com"><img src="https://i.imgur.com/rSVMwVL.png" alt="Ipolotech copyright"></a>
			</div>
		</div>
  		</div>
</div>

  {if isset($GLOBAL_WARNING_TITLE)}    <div class="ui medium modal" id="modal-acknowledge">      <div class="header">        {$GLOBAL_WARNING_TITLE}      </div>      <div class="content">        {$GLOBAL_WARNING_REASON}      </div>      <div class="actions">        <a class="ui positive button" href="{$GLOBAL_WARNING_ACKNOWLEDGE_LINK}">{$GLOBAL_WARNING_ACKNOWLEDGE}</a>      </div>    </div>  {/if}  {foreach from=$TEMPLATE_JS item=script}    {$script}  {/foreach}  {if isset($GLOBAL_WARNING_TITLE)}    <script type="text/javascript">      $('#modal-acknowledge').modal({ closable: false }).modal('show');    </script>  {/if}  {if isset($LOGGED_IN_USER)}    <script type="text/javascript">      function toggleDarkLightMode() {        $.post("{$DARK_LIGHT_MODE_ACTION}", { token: "{$DARK_LIGHT_MODE_TOKEN}" })          .done(function() {            window.location.reload();          });        return false;      }    </script>  {/if}  {if isset($NEW_UPDATE) && ($NEW_UPDATE_URGENT != true)}    <script src="{$TEMPLATE.path}/js/core/update.js"></script>  {/if}{if !isset($EXCLUDE_END_BODY)}
  
</body>

</html>
{/if}