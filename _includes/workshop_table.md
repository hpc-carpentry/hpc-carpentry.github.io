Click on an individual event to learn more about that event, including contact information and registration instructions.

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
         {% assign workshop_type = "hpc" %}
     {% endif %}

    <tr>
    <td>
        <img src="{{site.url}}/assets/img/logos/{{ workshop_type }}.svg" title="{{ workshop_type }} workshop" alt="{{ workshop_type  }} logo" width="24" height="24" class="flags"/>
    </td>

    <td>

      {% if w.online == "Yes" %}
      <img src="{{site.url}}/assets/img/flags/{{site.flag_size}}/w3.png" title="Online" alt="globe image" class="flags"/>
      {% endif %}

      {% if w.in_person == "Yes" %}
      <img src="{{site.url}}/assets/img/flags/{{site.flag_size}}/group.png" title="In-person" alt="group image" class="flags"/>
      {% endif %}

      <a href="{{w.url}}">{{ w.name | strip_html }}{{ asterisks }}</a>
      {% if w.venue %}
          <br/>
          <b>Venue:</b> {{ w.venue | strip_html }}
      {% endif %}
      {% if w.topics %}
          <br/>
          <b>Topics covered:</b> {{ w.topics | strip_html }}
      {% endif %}
      
      {% if w.instructors %}
          <br/>
          <b>Instructors:</b> {{ w.instructors | strip_html | replace: ",", ", "}}
      {% endif %}
      {% if w.helpers %}
          <br/>
          <b>Helpers:</b> {{ w.helpers | strip_html | replace: ",", ", "}}
      {% endif %}
	</td>
	<td>
		{{w.start_date | date: "%b %-d"}} - {{w.end_date | date: "%b %-d, %Y"}}
	</td>
	</tr>

      {% endif %}
{% endfor %}
</table>

<p><i><img src="{{site.url}}/assets/img/flags/{{site.flag_size}}/w3.png" title="Online" alt="globe image" class="flags"/> Workshops with a globe icon are being held on line.</i></p> 
<p><i><img src="{{site.url}}/assets/img/flags/{{site.flag_size}}/group.png" title="In-person" alt="group image" class="flags"/> Workshops with a group icon are being held in person. Please follow the event URL for more information.</i></p>

