---
layout: default
title: CTFs
permalink: /ctfs/
---

# Índice — Writeups de CTF

Aquí tienes un índice organizado por **plataforma** y por **categoría/dificultad**. Haz click en cualquier entrada para ir al writeup completo.

---

<!-- Sección HackTheBox -->
<details open>
<summary><strong>🛡️ HackTheBox</strong></summary>

{% assign htb = site.posts | where: "platform", "hackthebox" | sort: "date" %}
{% if htb.size == 0 %}
_No hay writeups de HackTheBox todavía._
{% else %}
  <div class="ctf-grid">
    {% for post in htb %}
      <article class="ctf-card">
        <h3><a href="{{ post.url }}">{{ post.title }}</a></h3>
        <p class="meta">
          <span class="badge">{{ post.category }}</span>
          <span class="badge difficulty">{{ post.difficulty }}</span>
          <small class="date">{{ post.date | date: "%d-%m-%Y" }}</small>
        </p>
        {% if post.description %}
          <p class="excerpt">{{ post.description }}</p>
        {% endif %}
      </article>
    {% endfor %}
  </div>
{% endif %}

</details>

---

<!-- Sección TryHackMe -->
<details>
<summary><strong>🧪 TryHackMe</strong></summary>

{% assign thm = site.posts | where: "platform", "tryhackme" | sort: "date" %}
{% if thm.size == 0 %}
_No hay writeups de TryHackMe todavía._
{% else %}
  <div class="ctf-grid">
    {% for post in thm %}
      <article class="ctf-card">
        <h3><a href="{{ post.url }}">{{ post.title }}</a></h3>
        <p class="meta">
          <span class="badge">{{ post.category }}</span>
          <span class="badge difficulty">{{ post.difficulty }}</span>
          <small class="date">{{ post.date | date: "%d-%m-%Y" }}</small>
        </p>
        {% if post.description %}
          <p class="excerpt">{{ post.description }}</p>
        {% endif %}
      </article>
    {% endfor %}
  </div>
{% endif %}

</details>

---

<!-- Sección VulnHub -->
<details>
<summary><strong>📦 VulnHub</strong></summary>

{% assign vh = site.posts | where: "platform", "vulnhub" | sort: "date" %}
{% if vh.size == 0 %}
_No hay writeups de VulnHub todavía._
{% else %}
  <div class="ctf-grid">
    {% for post in vh %}
      <article class="ctf-card">
        <h3><a href="{{ post.url }}">{{ post.title }}</a></h3>
        <p class="meta">
          <span class="badge">{{ post.category }}</span>
          <span class="badge difficulty">{{ post.difficulty }}</span>
          <small class="date">{{ post.date | date: "%d-%m-%Y" }}</small>
        </p>
        {% if post.description %}
          <p class="excerpt">{{ post.description }}</p>
        {% endif %}
      </article>
    {% endfor %}
  </div>
{% endif %}

</details>
