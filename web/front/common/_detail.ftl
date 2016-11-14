<#macro detail detail action>
<div id="news_contents">
    <#list detail.list as item>
        <li>
            <a href="/news/${item.id}">
                <#if item.top == 1><span style="color: red">[顶]</span></#if>${item.title}
            </a> ${item.createtime}
        </li>
    </#list>
</div>
    <#if detail.totalPage gt 0>
    <div class="manu">共 <b>${detail.totalRow}</b> 条,&nbsp;&nbsp;<b>${detail.pageNumber}</b> 页&nbsp;
        <#if detail.pageNumber != 1>
            <a href="/${action}page=1" title="首页">«</a>
            <a href="/${action}page=${detail.pageNumber - 1}" title="上一页">上一页</a>
        </#if>

        <#list 1..detail.totalPage as page>
            <#if page == detail.pageNumber>
                <a class="current">${page}</a>
            <#else >
                <a href="/${action}page=${page}">${page}</a>
            </#if>
        </#list>
        <#if detail.pageNumber != 1>

        </#if>
        <#if detail.pageNumber != detail.totalPage>
            <a href="/${action}page=${detail.pageNumber + 1}" title="下一页">下一页</a>
            <a href="/${action}page=${detail.totalPage}" title="最后一页">»</a>
        </#if>

    </div>
    <#else >
    <div id="news_contents">
        <h2>没有可显示的内容</h2>
    </div>
    </#if>
</#macro>