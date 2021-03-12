---
layout: default
title: Supporters
---

## Industrial Supporters

<p>
You want to support ACM ICN 2020? Check our <a href="cf-supporters.html">Call for Supporters</a>.
</p>

{% comment %}

### Platinum

<p>
<div style="text-align: center;">
{% for supporter in site.data.supporters
%}{% if supporter[7] == "platinum"
%}<a href="{{ supporter[2] }}">{% asset "sponsors/{{ supporter[1] }}" alt="{{ supporter[3] }}" style="height: 80px; margin: 10px" %}</a>
{% endif
%}{% endfor %}
</div>
</p>

{% endcomment %}

### Gold

<p>
<div style="text-align: center;">
{% for supporter in site.data.supporters
%}{% if supporter[7] == "gold"
%}<a href="{{ supporter[2] }}">{% asset "sponsors/{{ supporter[1] }}" alt="{{ supporter[3] }}" style="height: 100px; margin: 25px" %}</a>
{% endif
%}{% endfor %}
</div>
</p>


### Silver


<p>
<div style="text-align: center;">
{% for supporter in site.data.supporters
%}{% if supporter[7] == "silver"
%}<a href="{{ supporter[2] }}">{% asset "sponsors/{{ supporter[1] }}" alt="{{ supporter[3] }}" style="height: 100px; margin: 25px" %}</a>
{% endif
%}{% endfor %}
</div>
</p>

### Bronze

<p>
<div style="text-align: center;">
{% for supporter in site.data.supporters
%}{% if supporter[7] == "bronze"
%}<a href="{{ supporter[2] }}">{% asset "sponsors/{{ supporter[1] }}" alt="{{ supporter[3] }}" style="height: 100px; margin: 25px" %}</a>
{% endif
%}{% endfor %}
</div>
</p>

{% comment %}

## University Supporters

<p>
<div style="text-align: center;">
{% for supporter in site.data.supporters
%}{% if supporter[7] == "university"
%}<a href="{{ supporter[2] }}">{% asset "sponsors/{{ supporter[1] }}" alt="{{ supporter[3] }}" style="height: 80px; margin: 10px" %}</a>
{% endif
%}{% endfor %}
</div>
</p>
{% endcomment %}
