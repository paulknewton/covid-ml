---
layout: page
title: Cumulative Statistics
---

<hr>

{% for graph in site.data.totals %}
  <h1 id="h1">{{ graph.title }}</h1>
  <img src="{{ graph.url }}" />
{% endfor %}
