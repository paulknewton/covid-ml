---
layout: default
title: Blog
---

# The Data Science and COVID-19 Blog

This blog discusses trends and patterns regarding the COVID-19 pandemic in terms of infection rates, etc.
Specific observations regarding the spread of the virus are illustrated with supporting graphs and statistics.

The blog also includes ongoing examples of how to use the freely available tools to perform your own analysis of COVID data.
These tutorials will allow you to employ Data Science techniques to analyse your own datasets.

The blog also includes news updates on changes to the website.

<div class="home">

  {%- if site.posts.size > 0 -%}
    <h2 class="post-list-heading">{{ page.list_title | default: "Posts" }}</h2>
    <ul class="post-list">
      {%- for post in site.posts -%}
      <li>
        {%- assign date_format = site.minima.date_format | default: "%b %-d, %Y" -%}
        <span class="post-meta">{{ post.date | date: date_format }}</span>
        <h3>
          <a class="post-link" href="{{ post.url | relative_url }}">
            {{ post.title | escape }}
          </a>
        </h3>
        {%- if site.show_excerpts -%}
          {{ post.excerpt }}
        {%- endif -%}
      </li>
      {%- endfor -%}
    </ul>

    <p class="rss-subscribe">subscribe <a href="{{ "/feed.xml" | relative_url }}">via RSS</a></p>
  {%- endif -%}

</div>
