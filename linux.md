---
layout: default
title: Linux
permalink: /linux/
---
# Linux

**Descripción general:**  
Aquí encontrarás recursos organizados por nivel de dificultad: básico, medio y avanzado.

---

<details>
  <summary><strong>🧩 Linux Básico</strong></summary>

  {% assign linux_basico = site.posts | where: "subcategory", "basico" | sort: "date" %}
  <ul>
    {% for post in linux_basico %}
      <li>
        <a href="{{ post.url }}">{{ post.title }}</a><br>
        <small>{{ post.date | date: "%d-%m-%Y" }}</small>
        <p>{{ post.description }}</p>
      </li>
    {% endfor %}
  </ul>
</details>

---

<details>
  <summary><strong>🧱 Linux Medio</strong></summary>

  {% assign linux_medio = site.posts | where: "subcategory", "medio" | sort: "date" %}
  <ul>
    {% for post in linux_medio %}
      <li>
        <a href="{{ post.url }}">{{ post.title }}</a><br>
        <small>{{ post.date | date: "%d-%m-%Y" }}</small>
        <p>{{ post.description }}</p>
      </li>
    {% endfor %}
  </ul>
</details>

---

<details>
  <summary><strong>🧠 Linux Avanzado</strong></summary>

  {% assign linux_avanzado = site.posts | where: "subcategory", "avanzado" | sort: "date" %}
  <ul>
    {% for post in linux_avanzado %}
      <li>
        <a href="{{ post.url }}">{{ post.title }}</a><br>
        <small>{{ post.date | date: "%d-%m-%Y" }}</small>
        <p>{{ post.description }}</p>
      </li>
    {% endfor %}
  </ul>
</details>
