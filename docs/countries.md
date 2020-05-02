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
{% if graph.new_section %}<hr><h1 id="{{ graph.country }}">{{ graph.country }}</h1>{% endif %}
<b>{{ graph.title }}</b><br><img src="{{ graph.url }}" />
{% endfor %}
