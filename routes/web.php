<?php

use App\Http\Controllers\AperturaProgramaticaController;
use App\Http\Controllers\DirectorController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\UsuarioController;
use App\Http\Controllers\OtbController;
use App\Http\Controllers\DistritoController;
use App\Http\Controllers\SupervisorController;
use App\Http\Controllers\Auth\RegisteredUserController;
use App\Http\Controllers\AvanceController;
use App\Http\Controllers\pdfController;
use App\Http\Controllers\ProyectoController;
use App\Http\Controllers\TecnicoController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

require __DIR__ . '/auth.php';
require __DIR__ . '/api.php';

Route::get('/', function () {
    return view('login');
});

Route::middleware('auth')->group(function () {

    Route::get('/home', [HomeController::class, 'home'])->name('home');

    // Supervisor
    Route::post('register', [RegisteredUserController::class, 'store'])->name('register');
    Route::get('/proyectos/{id}', [ProyectoController::class, 'Proyectos'])->name('supervisor.proyectos');
    Route::get('/tecnicos', [UsuarioController::class, 'getTecnicos'])->name('director.tecnicos');
    Route::get('/distrito/otbs/{id}', [SupervisorController::class, 'Otbs'])->name('supervisor.otbs');
    Route::get('/acta/{id}', [SupervisorController::class, 'FormActa'])->name('supervisor.acta');
    Route::post('/agregar_acta', [SupervisorController::class, 'AgregarActa'])->name('supervisor.agregar-acta');
    Route::get('/actas/{id}', [SupervisorController::class, 'Actas'])->name('supervisor.actas');
    Route::get('/acta-editar/{id}', [SupervisorController::class, 'EditarActa'])->name('supervisor.acta-editar');
    Route::get('/acta-editar/{id}', [SupervisorController::class, 'EditarActa'])->name('supervisor.acta-editar');
    Route::put('/acta-actualizar/{id}', [SupervisorController::class, 'ActualizarActa'])->name('supervisor.acta-actualizar');
    //Tecnico 
    Route::get('proyecto-nuevo', [TecnicoController::class, 'FormProyecto'])->name('tecnico.registrar-proyecto');
    Route::get('/aperturas', [AperturaProgramaticaController::class, 'getAperturas']);
    Route::post('/agregar_proyecto', [TecnicoController::class, 'AgregarProyecto'])->name('tecnico.agregar-proyecto');
    Route::get('/asignados/{id}', [ProyectoController::class, 'TecnicoProyectos'])->name('tecnico.proyectos');
    Route::get('/avances/{id}', [TecnicoController::class, 'Avances'])->name('tecnico.proyecto.avances');
    Route::get('/Reportar_avance/{id}', [TecnicoController::class, 'FormAvance'])->name('tecnico.reportar.avance');
    Route::post('/agregar_avance', [TecnicoController::class, 'AgregarAvance'])->name('tecnico.agregar-avance');
    Route::get('/editar_avance/{id}', [AvanceController::class, 'EditarAvance'])->name('tecnico.editar-avance');
    Route::put('/actualizar_avance/{id}', [AvanceController::class, 'ActualizarAvance'])->name('tecnico.actualizar-avance');
    Route::get('editar/proyecto/{id}', [ProyectoController::class, 'EditarProyecto'])->name('tecnico.editar-proyecto');
    Route::put('/actualizar_proyecto/{id}', [ProyectoController::class, 'ActualizarProyecto'])->name('tecnico.actualizar-proyecto');
    //Director
    Route::get('/aperturas_programaticas', [AperturaProgramaticaController::class, 'Aperturas'])->name('director.aperturas_programaticas');
    Route::post('/agregar_apertura', [DirectorController::class, 'AgregarApertura'])->name('director.agregar-apertura');
    Route::get('/director/editar_apertura/{id}', [AperturaProgramaticaController::class, 'EditarApertura'])->name('director.editar-apertura');
    Route::put('/director/actualizar_apertura/{id}', [AperturaProgramaticaController::class, 'ActualizarApertura'])->name('director.actualizar-apertura');
    Route::get('/Proyecto', [DirectorController::class, 'FormProyecto'])->name('director.registrar-proyecto');
    Route::post('/director/agregar_proyecto', [DirectorController::class, 'AgregarProyecto'])->name('director.agregar-proyecto');
    Route::get('/usuarios', [UsuarioController::class, 'Usuarios'])->name('director.usuarios');
    Route::get('/inactivos', [UsuarioController::class, 'UsuariosInactivos'])->name('director.inactivos');
    Route::get('/usuario-nuevo', [DirectorController::class, 'NuevoUsuario'])->name('director.usuario-nuevo');
    Route::get('usuario/{id}/editar', [UsuarioController::class, 'edit'])->name('usuario.editar');
    Route::put('usuario/actualizar', [UsuarioController::class, 'update'])->name('usuario.actualizar');
    Route::put('usuario/eliminar', [UsuarioController::class, 'delete'])->name('usuario.eliminar');
    Route::put('usuario/activar', [UsuarioController::class, 'activar'])->name('usuario.activar');
    Route::get('/reformulados', [DirectorController::class, 'Reformulados'])->name('director.reformulados');
    Route::post('/director/agregar_reformulado', [DirectorController::class, 'AgregarReformulado'])->name('director.agregar-reformulado');
    Route::get('/director/editar_reformulado/{id}', [DirectorController::class, 'EditarReformulario'])->name('director.editar-reformulado');
    Route::put('/director/actualizar_reformulado/{id}', [DirectorController::class, 'ActualizarReformulario'])->name('director.actualizar-reformulado');
    //PDFs
    Route::get('/acta/pdf/{id}', [pdfController::class, 'ActaVista'])->name('acta-vista.pdf');
    Route::get('/actas/pdf/{id}', [pdfController::class, 'ActaPdf'])->name('actas.pdf');
    Route::post('/generar-reporte', [pdfController::class, 'Reportes'])->name('generar.reporte');
    Route::post('/generar-reporte-pdf', [pdfController::class, 'DescargarReporte'])->name('generar.reporte.pdf');
    Route::post('/reporte-proyectos/{id}', [pdfcontroller::class, 'ReportesAsignados'])->name('tecnico.reportes-proyectos');
    Route::post('/descargar-proyectos/{id}', [pdfcontroller::class, 'DescargarAsignados'])->name('tecnico.descargar-reporte');
    Route::get('/reporte-avances/{id}', [pdfcontroller::class, 'ReportesAvances'])->name('tecnico.reportes-avances');
    Route::get('/descargar-avances/{id}', [pdfcontroller::class, 'DescargarAvances'])->name('tecnico.descargar-avances');
});
