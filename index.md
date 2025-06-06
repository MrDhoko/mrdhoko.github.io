---
layout: default
title: Bienvenido a ITconSeguridad
---
<div class="grid-section" style="display: flex; flex-direction: column; align-items: center; justify-content: center; text-align: center; padding: 4rem 1rem;">
  <h2 style="font-size: 2rem; margin-bottom: 1rem;">Últimos Posts</h2>

  <ul style="list-style: none; padding: 0; max-width: 600px; width: 100%;">
    {% for post in site.posts limit:6 %}
      <li style="margin-bottom: 0.8rem;">
        <a href="{{ post.url }}" style="color: #58ffb0; text-decoration: none;">
          {{ post.title }}
        </a>
        <br>
        <small style="color: #8b949e;">{{ post.date | date: "%d-%m-%Y" }}</small>
      </li>
    {% endfor %}
  </ul>

  <p style="margin-top: 2rem;">
    <a href="/posts" style="color: #58ffb0; font-weight: bold;">Ver todos los posts →</a>
  </p>
</div>

<div class="grid-section">
  <h2 style="text-align: center;">CTFs Recientes</h2>
  <ul style="display: flex; flex-direction: column; align-items: center; list-style: none; padding: 0;">
    {% assign ctf_posts = site.posts | where_exp:"post", "post.categories contains 'ctf'" %}
    {% for post in ctf_posts limit:3 %}
      <li style="margin: 0.5rem 0;">
        <a href="{{ post.url }}" style="color: #58ffb0; text-decoration: none;">{{ post.title }}</a>
        <small style="color: #8b949e;">{{ post.date | date: "%d-%m-%Y" }}</small>
      </li>
    {% endfor %}
  </ul>
  <p style="text-align: center; margin-top: 1rem;">
    <a href="/ctfs" style="color: #58ffb0; text-decoration: underline;">Ver todos los CTFs →</a>
  </p>
</div>

<div class="grid-section">
  <h2 style="text-align: center;">Aprendiendo Linux</h2>
  <ul style="display: flex; flex-direction: column; align-items: center; list-style: none; padding: 0;">
    {% assign linux_posts = site.posts | where_exp:"post", "post.categories contains 'linux'" %}
    {% for post in linux_posts limit:3 %}
      <li style="margin: 0.5rem 0;">
        <a href="{{ post.url }}" style="color: #58ffb0; text-decoration: none;">{{ post.title }}</a>
        <small style="color: #8b949e;">{{ post.date | date: "%d-%m-%Y" }}</small>
      </li>
    {% endfor %}
  </ul>
  <p style="text-align: center; margin-top: 1rem;">
    <a href="/linux" style="color: #58ffb0; text-decoration: underline;">Ver contenido de Linux →</a>
  </p>
</div>
