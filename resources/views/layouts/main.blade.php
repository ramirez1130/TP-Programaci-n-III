<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>@yield('title') | Panel de Control</title>
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css')  }}">
    <link rel="stylesheet" href="{{ asset('css/font-awesome.min.css')  }}">
    <link rel="stylesheet" href="{{ asset('css/style.css')  }}">
</head>
<body>
    <nav class="navbar navbar-default">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">@yield('title')</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="#">Hoteles</a></li>
                <li><a href="#">Servicios</a></li>
                <li><a href="#">Ciudades</a></li>
                <li><a href="#">Paises</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </nav>
    <main class="container">
        @yield('content')
    </main>
</body>
</html>