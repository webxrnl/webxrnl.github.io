---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
---
# Welcome to My Blog

## Recent Posts

<div class="home">
    {%- if site.posts.size > 0 -%}
        <ul class="post-list">
            {%- for post in site.posts limit:10 -%}
            <li>
                <span class="post-meta">{{ post.date | date: "%b %-d, %Y" }}</span>
                <h3>
                    <a class="post-link" href="{{ post.url | relative_url }}">
                        {{ post.title | escape }}
                    </a>
                </h3>
                {%- if post.excerpt -%}
                    <p class="post-excerpt">{{ post.excerpt | strip_html | truncatewords: 50 }}</p>
                {%- endif -%}
            </li>
            {%- endfor -%}
        </ul>

        <p class="rss-subscribe">subscribe <a href="{{ "/feed.xml" | relative_url }}">via RSS</a></p>
    {%- else -%}
        <p>No posts yet. Check back soon!</p>
    {%- endif -%}
</div>
