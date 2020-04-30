---
layout: page
title: Countries
---

{% include graph_notes.md %}

<ul>
{% for country in site.data.countries %}
  <li><a href="#{{ country.country }}">{{ country.country }}</a></li>
{% endfor %}
</ul>
<hr>

{% for graph in site.data.country_graphs %}
  <h1 id="{{ graph.country }}">{{ graph.title }}</h1>
  <img src="{{ graph.url }}" />
{% endfor %}
