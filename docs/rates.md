---
layout: page
title: COVID-19 Growth
---

{% include graph_notes.md %}

{% for graph in site.data.rates %}
  <h1 id="h1">{{ graph.title }}</h1>
  <img src="{{ graph.url }}" />
  <p>{% capture my_include %}{% include_relative {{ graph.notes }} %}{% endcapture %}{{ my_include | markdownify }}</p>
{% endfor %}
