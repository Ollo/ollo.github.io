{% include '_partials/head.swig' %}

<body>
  <section class="site-header">
    <header class="masthead">
      <h1 class="title"><a href="{{ config.root }}">{{ config.title }}</a></h1>
      <div class="social">
        <a href="https://twitter.com/ollomedia" title="twitter" target="_blank">{ T<span>witter</span> }</a>
        <a href="https://github.com/Ollo" title="github" target="_blank">{ G<span>ithub</span> }</a>
        <a href="https://www.linkedin.com/in/ollomedia" title="linkedin" target="_blank">{ L<span>inkedIn</span> }</a>
      </div>
    </header>
  </section>
  <main>
    {% block primary %}{% endblock %}
  </main>
  <script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
    ga('create', 'UA-6384815-4', 'auto');
    ga('send', 'pageview');
  </script>
</body>
</html>
