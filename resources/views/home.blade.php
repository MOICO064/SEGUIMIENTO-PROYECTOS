@extends('layouts.main')
@section('content')
<div class="container px-4">
    <h3 class="mb-3 text-gray-800 mx-2">DATOS GENERALES</h3>
    <div class="d-flex flex-wrap gap-3">
        <div class="col-12 col-xl-3 col-md-5">
            <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">TOTAL DE PROYECTOS EJECUTADOs EN TODA LA GESTIÓN</div>
                            <div class="h5 mt-3 font-weight-bold text-gray-800">
                                <p>{{$TotalProyectos}} Proyectos</p>
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-project-diagram fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-12 col-xl-3 col-md-5 ">
            <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">MONTO TOTAL DE INVERSIÓN EN PROYECTOS</div>
                            <div class="h5 mt-4 font-weight-bold text-gray-800">
                                <p>{{ number_format($GastoTotal, 0, ',', '.') }} Bs. </p>
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-money-bill-wave fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-12 col-xl-3 col-md-5 ">
            <div class="card border-left-info shadow h-100 py-4">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col">
                            <div class="text-xs font-weight-bold text-info text-uppercase mb-2">EJECUCIÓN GESTIÓN ACTUAL</div>
                            <div class=" no-gutters align-items-center mt-4">
                                <div class="progress progress-sm mr-2">
                                    <div class="progress-bar bg-info" role="progressbar" style="width: {{$promedio}}%" aria-valuenow="{{$promedio}}" aria-valuemin="0" aria-valuemax="100">
                                        <span class="progress-text ">{{ number_format($promedio, 2) }}%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-chart-bar fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <h3 class="mb-3 text-gray-800 my-4 mx-2">PROYECTOS POR DIRECCIÓN</h3>
    <div class="d-flex flex-wrap gap-3">
        <div class="col-12 col-lg-5 col-md-4">
            <div class="card bg-success text-white shadow">
                <div class="card-body">
                    OBRAS PÚBLICAS
                    <div class="text-white-50 small">
                        <p>{{$obras}} Proyectos</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-12 col-lg-5 col-md-4" input type="button">
            <div class="card bg-warning text-white shadow">
                <div class="card-body">
                    SANEAMIENTO BÁSICO
                    <div class="text-white-50 small">
                        <p>{{$saneamiento}} Proyectos</P>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection