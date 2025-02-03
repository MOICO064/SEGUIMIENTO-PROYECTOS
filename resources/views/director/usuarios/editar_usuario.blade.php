@extends('layouts.main')
@section('content')
<div class="row g-3 d-flex justify-content-center">
    <div class="col-12 col-sm-6 col-lg-6 ">
        <div class="container mt-3">
            <h2 class="mb-4 text-center">Editar Usuario</h2>
            <div class="card p-3 shadow rounded-4">
                <div class="card-body">
                    <form method="POST" action="{{ route('usuario.actualizar') }}">
                        @csrf
                        @method('PUT')
                        <input type="text" id="id" name="id" value="{{old('id', $user->id)}}" hidden>
                        <!-- Name -->
                        <div class="form-floating mb-3">
                            <input type="text" name="name" id="name" class="form-control @error('name') is-invalid @enderror" value="{{ old('name',$user->name) }}" placeholder="nombre" readonly>
                            <label for="name">Nombre</label>
                            @error('name')
                            <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        <!-- Email Address -->
                        <div class="form-floating mb-3">
                            <input type="text" name="email" id="email" class="form-control @error('email') is-invalid @enderror" value="{{ old('email',$user->email) }}" placeholder="Usuario">
                            <label for="text">Usuario</label>
                            @error('email')
                            <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="form-floating mb-3"> 
                            <input type="text" value="{{$user->role}}" class="form-control" readonly>
                            <label for="role">Rol </label>
                            @error('role')
                            <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        <!-- Password -->
                        <div class="form-floating mb-3">
                            <input type="password" name="password" id="password" class="form-control @error('password') is-invalid @enderror" value="{{ old('password') }}" placeholder="Contraseña">
                            <label for="password">Contraseña</label>
                            <button
                                type="button"
                                id="toggle-password"
                                class="btn position-absolute top-50 end-0 translate-middle-y no-hover"
                                style="border: none; background: transparent;">
                                <i id="password-icon" class="ri-eye-line"></i>
                            </button>
                            @error('password')
                            <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        <!-- Confirm Password -->
                        <div class="form-floating mb-3">
                            <input type="password" name="password_confirmation" id="password_confirmation" class="form-control @error('password_confirmation') is-invalid @enderror" value="{{ old('password_confirmation') }}" placeholder="Confirmar Contraseña">
                            <label for="password_confirmation">Confirmar contraseña</label>
                            @error('password_confirmation')
                            <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="text-center ">
                            <button type="submit" class="btn btn-primary">
                                Guardar
                            </button>
                            <a href="{{ route('director.usuarios') }}" class="btn btn-danger">
                                Cancelar
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('scripts')
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
@if (session('success'))
<script>
    Swal.fire({
        icon: 'success',
        title: '¡Hecho!',
        text: 'El Usuario se edito correctamente',
        confirmButtonText: 'OK',
    }).then((result) => {
        if (result.isConfirmed) {
            window.location.href = "{{ route('director.usuarios') }}"; 
        }
    });;
</script>
@endif
@endsection
@Vite([ 'resources/js/contrasena.js'])
