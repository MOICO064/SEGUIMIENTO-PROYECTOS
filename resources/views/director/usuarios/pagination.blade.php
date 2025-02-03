@if ($usuarios->hasPages())
<div class="d-flex justify-content-between align-items-center my-3">
    <div>
        <p class="mb-0">
            Mostrando del
            <strong>{{ $usuarios->firstItem() }}</strong>
            al
            <strong>{{ $usuarios->lastItem() }}</strong>
            de
            <strong>{{ $usuarios->total() }}</strong> resultados
        </p>
    </div>
    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
            @if ($usuarios->onFirstPage())
            <li class="page-item disabled">
                <span class="page-link">Previous</span>
            </li>
            @else
            <li class="page-item">
                <a class="page-link" href="{{ $usuarios->previousPageUrl() }}" rel="prev">Previous</a>
            </li>
            @endif
            @for ($i = 1; $i <= $usuarios->lastPage(); $i++)
                @if ($i == $usuarios->currentPage())
                <li class="page-item active"><span class="page-link">{{ $i }}</span></li>
                @else
                <li class="page-item"><a class="page-link" href="{{ $usuarios->url($i) }}">{{ $i }}</a></li>
                @endif
                @endfor

                @if ($usuarios->hasMorePages())
                <li class="page-item">
                    <a class="page-link" href="{{ $usuarios->nextPageUrl() }}" rel="next">Next</a>
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