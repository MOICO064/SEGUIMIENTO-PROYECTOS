<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;

class supervisorSeed extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        User::create([
            'name' => 'Nelson Gallinate',
            'cargo' => 'Alcalde Municipal',
            'oficina' => 'Despacho',
            'email' => 'alcalde',
            'password' => bcrypt('alcalde'),
            'role' => 'Supervisor',
            'estado' => 'activo',
        ]);

        User::create([
            'name' => 'Richard Carrillo',
            'cargo' => 'Secretario General y de Gobernabilidad',
            'oficina' => 'SMGG',
            'email' => 'smgg',
            'password' => bcrypt('smgg'),
            'role' => 'Supervisor',
            'estado' => 'activo',
        ]);

        User::create([
            'name' => 'Jobany Bustamante',
            'cargo' => 'Secretario Municipal Técnico',
            'oficina' => 'SMT',
            'email' => 'smt',
            'password' => bcrypt('smt'),
            'role' => 'Supervisor',
            'estado' => 'activo',
        ]);

        User::create([
            'name' => 'Victor Subelza',
            'cargo' => 'Asesor tecnico',
            'oficina' => 'SMGG',
            'email' => 'atecn',
            'password' => bcrypt('atecn'),
            'role' => 'Supervisor',
            'estado' => 'activo',
        ]);

        User::create([
            'name' => 'Rodrigo Jimenez',
            'cargo' => 'Secretario Municipal de Planificación',
            'oficina' => 'SMP',
            'email' => 'smp',
            'password' => bcrypt('smp'),
            'role' => 'Supervisor',
            'estado' => 'activo',
        ]);

        User::create([
            'name' => 'Ciro Bascope',
            'cargo' => 'Dir. Medio Ambiente',
            'oficina' => 'SMT',
            'email' => 'smtciro',
            'password' => bcrypt('smtciro'),
            'role' => 'Supervisor',
            'estado' => 'activo',
        ]);

        User::create([
            'name' => 'Juan Guachalla',
            'cargo' => 'Dir. Areas Verdes',
            'oficina' => 'SMT',
            'email' => 'smtjuan',
            'password' => bcrypt('smtjuan'),
            'role' => 'Supervisor',
            'estado' => 'activo',
        ]);

        User::create([
            'name' => 'Osmar Barberito',
            'cargo' => 'Dir. Planificacion',
            'oficina' => 'SMP',
            'email' => 'smpplani',
            'password' => bcrypt('smpplani'),
            'role' => 'Supervisor',
            'estado' => 'activo',
        ]);
    }
}
