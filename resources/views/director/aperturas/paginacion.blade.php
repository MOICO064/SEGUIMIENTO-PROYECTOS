@if ($aperturas->hasPages())
<div class="d-flex justify-content-between align-items-center my-3">
    <div>
        <p class="mb-0">
            Mostrando del
            <strong>{{ $aperturas->firstItem() }}</strong>
            al
            <strong>{{ $aperturas->lastItem() }}</strong>
            de
            <strong>{{ $aperturas->total() }}</strong> resultados
        </p>
    </div>
    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
            @if ($aperturas->onFirstPage())
            <li class="page-item disabled">
                <span class="page-link">Previous</span>
            </li>
            @else
            <li class="page-item">
                <a class="page-link" href="{{ $aperturas->previousPageUrl() }}" rel="prev">Previous</a>
            </li>
            @endif
            @for ($i = 1; $i <= $aperturas->lastPage(); $i++)
                @if ($i == $aperturas->currentPage())
                <li class="page-item active"><span class="page-link">{{ $i }}</span></li>
                @else
                <li class="page-item"><a class="page-link" href="{{ $aperturas->url($i) }}">{{ $i }}</a></li>
                @endif
                @endfor

                @if ($aperturas->hasMorePages())
                <li class="page-item">
                    <a class="page-link" href="{{ $aperturas->nextPageUrl() }}" rel="next">Next</a>
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