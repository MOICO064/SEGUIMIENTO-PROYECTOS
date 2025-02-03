<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class UsuarioController extends Controller
{
    public function getTecnicos()
    {
        $tecnicos = User::where('role', 'Tecnico')->get();
        return response()->json([
            'success' => true,
            'data' => $tecnicos
        ], 200);
    }
    public function Usuarios(Request $request)
    {
        $perPage = $request->get('perPage', 10);
        $perPage = in_array($perPage, [10, 25, 50, 100]) ? $perPage : 10;
        $searchTerm = $request->get('search', '');
        $estado = 'ACTIVOS';
        $usuarios = User::where('estado', 'activo')
            ->where(function ($query) use ($searchTerm) {
                $query->where('name', 'like', "%$searchTerm%")
                    ->orWhere('email', 'like', "%$searchTerm%")
                    ->orWhere('oficina', 'like', "%$searchTerm%")
                    ->orWhere('role', 'like', "%$searchTerm%");
            })
            ->paginate($perPage);

        if ($request->ajax()) {
            return response()->json([
                'tabla' => view('director.usuarios.table', compact('usuarios'))->render(),
                'paginacion' => view('director.usuarios.pagination', compact('usuarios'))->render(),
            ]);
        }

        return view('director.usuarios', compact('usuarios', 'estado'));
    }
    public function UsuariosInactivos(Request $request)
    {
        $perPage = $request->get('perPage', 10);
        $perPage = in_array($perPage, [10, 25, 50, 100]) ? $perPage : 10;
        $searchTerm = $request->get('search', '');
        $estado = 'INACTIVOS';
        $usuarios = User::where('estado', 'inactivo')
            ->where(function ($query) use ($searchTerm) {
                $query->where('name', 'like', "%$searchTerm%")
                    ->orWhere('email', 'like', "%$searchTerm%")
                    ->orWhere('oficina', 'like', "%$searchTerm%")
                    ->orWhere('role', 'like', "%$searchTerm%");
            })
            ->paginate($perPage);

        if ($request->ajax()) {
            return response()->json([
                'tabla' => view('director.usuarios.table', compact('usuarios'))->render(),
                'paginacion' => view('director.usuarios.pagination', compact('usuarios'))->render(),
            ]);
        }

        return view('director.usuarios', compact('usuarios', 'estado'));
    }
    public function edit($id)
    {
        $user = User::findOrFail($id);

        return view('director.usuarios.editar_usuario', compact('user'));
    }
    public function update(Request $request)
    {
        $validated = $request->validate([
            'email' => 'required|unique:users,email,' . $request->id,
            'password' => 'nullable|confirmed|min:8',
        ]);

        $user = User::findOrFail($request->id);

        if ($request->filled('password')) {
            $validated['password'] = bcrypt($request->password);
        } else {
            unset($validated['password']);
        }
        $user->update($validated);

        session()->flash('success', 'Usuario editado correctamente.');
        return redirect()->back();
    }
    public function delete(Request $request)
    {
        $request->validate([
            'user_id' => 'required|exists:users,id',
        ]);

        $user = User::findOrFail($request->user_id);


        $user->estado = 'inactivo';
        $user->save();

        session()->flash('success', 'Usuario eliminado correctamente.');
        return redirect()->back();
    }
    public function activar(Request $request)
    {
        $request->validate([
            'user_id_activate' => 'required|exists:users,id',
        ]);

        $user = User::findOrFail($request->user_id_activate);

        $user->estado = 'activo';
        $user->save();

        session()->flash('success', 'Usuario activado correctamente.');
        return redirect()->back();
    }
}
