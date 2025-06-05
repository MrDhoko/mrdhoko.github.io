---
layout: default
title: Bienvenido a ITconSeguridad
---
<div class="grid-section">
 <h2>Últimos Posts</h2>

 <ul>
  {% for post in site.posts limit:6 %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a> -
      <small>{{ post.date | date: "%d-%m-%Y" }}</small>
    </li>
  {% endfor %}
 </ul>
 <p style="text-align: center; margin-top: 2rem;">
    <a href="/posts" style="color: #58ffb0; text-decoration: underline;">Ver todos los posts →</a>
  </p>
</div>

## CTFs
{% assign ctfs = site.posts | where_exp:"post", "post.categories contains 'CTF'" %}
<ul>
  {% for post in ctfs limit:3 %}
    <li><a href="{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>

## Herramientas
{% assign tools = site.posts | where_exp:"post", "post.categories contains 'Herramientas'" %}
<ul>
  {% for post in tools limit:2 %}
    <li><a href="{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>
