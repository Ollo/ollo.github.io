{% extends '_layout.swig' %}

{% block primary %}
  <section class="posts wrapper">
    {% set pipe = {item: page, index: false} %}
    {% include '_partials/article.swig' with pipe %}
  </section>

  <footer class="author wrapper">
    <figure class="bio">
      <img class="bio_avatar" src="/images/profile16.jpeg" />
      <figcaption class="bio_content">
        <h4>Thanks for reading...</h4>
        <p>I'm Joshua a front end developer from Boulder, CO that's smitten with sass and javascript and hates comic sans. When I'm not building web applications for startups I enjoy snowboarding, hiking, micro brews and playing video games.</p>
        <p>Have thoughts on this article?
          <a href="https://twitter.com/share" class="twitter-share-button" data-via="ollomedia" data-related="ollomedia">Tweet</a>
          <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');
          </script>
        </p>
      </figcaption>
    </figure>
  </footer>

{% endblock %}


