<table class="table table-striped" style="width: 100%;">
{% for w in site.data.all_upcoming_workshops_plain  %}
    {% if w.tag_name == "SWC" or w.tag_name == "DC" or w.tag_name == "LC" %}
    <tr>
    <td>
        <img src="{{site.url}}/assets/img/logos/{{ w.tag_name | downcase}}.png" title="{{ w.tag_name }} workshop" alt="{{ w.tag_name }} logo" width="24" height="24"/>
    </td>
    <td>
      <img src="{{site.url}}/assets/img/flags/{{site.flag_size}}/{{w.country | downcase}}.png" title="{{w.country | replace: '-', ' '}}" alt="{{w.country | replace: '-', ' ' | downcase}}" />
      <a href="{{w.url}}">{{w.venue}}</a>
	</td>
	<td>
		{{w.start_date | date: "%b %-d"}} - {{w.end_date | date: "%b %-d, %Y"}}
	</td>
	</tr>
    {% endif %}
{% endfor %}
</table>
