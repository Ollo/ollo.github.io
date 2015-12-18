<article class="post">
  <header class="post_meta">
    <h3 class="post_title"><a href="{{ url_for(item.path) }}">{{item.title}}</a></h3>
    <p class="light post_date">{{ item.date | date('M d, Y') }}</p>
  </header>
  <div>
    {{ item.content }}
  </div>
</article>
