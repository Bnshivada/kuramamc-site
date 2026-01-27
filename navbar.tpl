<div class="ui vertical inverted sidebar menu left" id="toc">
  <div class="item">
    <h3>{$SITE_NAME}</h3>
  </div>
  {foreach from=$NAV_LINKS key=name item=item}
    {if isset($item.items)}
      <div class="item">
        <div class="header">{$item.title} <span class="icon">{$item.icon}</span></div>
        <div class="menu">
          {foreach from=$item.items item=dropdown}
            <a class="item" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon} {$dropdown.title}</a>
          {/foreach}
        </div>
      </div>
    {else}
      <a class="item{if isset($item.active)} active{/if}" href="{$item.link}" target="{$item.target}">{$item.icon} {$item.title}</a>
    {/if}
  {/foreach}
</div>
<div class="cyvers-header">
    <div id="particles-js"></div>
    <div class="header-menu">
            <div class="dd-bg" onclick="closeMobile()"></div>
        <div class="modal" id="popup-modal" tabindex="-1" role="dialog"></div>
                    <div class="dd-mobile">
                        <li>   
                            <a href="javascript:void(0)" onclick="openMobile()">
                                <i class="fas fa-bars"></i><span> Menu</span>
                            </a>
                        </li>
                    </div>
            <ul id="cyvers-menu" class="">
                                        <div class="dd-close">
                            <a href="javascript:void(0)" onclick="closeMobile()"><i class="fas fa-times"></i> close</a>
                        </div>
                <li class="menu-link hvr-sweep-to-top"><a id="home" href="#">Home</a></li>
                <li class="menu-link hvr-sweep-to-top"><a id="forum" href="#">Forums</a></li>
                <li class="menu-link store" id="store-hover"><a id="store" href="#">Store</a></li>
                <li class="menu-link hvr-sweep-to-top"><a id="bans" href="#">Bans</a></li>
                <li>
                {foreach from=$NAV_LINKS key=name item=item}
          {if isset($item.items)}
            <div class="ui pointing dropdown link item">
              <span class="text">{$item.icon} {$item.title}</span> <i class="dropdown icon"></i>
              <div class="menu">
                <div class="header">{$item.title}</div>
                {foreach from=$item.items item=dropdown}
                  {if isset($dropdown.separator)}
                    <div class="divider"></div>
                  {else}
                    <a class="item" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon} {$dropdown.title}</a>
                  {/if}
                {/foreach}
              </div>
            </div>
          {else}
            
          {/if}
        {/foreach}
                     </li> 
            </ul>
    </div>
    <div class="header-part">
            <div class="logo">
        <a href="/"><img class="pulse infinite animated" src="{$LOGO_IMAGE}"></a>
    </div>
    
     <div class="cyvers-count">
                    <div class="container">
        <div class="cyvers-mc ipCopy" data-clipboard-text="play.hypixel.net" onclick="serverjoin()">
            <i class="mdi mdi-minecraft"></i>
            <div class="count-info"><span id="cyvers-mc"></span> Players Online </div>
                <div class="cyvers-info">Click to copy IP</div>

</div>
    <div class="cyvers-discord">
        <a href="https://discord.gg" target="blank">
            <i class="mdi mdi-discord"></i>  
            <div class="count-info"><span id="cyvers-discord"></span> Players Online</div>
                <div class="cyvers-info">Join Our Discord</div>
    
                    </a>
              </div>
       </div>
    
    </div>
    
    
    
