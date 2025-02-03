<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;

class directorSeed extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        User::create([
            'name' => 'Jesus Valencia',
            'cargo' => 'Director de planificacion',
            'oficina' => 'Planificacion',
            'email' => 'dirplani',
            'password' => bcrypt('dirplani'),
            'role' => 'Director',
            'estado' => 'activo',
        ]);

        User::create([
            'name' => 'Elias Espinoza',
            'cargo' => 'Director de Obras Publicas',
            'oficina' => 'Obras Publicas',
            'email' => 'dirobras',
            'password' => bcrypt('dirobras'),
            'role' => 'Director',
            'estado' => 'activo',
        ]);

        User::create([
            'name' => 'Orlando Zambrana',
            'cargo' => 'Supervisor de obra',
            'oficina' => 'Saneamiento Básico',
            'email' => 'ssb1',
            'password' => bcrypt('ssb1'),
            'role' => 'Director',
            'estado' => 'activo',
        ]);

        User::create([
            'name' => 'Eber Villarroel',
            'cargo' => 'Supervisor saneamiento',
            'oficina' => 'Saneamiento Básico',
            'email' => 'ssb2',
            'password' => bcrypt('ssb2'),
            'role' => 'Director',
            'estado' => 'activo',
        ]);

        User::create([
            'name' => 'Maria Huayta',
            'cargo' => 'Supervisor saneamiento',
            'oficina' => 'Saneamiento Básico',
            'email' => 'ssb3',
            'password' => bcrypt('ssb3'),
            'role' => 'Director',
            'estado' => 'activo',
        ]);

        User::create([
            'name' => 'Leonardo Rojas',
            'cargo' => 'Director de Saneamiento Básico',
            'oficina' => 'Saneamiento Básico',
            'email' => 'dirsb',
            'password' => bcrypt('dirsb'),
            'role' => 'Director',
            'estado' => 'activo',
        ]);
    }
}
