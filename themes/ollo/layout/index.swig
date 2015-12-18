{% extends '_layout.swig' %}

{% block primary %}
  <section class="posts wrapper">
    {% for post in page.posts %}
      {% set pipe = {item: post, index: true} %}
      {% include '_partials/article.swig' with pipe %}
    {% endfor %}

    {% include '_partials/pagination.swig' %}
  </section>
{% endblock %}
