{% include '_partials/head.swig' %}

<body>
  <section>
    <header class="masthead">
      <h1 class="title"><a href="{{ config.root }}">{{ config.title }}</a></h1>
      <div class="social">
        <a href="https://twitter.com/ollomedia" title="twitter" target="_blank">{ t<span>witter</span> }</a>
        <a href="https://github.com/Ollo" title="github" target="_blank">{ g<span>ithub</span> }</a>
        <a href="https://www.linkedin.com/in/ollomedia" title="linkedin" target="_blank">{ l<span>inkedIn</span> }</a>
      </div>
    </header>
  </section>
  <main>
    {% block primary %}{% endblock %}
  </main>
</body>
</html>