</div></div>
<div class="pusher">
  <div id="wrapper">
        
    <div class="ui secondary {$DEFAULT_REVAMP_NAVBAR_EXTRA_CLASSES} small menu" id="navbar">
      <div class="ui container">
        {foreach from=$NAV_LINKS key=name item=item}
          {if isset($item.items)}
            <div class="ui pointing dropdown link item">
              <span class="text">{$item.icon} {$item.title}</span> <i class="dropdown icon"></i>
              <div class="menu">
                <div class="header">{$item.title}</div>
                {foreach from=$item.items item=dropdown}
                  {if isset($dropdown.separator)}
                    <div class="divider"></div>
                  {else}
                    <a class="item" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon} {$dropdown.title}</a>
                  {/if}
                {/foreach}
              </div>
            </div>
          {else}
            <a class="item{if isset($item.active)} active{/if}" href="{$item.link}" target="{$item.target}">{$item.icon} {$item.title}</a>
          {/if}
        {/foreach}
        <a class="toc item">
          <i class="sidebar icon"></i>
        </a>
        
      </div>
    </div>

    
    
  <div class="ui container">
  <div class="sub-header">
   <div class="announce"><i class="mdi mdi-information-outline"></i><span>Your text can be here!</span></div>
  <div class="right menu">
          {foreach from=$USER_SECTION key=name item=item}
            {if isset($item.items)}
              {if ($name == "account")}
                <a class="ui medium image label" data-toggle="popup" data-position="bottom right" id="button-{$name}">{$item.icon} {$item.title}</a>
              {else}
                <a class="ui small default icon button" data-toggle="popup" data-position="bottom right" id="button-{$name}">{$item.icon}</a>
              {/if}
              <div class="ui wide basic popup">
                <h4 class="ui header">{$item.title}</h4>
                <div class="ui relaxed link list" id="list-{$name}">
                  {foreach from=$item.items item=dropdown}
                    {if isset($dropdown.separator)}
                      <div class="ui divider"></div>
                    {else}
                      <a class="item" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon} {$dropdown.title}</a>
                    {/if}
                  {/foreach}
                </div>
                {if !empty($item.meta)}
                  <div class="ui link list">
                    <div class="ui divider"></div>
                    <a class="item" href="{$item.link}">{$item.meta}</a>
                  </div>
                {/if}
              </div>
            {else}
              {if ($name == "panel")}
                <a class="ui small primary icon button" href="{$item.link}" target="{$item.target}">{$item.icon}</a>
              {elseif ($name == "register")}
                <a class="ui small primary button" href="{$item.link}" target="{$item.target}">{$item.title}</a>
              {else}
                <a class="ui small default button" href="{$item.link}" target="{$item.target}">{$item.title}</a>
              {/if}
            {/if}
          {/foreach}
        </div>
        </div>

    {if isset($NEW_UPDATE)}
      {if $NEW_UPDATE_URGENT eq true}
        <div class="ui negative icon message" id="update-message">
      {else}
        <div class="ui info icon message" id="update-message">
          <i class="close icon"></i>
      {/if}
      <a href="{$UPDATE_LINK}">
        <i class="download icon"></i>
      </a>
        <div class="content">
          <div class="header">{$NEW_UPDATE}</div>
          <ul class="list">
            <li>{$CURRENT_VERSION}</li>
            <li>{$NEW_VERSION}</li>
          </ul>
        </div>
      </div>
    {/if}

    {if !empty($ANNOUNCEMENTS)}
      {foreach from=$ANNOUNCEMENTS item=$ANNOUNCEMENT}
        <div class="ui icon message announcement" id="announcement-{$ANNOUNCEMENT->id}" style="background-color:{$ANNOUNCEMENT->background_colour}; color:{$ANNOUNCEMENT->text_colour}">
          {if $ANNOUNCEMENT->closable}<i class="close icon"></i>{/if}
          {if isset($ANNOUNCEMENT->icon)}
           <i class="{$ANNOUNCEMENT->icon}"></i>
          {/if}
          <div class="content">
            <div class="header">{$ANNOUNCEMENT->header}</div>
            <p>{$ANNOUNCEMENT->message|htmlspecialchars_decode}</p>
          </div>
        </div>
      {/foreach}
    {/if}

    {if isset($MUST_VALIDATE_ACCOUNT)}
      <div class="ui message">
        {$MUST_VALIDATE_ACCOUNT}
      </div>
    {/if}
