<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;

class usuarioSeed extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        User::create([
            'name' => 'Delia',
            'cargo' => 'Encargada de presupuestos',
            'oficina' => 'Finanzas',
            'email' => 'presupues',
            'password' => bcrypt('presupues'),
            'role' => 'Tecnico',
            'estado' => 'activo',
        ]);
        
        User::create([
            'name' => 'sisn',
            'cargo' => 'SISINWEB',
            'oficina' => 'Planificacion',
            'email' => 'sisin',
            'password' => bcrypt('sisin'),
            'role' => 'Tecnico',
            'estado' => 'activo',
        ]);
        
        User::create([
            'name' => 'Wilder Branez',
            'cargo' => 'Supervisor Dist. A',
            'oficina' => 'Obras Públicas',
            'email' => 'supa',
            'password' => bcrypt('supa'),
            'role' => 'Tecnico',
            'estado' => 'activo',
        ]);
        
        User::create([
            'name' => 'Daniela Valeriano',
            'cargo' => 'Supervisor Dist. B',
            'oficina' => 'Obras Públicas',
            'email' => 'supb',
            'password' => bcrypt('supb'),
            'role' => 'Tecnico',
            'estado' => 'activo',
        ]);
        
        User::create([
            'name' => 'Ivan Melgarejo',
            'cargo' => 'Tecnico de proyectos I',
            'oficina' => 'Planificacion',
            'email' => 'tecnico1',
            'password' => bcrypt('tecnico1'),
            'role' => 'Tecnico',
            'estado' => 'activo',
        ]);
        
        User::create([
            'name' => 'Jenny Romero',
            'cargo' => 'Tec. de proyectos V',
            'oficina' => 'Planificacion',
            'email' => 'tecnico2',
            'password' => bcrypt('tecnico2'),
            'role' => 'Tecnico',
            'estado' => 'activo',
        ]);
        
        User::create([
            'name' => 'contrataciones',
            'cargo' => 'Encargada de Contratciones',
            'oficina' => 'Contrataciones',
            'email' => 'contrata',
            'password' => bcrypt('contrata'),
            'role' => 'Tecnico',
            'estado' => 'activo',
        ]);
        
        User::create([
            'name' => 'Cristian Villarroel',
            'cargo' => 'Supervisor Dist. C',
            'oficina' => 'Obras Públicas',
            'email' => 'supc',
            'password' => bcrypt('supc'),
            'role' => 'Tecnico',
            'estado' => 'activo',
        ]);
        
        User::create([
            'name' => 'Adimael Flores',
            'cargo' => 'Supervisor Dist. D',
            'oficina' => 'Obras Públicas',
            'email' => 'supd',
            'password' => bcrypt('supd'),
            'role' => 'Tecnico',
            'estado' => 'activo',
        ]);
        
        User::create([
            'name' => 'Jhanet Vega',
            'cargo' => 'Supervisor Dist. E',
            'oficina' => 'Obras Públicas',
            'email' => 'supe',
            'password' => bcrypt('supe'),
            'role' => 'Tecnico',
            'estado' => 'activo',
        ]);
        
        User::create([
            'name' => 'Brandon',
            'cargo' => 'Tecnico de planificacion',
            'oficina' => 'Planificacion',
            'email' => 'tecnico3',
            'password' => bcrypt('tecnico3'),
            'role' => 'Tecnico',
            'estado' => 'activo',
        ]);
        
        User::create([
            'name' => 'Jose Ledezma',
            'cargo' => 'Tec. de proyectos II',
            'oficina' => 'Planificacion',
            'email' => 'tecnico4',
            'password' => bcrypt('tecnico4'),
            'role' => 'Tecnico',
            'estado' => 'activo',
        ]);
        
        User::create([
            'name' => 'Nataly',
            'cargo' => 'Tecnico de planificacion',
            'oficina' => 'Planificacion',
            'email' => 'tecnico5',
            'password' => bcrypt('tecnico5'),
            'role' => 'Tecnico',
            'estado' => 'activo',
        ]);
        
        User::create([
            'name' => 'Stefano Ledezma',
            'cargo' => 'Enc. I Tec. V',
            'oficina' => 'Planificacion',
            'email' => 'tecnico6',
            'password' => bcrypt('tecnico6'),
            'role' => 'Tecnico',
            'estado' => 'activo',
        ]);
        
        User::create([
            'name' => 'Adimael Flores',
            'cargo' => 'Supervisor Salud y Educacion',
            'oficina' => 'Obras Públicas',
            'email' => 'supsaluded',
            'password' => bcrypt('supsaluded'),
            'role' => 'Tecnico',
            'estado' => 'activo',
        ]);
        
        User::create([
            'name' => 'Faris Duran',
            'cargo' => 'Supervisor Alumbrado',
            'oficina' => 'Obras Públicas',
            'email' => 'supalumb',
            'password' => bcrypt('supalumb'),
            'role' => 'Tecnico',
            'estado' => 'activo',
        ]);
        
        User::create([
            'name' => 'Eber Villarroel',
            'cargo' => 'Supervisor Saneamiento',
            'oficina' => 'Saneamiento Básico',
            'email' => 'supsb2',
            'password' => bcrypt('supsb2'),
            'role' => 'Tecnico',
            'estado' => 'activo',
        ]);
        
        User::create([
            'name' => 'Maria Huayta',
            'cargo' => 'Supervisor Saneamiento',
            'oficina' => 'Saneamiento Básico',
            'email' => 'supsb1',
            'password' => bcrypt('supsb1'),
            'role' => 'Tecnico',
            'estado' => 'activo',
        ]);
        
    }
}
