---
layout: page
title: Projects
permalink: /projects/

---

{% for project in site.projects %}
  <div class="custom-card">
    <h2><a href="{{ project.url }}">{{ project.project_name }}</a></h2>
    <p>{{ project.description }}</p>
  </div>
{% endfor %}