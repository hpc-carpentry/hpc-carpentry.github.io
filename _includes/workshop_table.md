<table class="table table-striped" style="width: 100%;">
{% for w in workshop_list  %}
      {% if w.instructors %}

     {% assign asterisks = "" %}
     
     {% assign tags = w.tag_name | split: "," | downcase %}
     
     {% if tags contains "ttt" %}
         {% continue %}
     {% elsif tags contains "swc" %}
         {% assign workshop_type = "swc" %}
     {% elsif tags contains "dc" %}
         {% assign workshop_type = "dc" %}
     {% elsif tags contains "lc" %}
         {% assign workshop_type = "lc" %}
     {% elsif tags contains "circuits" %}
         {% assign workshop_type = "cp" %}
         {% assign asterisks = " **" %}
     {% else %}
         {% assign workshop_type = "cp-unknown" %}
     {% endif %}

    <tr>
    <td>
        <img src="{{site.url}}/assets/img/logos/{{ workshop_type }}.svg" title="{{ workshop_type }} workshop" alt="{{ workshop_type  }} logo" width="24" height="24" class="flags"/>
    </td>
    <td>
        {% unless w.country == "" %}
      <img src="{{site.url}}/assets/img/flags/{{site.flag_size}}/{{w.country | downcase}}.png" title="{{w.country | replace: '-', ' '}}" alt="{{w.country | replace: '-', ' ' | downcase}}"  class="flags"/>
      {% endunless %}
      <a href="{{w.url}}">{{ w.venue | strip_html }}{{ asterisks }}</a>
      {% if w.instructors %}
          <br/>
          <b>Instructors:</b> {{ w.instructors | replace: ",", ", "}}
      {% endif %}
      {% if w.helpers %}
          <br/>
          <b>Helpers:</b> {{ w.helpers  | replace: ",", ", "}}
      {% endif %}
	</td>
	<td>
		{{w.start_date | date: "%b %-d"}} - {{w.end_date | date: "%b %-d, %Y"}}
	</td>
	</tr>

      {% endif %}
{% endfor %}
</table>

** <i>Workshops marked with asterisks are based on curriculum from The Carpentries lesson programs but may not follow our standard workshop format.</i>

<br><br>
