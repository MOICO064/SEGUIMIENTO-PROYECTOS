@extends('layouts.main')
@section('content')
<div class="row g-3 d-flex justify-content-center">
    <div class="col-12 col-sm-6 col-lg-6 ">
        <div class="container mt-3">
            <h2 class="mb-4 text-center">Nuevo Usuario</h2>
            <div class="card p-3 shadow rounded-4">
                <div class="card-body">
                    <form method="POST" action="{{ route('register') }}">
                        @csrf
                        <!-- Name -->
                        <div class="form-floating mb-3">
                            <input type="text" name="name" id="name" class="form-control @error('name') is-invalid @enderror" value="{{ old('name') }}" placeholder="nombre">
                            <label for="name">Nombre</label>
                            @error('name')
                            <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>
                        <!-- Cargo -->
                        <div class="form-floating mb-3">
                            <input type="text" name="cargo" id="cargo" class="form-control @error('cargo') is-invalid @enderror" value="{{ old('cargo') }}" placeholder="cargo">
                            <label for="cargo">Cargo</label>
                            @error('cargo')
                            <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>
                        <!-- Oficina -->
                        <div class="form-floating mb-3">
                            <input type="text" name="oficina" id="oficina" class="form-control @error('oficina') is-invalid @enderror" value="{{ old('oficina') }}" placeholder="oficina">
                            <label for="oficina">Oficina</label>
                            @error('oficina')
                            <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>
                        <!-- Email Address -->
                        <div class="form-floating mb-3">
                            <input type="text" name="email" id="email" class="form-control @error('email') is-invalid @enderror" value="{{ old('email') }}" placeholder="Usuario">
                            <label for="email">Usuario</label>
                            @error('email')
                            <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="form-floating mb-3">

                            <select id="role" name="role" class="form-select @error('password') is-invalid @enderror">
                                <option value="" disabled selected>Seleccione un rol</option>
                                <option value="Tecnico" {{ old('role') === 'Tecnico' ? 'selected' : '' }}>Tecnico</option>
                                <option value="Director" {{ old('role') === 'Director' ? 'selected' : '' }}>Director</option>
                                <option value="Supervisor" {{ old('role') === 'Supervisor' ? 'selected' : '' }}>Supervisor</option>
                            </select>
                            <label for="role">Rol </label>
                            @error('role')
                            <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        <!-- Password -->
                        <div class="form-floating mb-3">
                            <input type="text" name="password" id="password" class="form-control @error('password') is-invalid @enderror" value="{{ old('password') }}" placeholder="Contraseña">
                            <label for="password">Contraseña</label>
                            @error('password')
                            <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        <!-- Confirm Password -->
                        <div class="form-floating mb-3">
                            <input type="text" name="password_confirmation" id="password_confirmation" class="form-control @error('password_confirmation') is-invalid @enderror" value="{{ old('password_confirmation') }}" placeholder="Confirmar Contraseña">
                            <label for="password_confirmation">Confirmar contraseña</label>
                            @error('password_confirmation')
                            <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="text-center ">
                            <button type="submit" class="btn btn-primary">
                                Registrar
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
        text: 'El Usuario se registro correctamente',
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