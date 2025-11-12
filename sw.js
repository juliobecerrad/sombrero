const CACHE_NAME = 'sombrero-cache-v2';
const urlsToCache = [
  './', // Esto cachea la carpeta raíz (index.html)
  './sombrero.html' // Especifica el archivo principal
  // Si tuvieras CSS o JS externos, los añadirías aquí
];

// Instalar el Service Worker
self.addEventListener('install', event => {
  event.waitUntil(
    caches.open(CACHE_NAME)
      .then(cache => {
        console.log('Cache abierta');
        return cache.addAll(urlsToCache);
      })
  );
});

// Interceptar peticiones de red
self.addEventListener('fetch', event => {
  event.respondWith(
    caches.match(event.request)
      .then(response => {
        // Devuelve desde la caché si existe, o si no, búscalo en la red
        return response || fetch(event.request);
      }
    )
  );

});
