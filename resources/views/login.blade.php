<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesion</title>
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
    @vite(['resources/css/login.css'])
</head>
<body id="body">
    <div class="LoginBackground d-flex align-items-center">
        <div class="container">
            <div class="row justify-content-center ">
                <div class="col-12 col-sm-12 col-md-8 col-lg-6 col-xl-4 col-xxl-4">
                    <div class="text-light form p-4">
                        <form method="POST" action="{{route('login')}}">
                            @csrf
                            <h2 class="text-center ">Iniciar Sessión</h2>
                            <div class="form-floating my-4">
                                <input type="text" id="email" name="email" class="form-control" value="{{old('email')}}" placeholder="Usuario" autofocus>
                                <label for="email" class="text-dark">Usuario</label>
                                @error('email')
                                <span class="text-red">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="form-floating my-4">
                                <input type="password" id="password" name="password" placeholder="Contraseña" class="form-control">
                                <label for="password" class="text-dark">Contraseña</label>
                                <button
                                    type="button"
                                    id="toggle-password"
                                    class="btn position-absolute top-50 end-0 translate-middle-y no-hover"
                                    style="border: none; background: transparent;">
                                    <i id="password-icon" class="ri-eye-line"></i>
                                </button>
                                @error('password')
                                <span class="text-red">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="block mb-4">
                                <label for="remember_me" class="inline-flex items-center">
                                    <input id="remember_me" type="checkbox" class="rounded dark:bg-gray-900 border-gray-300 dark:border-gray-700 text-indigo-600 shadow-sm focus:ring-indigo-500 dark:focus:ring-indigo-600 dark:focus:ring-offset-gray-800" name="remember">
                                    <span class="ms-2 text-sm text-gray-600 dark:text-gray-400">{{ __('Remember me') }}</span>
                                </label>
                            </div>
                            <div class="d-flex justify-content-center my-3">
                                <button type="submit" class="btn btn-primary">Iniciar Sesion</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    @Vite([ 'resources/js/app.js'])
    @Vite(['resources/js/contrasena.js'])
</body>

</html>