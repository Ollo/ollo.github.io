{% include '_partials/head.swig' %}

<body>
  <section>
    <header class="intro">
      <h1><a href="{{ config.root }}">{{ config.title }}</a></h1>
      <div class="social">
        <a href="https://twitter.com/ollomedia" target="_blank">{ twitter }</a>
        <a href="https://github.com/Ollo" target="_blank">{ github }</a>
        <a href="https://www.linkedin.com/in/ollomedia" target="_blank">{ linkedIn }</a>
      </div>
    </header>
  </section>
  <main>
    {% block primary %}{% endblock %}
  </main>
</body>
</html>
