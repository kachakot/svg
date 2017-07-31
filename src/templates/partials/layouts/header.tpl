{% macro render(_active_no='') %}
    {% if _active_no == '' %}
        {% set logo_href='#' %}
    {% else %}
        {% set logo_href='index.html' %}
    {% endif %}
		<header class="l-header">
            <div class="l-inner">
            </div>
        </header>
{% endmacro %}