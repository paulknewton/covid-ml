---
layout: page
title: Cumulative Statistics
---

{% include graph_notes.md %}

{% for graph in site.data.totals %}
  <h1 id="{{ graph.title }}">{{ graph.title }}</h1>
  <img src="{{ graph.url }}" />
  <p>{% capture my_include %}{% include_relative {{ graph.notes }} %}{% endcapture %}{{ my_include | markdownify }}</p>
{% endfor %}
