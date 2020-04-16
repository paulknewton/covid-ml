---
layout: page
title: COVID-19 Growth
---
<hr>

{% for graph in site.data.rates %}
  <h1 id="h1">{{ graph.title }}</h1>
  <img src="{{ graph.url }}" />
{% endfor %}
