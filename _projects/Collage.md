---
layout: page
title: Collage
description: A tool designed for rapid prototyping, visualization, and evaluation of different information extraction models on scientific PDFs
img: assets/img/collage_fig1.png
importance: 2
category: work
---

<div class="row justify-content-center">
    {% include figure.liquid path="assets/img/collage_exploded_wireframe.svg" alt="Collage Diagram" class="img-fluid rounded z-depth-1" %}
</div>

Collage is a tool designed for rapid prototyping, visualization, and evaluation of different
information extraction models on scientific PDFs. Further, we enable both non-technical users
and NLP practitioners to inspect, debug, and better understand modeling pipelines by providing
granular views of intermediate states of processing.

You can find more information about Collage [in the paper](https://aclanthology.org/2025.sdp-1.7/),
which was published at the ACL 2025 Workshop on Scholarly Document Processing.

This demo should be available and running at [this URL](http://windhoek.sp.cs.cmu.edu:8501). This
server can sometimes be unstable. If it is having issues when you try to access it, please
follow the Docker Compose instructions on the [GitHub Repo](https://github.com/slab-cmu/collage).
