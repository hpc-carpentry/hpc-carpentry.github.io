<table class="table table-striped" style="width: 100%;">
{% for w in workshop_list  %}
    {% if w.tag_name == "SWC" or w.tag_name == "DC" or w.tag_name == "LC" %}
    <tr>
    <td>
        <img src="{{site.url}}/assets/img/logos/{{ w.tag_name | downcase}}.png" title="{{ w.tag_name }} workshop" alt="{{ w.tag_name }} logo" width="24" height="24" class="flags"/>
    </td>
    <td>
      <img src="{{site.url}}/assets/img/flags/{{site.flag_size}}/{{w.country | downcase}}.png" title="{{w.country | replace: '-', ' '}}" alt="{{w.country | replace: '-', ' ' | downcase}}"  class="flags"/>
      <a href="{{w.url}}">{{w.venue}}</a>
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

  {% elsif w.tag_name == "Circuits" %}
  <tr>
  <td>
      <img src="{{site.url}}/assets/img/logos/cp.svg" title="{{ w.tag_name }} workshop" alt="{{ w.tag_name }} logo" width="24" height="24" class="flags"/>
  </td>
  <td>
    <img src="{{site.url}}/assets/img/flags/{{site.flag_size}}/{{w.country | downcase}}.png" title="{{w.country | replace: '-', ' '}}" alt="{{w.country | replace: '-', ' ' | downcase}}"  class="flags"/>
    ** <a href="{{w.url}}">{{w.venue}}</a>
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

** <i>These workshops are based on curriculum from The Carpentries lesson programs but may not follow our standard workshop format.</i>

<br><br>