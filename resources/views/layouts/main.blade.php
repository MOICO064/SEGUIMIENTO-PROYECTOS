<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">

    <!-- Vincular CSS -->
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
    <link rel="stylesheet" href="{{asset('css/acta.css')}}">
    <link rel="stylesheet" href="{{asset('css/home.css')}}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.0/dist/sweetalert2.min.css">

    <title>Seguimiento de Proyectos</title>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>

<body>
    <div class="sidebar position-fixed top-0 bottom-0 bg-indigo border-end">
        <div class="d-flex align-items-center p-3">
            <img src="{{asset('imagenes/logo.png')}}" alt="logo" class="sidebar-logo logo ">
            <i class="sidebar-toggle ri-arrow-left-circle-line ms-auto fs-5 d-none d-md-block"></i>
        </div>
        <ul class="sidebar-menu p-3 m-0 mb-0">
            <li class="sidebar-menu-divider mt-3 mb-1 text-uppercase">Pagina Principal</li>
            <li class="sidebar-menu-item {{Request::is('home')?'active':''}}">
                <a href="{{route('home')}}">
                    <i class="ri-dashboard-line sidebar-menu-item-icon"></i>
                    Home
                </a>
            </li>
            @if(auth()->user()->role==='Supervisor' || auth()->user()->role==='Director')
            <li class="sidebar-menu-divider mt-3 mb-1 text-uppercase">Distritos</li>
            <li class="sidebar-menu-item has-dropdown ">
                <a href="" class="active">
                    <i class="ri-road-map-line sidebar-menu-item-icon "></i>
                    Distrito A
                    <i class="ri-arrow-down-s-line sidebar-menu-item-accordion ms-auto"></i>
                </a>

                <ul class="sidebar-dropdown-menu">
                    <li class="sidebar-dropdown-menu-item">
                        <a href="{{route('supervisor.proyectos','A')}}">
                            Proyectos
                        </a>
                    </li>
                    <li class="sidebar-dropdown-menu-item">
                        <a href="{{route('supervisor.otbs','A')}}">
                            Actas
                        </a>
                    </li>
                </ul>
            </li>
            <li class="sidebar-menu-item has-dropdown ">
                <a href="">
                    <i class="ri-road-map-line sidebar-menu-item-icon "></i>
                    Distrito B
                    <i class="ri-arrow-down-s-line sidebar-menu-item-accordion ms-auto"></i>
                </a>

                <ul class="sidebar-dropdown-menu">
                    <li class="sidebar-dropdown-menu-item">
                        <a href="{{route('supervisor.proyectos','B')}}">
                            Proyectos
                        </a>
                    </li>
                    <li class="sidebar-dropdown-menu-item">
                        <a href="{{route('supervisor.otbs','B')}}">
                            Actas
                        </a>
                    </li>
                </ul>
            </li>
            <li class="sidebar-menu-item has-dropdown ">
                <a href="">
                    <i class="ri-road-map-line sidebar-menu-item-icon "></i>
                    Distrito C
                    <i class="ri-arrow-down-s-line sidebar-menu-item-accordion ms-auto"></i>
                </a>

                <ul class="sidebar-dropdown-menu">
                    <li class="sidebar-dropdown-menu-item">
                        <a href="{{route('supervisor.proyectos','C')}}">
                            Proyectos
                        </a>
                    </li>
                    <li class="sidebar-dropdown-menu-item">
                        <a href="{{route('supervisor.otbs','C')}}">
                            Actas
                        </a>
                    </li>
                </ul>
            </li>
            <li class="sidebar-menu-item has-dropdown ">
                <a href="">
                    <i class="ri-road-map-line sidebar-menu-item-icon "></i>
                    Distrito D
                    <i class="ri-arrow-down-s-line sidebar-menu-item-accordion ms-auto"></i>
                </a>

                <ul class="sidebar-dropdown-menu">
                    <li class="sidebar-dropdown-menu-item">
                        <a href="{{route('supervisor.proyectos','D')}}">
                            Proyectos
                        </a>
                    </li>
                    <li class="sidebar-dropdown-menu-item">
                        <a href="{{route('supervisor.otbs','D')}}">
                            Actas
                        </a>
                    </li>
                </ul>
            </li>
            <li class="sidebar-menu-item has-dropdown ">
                <a href="">
                    <i class="ri-road-map-line sidebar-menu-item-icon "></i>
                    Distrito E
                    <i class="ri-arrow-down-s-line sidebar-menu-item-accordion ms-auto"></i>
                </a>

                <ul class="sidebar-dropdown-menu">
                    <li class="sidebar-dropdown-menu-item">
                        <a href="{{route('supervisor.proyectos','E')}}">
                            Proyectos
                        </a>
                    </li>
                    <li class="sidebar-dropdown-menu-item">
                        <a href="{{route('supervisor.otbs','E')}}">
                            Actas
                        </a>
                    </li>
                </ul>
            </li>
            <li class="sidebar-menu-divider mt-3 mb-1 text-uppercase">Desarrollo urbano y social </li>
            <li class="sidebar-menu-item ">
                <a href="{{route('supervisor.proyectos','Alumbrado')}}">
                    <i class="ri-lightbulb-line sidebar-menu-item-icon"></i>
                    Alumbrado
                </a>
            </li>
            <li class="sidebar-menu-item ">
                <a href="{{route('supervisor.proyectos','Salud')}}">
                    <i class="ri-hospital-line sidebar-menu-item-icon"></i>
                    Salud
                </a>
            </li>
            <li class="sidebar-menu-item ">
                <a href="{{route('supervisor.proyectos','Educación')}}">
                    <i class="ri-building-4-line sidebar-menu-item-icon"></i>
                    Educación
                </a>
            </li>

            @endif
            @if(auth()->user()->role==='Tecnico')
            <!--Tecnico -->
            <li class="sidebar-menu-divider mt-3 mb-1 text-uppercase">Proyectos</li>
            <li class="sidebar-menu-item has-dropdown ">
                <a href="">
                    <i class="ri-building-2-line sidebar-menu-item-icon "></i>
                    Proyectos
                    <i class="ri-arrow-down-s-line sidebar-menu-item-accordion ms-auto"></i>
                </a>
                <ul class="sidebar-dropdown-menu">
                    <li class="sidebar-dropdown-menu-item">
                        <a href="{{route('tecnico.registrar-proyecto')}}">
                            Registrar Proyecto
                        </a>
                    </li>
                    <li class="sidebar-dropdown-menu-item">
                        <a href="{{route('tecnico.proyectos', auth()->user()->name)}}">
                            Registrar Avance
                        </a>
                    </li>
                </ul>
            </li>
            @endif
            <!-- Director -->
            @if (auth()->user()->role==='Director')
            <li class="sidebar-menu-divider mt-3 mb-1 text-uppercase">Reformulados</li>
            <li class="sidebar-menu-item ">
                <a href="{{route('director.reformulados')}}">
                    <i class="ri-file-edit-line sidebar-menu-item-icon"></i>
                    Reformulados
                </a>
            </li>
            <li class="sidebar-menu-divider mt-3 mb-1 text-uppercase">Apertura Programatica</li>
            <li class="sidebar-menu-item ">
                <a href="{{route('director.aperturas_programaticas')}}">
                    <i class="ri-file-text-line sidebar-menu-item-icon"></i>
                    Aperturas
                </a>
            </li>
            <li class="sidebar-menu-divider mt-3 mb-1 text-uppercase">Registrar Proyecto</li>
            <li class="sidebar-menu-item ">
                <a href="{{route('director.registrar-proyecto')}}">
                    <i class="ri-building-2-line sidebar-menu-item-icon"></i>
                    Registrar Proyecto
                </a>
            </li>
            <li class="sidebar-menu-divider mt-3 mb-1 text-uppercase">USUARIOS</li>
            <li class="sidebar-menu-item has-dropdown ">
                <a href="">
                    <i class="ri-group-line sidebar-menu-item-icon "></i>
                    Usuarios
                    <i class="ri-arrow-down-s-line sidebar-menu-item-accordion ms-auto"></i>
                </a>
                <ul class="sidebar-dropdown-menu">
                    <li class="sidebar-dropdown-menu-item">
                        <a href="{{route('director.usuarios')}}">
                            Usuarios
                        </a>
                    </li>
                    <li class="sidebar-dropdown-menu-item">
                        <a href="{{route('director.inactivos')}}">
                            Usuarios Inactivos
                        </a>
                    </li>
                    <li class="sidebar-dropdown-menu-item">
                        <a href="{{route('director.usuario-nuevo')}}">
                            Registrar Usuario
                        </a>
                    </li>
                </ul>
            </li>
            @endif
        </ul>
    </div>

    <div class="sidebar-overlay"></div>

    <main class="bg-light">
        <div class="p-2">
            <!-- start: Navbar -->
            <nav class="px-3 py-2 bg-white rounded shadow">
                <i class="ri-menu-line sidebar-toggle me-3 d-block d-md-none"></i>
                <h5 class="fw-bold mb-0 me-auto text-indigo"> {{ auth()->user()->name }} </h5>
                <div class="dropdown p-2">
                    <div class="d-flex align-items-center cursor-pointer dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        <span class="me-2 d-none d-sm-block text-indigo">{{auth()->user()->role }}</span>
                    </div>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                        <li>
                            <form method="POST" action="{{ route('logout') }}">
                                @csrf
                                <a class="dropdown-item align-items-center" href="#"
                                    onclick="event.preventDefault();
                                     this.closest('form').submit();">
                                    Cerrar Sesión
                                </a>
                            </form>
                        </li>
                    </ul>
                </div>
            </nav>
            <!-- end: Navbar -->
            <div class="py-4">
                @yield('content')
            </div>
        </div>
    </main>
    @yield('scripts')    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.0/dist/sweetalert2.all.min.js"></script>

    <script src="{{asset('js/app.js')}}"></script>


</body>

</html>