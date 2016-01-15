<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <!-- TODO: Bootstrap - Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" crossorigin="anonymous"/>

    <!--TODO: Grails.org site's stylesheet - -->
    <link rel="stylesheet" type="text/css" href="https://grails.org/css/style.css"/>

    <asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>

    <g:layoutHead/>
</head>
<body>
    <!--<div id="grailsLogo" role="banner"><a href="http://grails.org"><asset:image src="grails_logo.png" alt="Grails"/></a></div>-->

    <div class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/#">
                    <i class="fa grails-icon">
                        <asset:image src="grails-cupsonly-logo-white.svg"/>
                    </i> Grails
                </a>
            </div>
            <div class="navbar-collapse collapse" aria-expanded="false" style="height: 0.8px;">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Application Status <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Environment: ${grails.util.Environment.current.name}</a></li>
                            <li><a href="#">App profile: ${grailsApplication.config.grails?.profile}</a></li>
                            <li><a href="#">App version:
                                <g:meta name="info.app.version"/></a>
                            </li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Grails version:
                                <g:meta name="info.app.grailsVersion"/></a>
                            </li>
                            <li><a href="#">Groovy version: ${GroovySystem.getVersion()}</a></li>
                            <li><a href="#">JVM version: ${System.getProperty('java.version')}</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Artefacts <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Controllers: ${grailsApplication.controllerClasses.size()}</a></li>
                            <li><a href="#">Domains: ${grailsApplication.domainClasses.size()}</a></li>
                            <li><a href="#">Services: ${grailsApplication.serviceClasses.size()}</a></li>
                            <li><a href="#">Tag Libraries: ${grailsApplication.tagLibClasses.size()}</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Installed Plugins <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
                                <li><a href="#">${plugin.name} - ${plugin.version}</a></li>
                            </g:each>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <g:layoutBody/>

    <div class="footer" role="contentinfo"></div>

    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>

    <asset:javascript src="jquery-2.1.3.js"/>

    <!-- TODO: Bootstrap - Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" crossorigin="anonymous"></script>
</body>
</html>
