@if ($proyectos->hasPages())
    <div class="d-flex justify-content-between align-items-center my-3">
        {{-- Información de la paginación --}}
        <div>
            <p class="mb-0">
                Mostrando 
                <strong>{{ $proyectos->firstItem() }}</strong> 
                al 
                <strong>{{ $proyectos->lastItem() }}</strong> 
                de 
                <strong>{{ $proyectos->total() }}</strong> resultados
            </p>
        </div>

        {{-- Navegación de la paginación --}}
        <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
                {{-- Botón "Anterior" --}}
                @if ($proyectos->onFirstPage())
                    <li class="page-item disabled">
                        <span class="page-link">Previous</span>
                    </li>
                @else
                    <li class="page-item">
                        <a class="page-link" href="{{ $proyectos->previousPageUrl() }}" rel="prev">Previous</a>
                    </li>
                @endif

                {{-- Números de página --}}
                @foreach ($elements as $element)
                    @if (is_string($element))
                        <li class="page-item disabled"><span class="page-link">{{ $element }}</span></li>
                    @endif

                    @if (is_array($element))
                        @foreach ($element as $page => $url)
                            @if ($page == $proyectos->currentPage())
                                <li class="page-item active"><span class="page-link">{{ $page }}</span></li>
                            @else
                                <li class="page-item"><a class="page-link" href="{{ $url }}">{{ $page }}</a></li>
                            @endif
                        @endforeach
                    @endif
                @endforeach

                {{-- Botón "Siguiente" --}}
                @if ($proyectos->hasMorePages())
                    <li class="page-item">
                        <a class="page-link" href="{{ $proyectos->nextPageUrl() }}" rel="next">Next</a>
                    </li>
                @else
                    <li class="page-item disabled">
                        <span class="page-link">Next</span>
                    </li>
                @endif
            </ul>
        </nav>
    </div>
@endif
