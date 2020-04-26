---
layout: page
title: Countries
---

{% include graph_notes.md %}

<ul>
{% for graph in site.data.countries %}
  <li><a href="#{{ graph.anchor }}">{{ graph.anchor }}</a></li>
{% endfor %}
</ul>
<hr>

{% for graph in site.data.countries %}
  <h1 id="{{ graph.anchor }}">{{ graph.title }}</h1>
  <img src="{{ graph.url }}" />
{% endfor %}
