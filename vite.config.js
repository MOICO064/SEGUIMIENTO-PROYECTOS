import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';

export default defineConfig({
    plugins: [
        laravel({
            input: [
                'resources/js/app.js',    
                'resources/css/app.css',  
                'resources/css/login.css',
                'resources/css/home.css',
                  ''
            ],
            refresh: true,
        }),
    ],
});
