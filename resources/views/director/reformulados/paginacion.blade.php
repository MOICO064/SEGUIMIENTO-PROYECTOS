@if ($reformulados->hasPages())
<div class="d-flex justify-content-between align-items-center my-3">
    <div>
        <p class="mb-0">
            Mostrando del
            <strong>{{ $reformulados->firstItem() }}</strong>
            al
            <strong>{{ $reformulados->lastItem() }}</strong>
            de
            <strong>{{ $reformulados->total() }}</strong> resultados
        </p>
    </div>
    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
            @if ($reformulados->onFirstPage())
            <li class="page-item disabled">
                <span class="page-link">Previous</span>
            </li>
            @else
            <li class="page-item">
                <a class="page-link" href="{{ $reformulados->previousPageUrl() }}" rel="prev">Previous</a>
            </li>
            @endif
            @for ($i = 1; $i <= $reformulados->lastPage(); $i++)
                @if ($i == $reformulados->currentPage())
                <li class="page-item active"><span class="page-link">{{ $i }}</span></li>
                @else
                <li class="page-item"><a class="page-link" href="{{ $reformulados->url($i) }}">{{ $i }}</a></li>
                @endif
                @endfor

                @if ($reformulados->hasMorePages())
                <li class="page-item">
                    <a class="page-link" href="{{ $reformulados->nextPageUrl() }}" rel="next">Next</a>
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