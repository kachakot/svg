<!doctype html>
<html lang="en" class="no-js">
    <head>
        <meta charset="utf-8">
        <title>{% block title %}{{ title }}{% endblock %}</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
        {% include "head/head-links.tpl" %}
    </head>
    <body>
        {% import "partials/layouts/header.tpl" as l_header %}
        {{ l_header.render() }}
        <main class="l-main">
            <div class="l-inner">
                <div class="c-box">
                    <p class="c-box__title">svg with document stylesheets</p>
                    <div class="c-box__content">
                        <svg height="200" style="width: 100%;">
                            <circle cx="100" cy="100" r="75" class="c-dot" />
                            <circle cx="200" cy="100" r="75" class="c-dot" id="c-middle" />
                            <circle cx="300" cy="100" r="75" class="c-dot" />
                        </svg>
                        <svg height="200" style="width: 100%;">
                            <circle cx="100" cy="100" r="75" class="c-dot" fill="red" style="fill:red" />
                            <circle cx="200" cy="100" r="75" class="c-dot" id="c-middle" />
                            <circle cx="300" cy="100" r="75" class="c-dot" />
                        </svg>
                    </div>
                </div>
                <div class="c-box">
                    <p class="c-box__title">svg as an img</p>
                    <div class="c-box__content">
                        <img src="./static/img/magnify.svg" alt="Magnify" class="c-svg-img">
                    </div>
                </div>
                <div class="c-box">
                    <p class="c-box__title">svg as a background image</p>
                    <div class="c-box__content">
                        <a href="#" class="c-svg-bg-img">
                            Magnify
                        </a>
                    </div>
                </div>
                <div class="c-box">
                    <p class="c-box__title">using svg as an object</p>
                    <div class="c-box__content">
                        <object type="image/svg+xml" data="./static/img/magnify.svg" class="c-svg-object">
                        Magnify icon
                        </object>
                    </div>
                </div>
                <div class="c-box">
                    <p class="c-box__title">using svg as an embed (it's works but don't use it)</p>
                    <div class="c-box__content">
                        <embed type="image/svg+xml" src="./static/img/magnify.svg" class="c-svg-embed" />
                    </div>
                </div>
                <div class="c-box">
                    <p class="c-box__title">using svg as an iframe</p>
                    <div class="c-box__content">
                        <iframe src="./static/img/magnify.svg" class="c-svg-iframe">
                        Your browser does not support iframes
                        </iframe>
                    </div>
                </div>
                <div class="c-box">
                    <p class="c-box__title">inline styles svg</p>
                    <div class="c-box__content">
                        <svg class="c-svg-inline" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 72.21 72.22">
                            <style type="text/css">
                                <![CDATA[
                                .magnify { fill: blue; }
                                ]]>
                            </style>
                            <path class="magnify" d="M71.06,65.4,54.71,49A30.47,30.47,0,1,0,49,54.7L65.4,71.06a4,4,0,0,0,5.66-5.66Zm-56.46-19a22.5,22.5,0,1,1,31.82,0A22.53,22.53,0,0,1,14.59,46.41Z" transform="translate(-0.02 -0.01)"/>
                        </svg>
                    </div>
                </div>
                <div class="c-box">
                    <p class="c-box__title">external styles svg</p>
                    <div class="c-box__content">
                        <?xml-stylesheet type="text/css" href="./static/main.css"?>
                        <svg class="c-svg-external" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 72.21 72.22">
                            <path class="magnify" d="M71.06,65.4,54.71,49A30.47,30.47,0,1,0,49,54.7L65.4,71.06a4,4,0,0,0,5.66-5.66Zm-56.46-19a22.5,22.5,0,1,1,31.82,0A22.53,22.53,0,0,1,14.59,46.41Z" transform="translate(-0.02 -0.01)"/>
                        </svg>
                    </div>
                </div>
                <div class="c-box">
                    <p class="c-box__title">css3 animation</p>
                    <div class="c-box__content">
                        <svg class="c-svg-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 14.88 5.53">
                            <polygon class="c-svg-icon__arrowhead" points="10.1 0 14.88 2.76 10.1 5.53 10.1 0"/>
                            <rect class="c-svg-icon__arrow" y="1.76" width="10.05" height="2"/>
                        </svg>
                    </div>
                </div>
                <div class="c-box">
                    <p class="c-box__title">rwd svg</p>
                    <div class="c-box__content">
                        <svg class="c-svg-rwd" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 14.88 5.53">
                            <polygon class="c-svg-icon__arrowhead" points="10.1 0 14.88 2.76 10.1 5.53 10.1 0"/>
                            <rect class="c-svg-icon__arrow" y="1.76" width="10.05" height="2" transform="translate(0.05 0)"/>
                        </svg>
                    </div>
                </div>
            </div>
        </main>
        <footer class="l-footer" data-css-spacing="top2 tablet(top1) left5 tablet(left3)">
            <div class="l-inner">
                <p>
                    &copy; 2016 {{ author }}
                </p>
            </div>
        </footer>
        <script src="./static/js/app.js"></script>
    </body>
</html>