@import static de.tschuehly.easy.spring.auth.web.layout.LayoutComponent.CLOSE_MODAL_EVENT
@import static de.tschuehly.easy.spring.auth.web.layout.LayoutComponent.MODAL_CONTAINER_ID
@import static de.tschuehly.easy.spring.auth.web.layout.LayoutComponent.TOAST_CONTAINER_ID
@import de.tschuehly.easy.spring.auth.web.layout.LayoutComponent.LayoutContext
@param LayoutContext layoutContext
<html lang="en">

<head>
    <title>Easy Spring Auth</title>
    <link rel="stylesheet" href="/css/sakura.css" type="text/css">
    <script src="/htmx_1.9.11.js"></script>
    <script src="/htmx_debug.js"></script>
    <script src="http://localhost:35729/livereload.js"></script>
    <script src="https://unpkg.com/htmx.org@1.9.11/dist/ext/sse.js"></script>
</head>
<body hx-ext="debug">
<nav>
    <h2>
        Easy Spring Auth
    </h2>
    @for(var nav: layoutContext.navigationItemList())
        <a href="${nav.URI()}">${nav.displayName()}</a>
    @endfor
    <a href="https://tschuehly.gitbook.io/server-side-spring-htmx-workshop">Workshop</a>
    <a href="https://github.com/tschuehly/htmx-spring-workshop">GitHub Repository</a>
    <hr>
</nav>
<blockquote>
    <p>Spring is typically only used for JSON API backend development, while the web frontend is built with a JavaScript
        framework.
        <br>
        htmx enables us to create interactive web applications with server-side rendered templates without
        JavaScript.
        <br>
        In my <a href="https://tschuehly.gitbook.io/server-side-spring-htmx-workshop">workshop</a>, you will learn to
        use patterns you know and love from building backends to create the dynamic full-stack application you see here.
    </p>
</blockquote>
<main>
    ${layoutContext.content()}
</main>
</body>
<div id="${MODAL_CONTAINER_ID}" hx-on:$unsafe{CLOSE_MODAL_EVENT}="this.innerHTML = null">

</div>
<div id="${TOAST_CONTAINER_ID}">

</div>

</html>
