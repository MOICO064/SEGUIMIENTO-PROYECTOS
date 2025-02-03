<?php

namespace App\View\Components;

use Illuminate\View\Component;

class ModalRegistar extends Component
{
    public $id;
    public $title;
    public $size;

    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct($id, $title, $size = 'modal-md')
    {
        $this->id = $id;
        $this->title = $title;
        $this->size = $size;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.modal-registar');
    }
}
