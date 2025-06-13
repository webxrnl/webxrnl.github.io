---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
---
# WebXR.NL

{%- if site.posts.size > 0 -%}

{% for post in site.posts limit:10 %}

## [{{ post.title | escape }}]({{ post.url | relative_url }})

### {{ post.date | date: "%b %-d, %Y" }}

  {{ post.content }}

{% endfor %}

[Subscribe via RSS]({{ "/feed.xml" | relative_url }})

{%- else -%}

No posts yet. Check back soon!

{%- endif -%}
