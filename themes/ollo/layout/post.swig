{% extends '_layout.swig' %}

{% block primary %}
  <section class="posts wrapper">
    {% set pipe = {item: page, index: false} %}
    {% include '_partials/article.swig' with pipe %}
  </section>
{% endblock %}
