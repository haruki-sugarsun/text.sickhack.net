---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
author_profile: true
title: Start Page
---

{% comment %}
This hack somewhat works :p
Thanks to https://stackoverflow.com/questions/71475643/include-another-page-with-jekyll-without-displaying-front-matter
{% endcomment %}

{% capture index_src %}
{% include_relative _confluence_pages/701595785.html %}
{% endcapture %}
{{ index_src | split: "---" | last }}
