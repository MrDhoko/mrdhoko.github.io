---
layout: default
title: Todos los Posts
---

# Todos los Posts

<div class="grid-section">
  <ul>
    {% for post in site.posts %}
      <li>
        <a href="{{ post.url }}">{{ post.title }}</a>
        <br>
        <small>{{ post.date | date: "%d-%m-%Y" }}</small>
      </li>
    {% endfor %}
  </ul>
</div>
