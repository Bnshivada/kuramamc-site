{include file='header.tpl'} 
{include file='navbar.tpl'}
    <div class="ui grid">
    <div class="ui sixteen wide mobile twelve wide tablet twelve wide computer column">
        <div class="ui segments">
            <div class="ui segment header">
                <div class="ui breadcrumb">
                {if $PAGE_RESULT == 0}
                    <a href="{$WIKI_HOME_LINK}" class="section">{$WIKI}</a>
                {elseif $PAGE_RESULT == 1}
                    {if $WP_TYPE}
                        <a href="{$WIKI_HOME_LINK}" class="section">{$WIKI}</a>
                        <div class="divider"> / </div>
                        <a href="../{$WP_CATID}" class="active section">{$WP_PARENT}</a>
                        <div class="divider"> / </div>
                        <a href="{$WP_NAMEID}" class="active section">{$WP_TITLE}</a>
                    {else}
                        <a href="{$WIKI_HOME_LINK}" class="section">{$WIKI}</a>
                        <div class="divider"> / </div>
                        <a href="{$WP_NAMEID}" class="active section">{$WP_TITLE}</a>
                    {/if}
                {elseif $PAGE_RESULT == 2}
                <a href="{$WIKI_HOME_LINK}" class="section">{$WIKI}</a>
                {/if} 
                </div>
            </div>
            <div class="ui segment context" style="padding: 28px">
                {if $PAGE_RESULT == 0}
                    {$HOME_PAGE_CONTEXT}
                {elseif $PAGE_RESULT == 1}
                    {$WP_CONTEXT}
                    <hr style ="margin-top: 1rem;
                        margin-bottom: 1rem;
                        border: 0;
                        border-top: 1px solid rgba(0,0,0,.1);">
                        <div class="ui left labeled button" tabindex="0">
                            <a class="ui basic label">
                                {$WP_VIEWS}
                            </a>
                            <div class="ui icon button">
                                <i class="fas fa-eye"></i>
                            </div>
                        </div>
                {elseif $PAGE_RESULT == 2}
                    {$WP_404_MESSAGE}
                {/if}
            </div>
        </div>
    </div>
    <div class="ui sixteen wide mobile four wide tablet four wide computer column">
        {include file='wiki/widgets/side-menu.tpl'}
    </div>  
</div>
{include file='footer.tpl'}
<script src="{$TEMPLATE.path}/js/wiki/scripts.js"></script>