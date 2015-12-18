<nav class="pagination">
  {% if page.prev %}
    <a href="{{ url_for(page.prev_link) }}" class="pagination_prev">{{ __('prev') }}</a>
  {% endif %}
  {% if page.next %}
    <a href="{{ url_for(page.next_link) }}" class="pagination_next">{{ __('next') }}</a>
  {% endif %}
</nav>
