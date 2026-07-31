---
layout: page
title: projects
permalink: /projects/
nav: true
nav_order: 3
# Allowlist, not just an ordering — see the comment below before adding a category.
display_categories: [work, fun]
horizontal: false
---

<!-- pages/projects.md -->

{% comment %}
  display_categories is an ALLOWLIST, not just a section order.

  The loop below iterates it and filters with `where: "category", category`, so a
  project whose category is not listed here is silently dropped from this page —
  no error, no warning, the card simply never renders. If you add a project with
  `category: research`, add "research" to display_categories in the front matter
  or it will not appear.

  Category headings also require `enable_project_categories: true` in _config.yml.
  Both conditions have to hold; with either one missing this falls through to the
  uncategorised branch and the headings disappear.
{% endcomment %}

<div class="projects">
  {% if site.enable_project_categories and page.display_categories %}
    {% for category in page.display_categories %}
    <a id="{{ category }}" href=".#{{ category }}">
      <h2 class="category">{{ category }}</h2>
    </a>
    {% assign categorized_projects = site.projects | where: "category", category %}
    {% assign sorted_projects = categorized_projects | sort: "importance" %}
    {% if page.horizontal %}
    <div class="container">
      <div class="row row-cols-1 row-cols-md-2">
      {% for project in sorted_projects %}
        {% include projects_horizontal.liquid %}
      {% endfor %}
      </div>
    </div>
    {% else %}
    <div class="row row-cols-1 row-cols-md-3">
      {% for project in sorted_projects %}
        {% include projects.liquid %}
      {% endfor %}
    </div>
    {% endif %}
    {% endfor %}
  {% else %}
    {% assign sorted_projects = site.projects | sort: "importance" %}
    {% if page.horizontal %}
    <div class="container">
      <div class="row row-cols-1 row-cols-md-2">
      {% for project in sorted_projects %}
        {% include projects_horizontal.liquid %}
      {% endfor %}
      </div>
    </div>
    {% else %}
    <div class="row row-cols-1 row-cols-md-3">
      {% for project in sorted_projects %}
        {% include projects.liquid %}
      {% endfor %}
    </div>
    {% endif %}
  {% endif %}
</div>
