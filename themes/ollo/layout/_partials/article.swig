<article class="post">

  <header class="post_meta">
    <h3 class="post_title"><a href="{{ url_for(item.path) }}">{{item.title}}</a></h3>
    <p class="light post_date">{{ item.date | date('M d, Y') }}</p>
  </header>

  <div class="post_content">
    {{ item.content }}
  </div>

  {% if item.tags && item.tags.length %}
    <div class="post_tags">
    <p><strong>tagged:</strong></p>
    {% for tag in item.tags %}
      <a href="{{ url_for(tag.path ) }}" class="tag tag-{{loop.index}}">{{ tag.name }}</a>
    {% endfor %}
    </div>
  {% endif %}

</article>
