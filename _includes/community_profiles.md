
{% for person in people_list %}

{% assign loopindex = forloop.index | modulo: 4 %}

{% if loopindex == 1 %}
<div class="row">
{% endif %}


<div class="medium-3 columns">
<div class="team-member">
  <img data-src="https://avatars.githubusercontent.com/{{ person.github }}" width=128 height=128 class="img-responsive img-circle lazyload" alt="GitHub profile photo of {{person.person_name}}">
  <h3>{{ person.person_name }}</h3>
  <ul class="list-inline social-buttons">
      {% if person.twitter %}<li> <a href="https://twitter.com/{{ person.twitter }}"> <i class="fab fa-twitter"></i> </a> </li> {% endif %}
      {% if person.github %}<li> <a href="https://github.com/{{ person.github }}"> <i class="fab fa-github"></i> </a> </li> {% endif %}
      {% if person.orcid_ %}<li> <a href="https://orcid.org/{{ person.orcid_ }}"> <i class="ai ai-orcid"></i> </a> </li> {% endif %}
      {% if person.url %}<li> <a href="{{ person.url }}"> <i class="fas fa-link"></i> </a> </li> {% endif %}
  </ul>
  <img width="64" src="/files/flags/{{ person.country | downcase }}.svg"/>
</div>
</div>


{% if loopindex == 0 %}
</div>
{% endif %}
{% endfor %}
