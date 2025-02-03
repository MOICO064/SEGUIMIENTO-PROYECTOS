@if ($proyectos->hasPages())
<div class="d-flex justify-content-between align-items-center my-3">
    {{-- Información de la paginación --}}
    <div>
        <p class="mb-0">
            Mostrando del
            <strong>{{ $proyectos->firstItem() }}</strong>
            al
            <strong>{{ $proyectos->lastItem() }}</strong>
            de
            <strong>{{ $proyectos->total() }}</strong> resultados
        </p>
    </div>
    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
            @if ($proyectos->onFirstPage())
            <li class="page-item disabled">
                <span class="page-link">Previous</span>
            </li>
            @else
            <li class="page-item">
                <a class="page-link" href="{{ $proyectos->previousPageUrl() }}" rel="prev">Previous</a>
            </li>
            @endif
            @for ($i = 1; $i <= $proyectos->lastPage(); $i++)
                @if ($i == $proyectos->currentPage())
                <li class="page-item active"><span class="page-link">{{ $i }}</span></li>
                @else
                <li class="page-item"><a class="page-link" href="{{ $proyectos->url($i) }}">{{ $i }}</a></li>
                @endif
                @endfor

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