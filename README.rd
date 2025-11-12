# 🎩 Calculadora de Material para Sombreros

Esta es una aplicación web progresiva (PWA) simple, diseñada para calcular la cantidad de material necesario para construir un sombrero de copa (como el de las fotos) a partir de sus plantillas 2D. La aplicación es 100% offline y está diseñada para ser una herramienta educativa interactiva.

## 🚀 Características

* **Flujo Interactivo Paso a Paso:** La aplicación guía al usuario a través de 3 vistas principales:
    1.  **Ala (Dona):** Calcula el área y perímetro del ala del sombrero.
    2.  **Copa (Plantilla 2D):** Calcula el área de la parte rectangular (h1) y las puntas triangulares (h2).
    3.  **Vista 3D:** Muestra una simulación del sombrero ensamblado y el área total del material.
* **Visualización con Canvas:** Utiliza HTML Canvas para dibujar las plantillas 2D (la dona, los rectángulos y los triángulos) y una simulación 3D del sombrero final.
* **PWA (Progressive Web App):** Es completamente instalable en un dispositivo móvil gracias a un Service Worker (`sw.js`) y un `manifest.json`, permitiendo su uso sin conexión a internet.
* **Cálculos Detallados:** Muestra las fórmulas y los cálculos para cada parte del sombrero a medida que el usuario avanza.

## 🛠️ Estructura del Proyecto

Este proyecto consta de 3 archivos esenciales para funcionar en un servidor (como GitHub Pages):

1.  `index.html`: El archivo principal que contiene todo el HTML, CSS y JavaScript de la aplicación.
2.  `manifest.json`: El manifiesto de la aplicación web que la hace instalable.
3.  `sw.js`: El Service Worker que gestiona la caché y permite el funcionamiento offline.

## ⚙️ Cómo Usarlo

1.  **Ingresar Datos:** En la pantalla principal, introduce los 4 valores requeridos:
    * **Radio Externo (Ala):** El radio total del ala.
    * **Radio Interno (Cabeza):** El radio del hueco para la cabeza.
    * **Altura Rectángulo (h1):** La altura de la parte cilíndrica de la copa.
    * **Altura Triángulo (h2):** La altura de las puntas de la copa.
2.  **Iniciar Simulación:** Presiona el botón "Dibujar Sombrero".
3.  **Navegar Paso a Paso:**
    * Usa el botón flotante (➡️) para avanzar por cada paso del cálculo (dibujo del ala, cálculo del hueco, dibujo de la copa, etc.).
    * Usa el botón de regreso (⬅️) en la esquina superior para reiniciar la simulación.
4.  **Ver Resultados:** Sigue los 12 pasos interactivos para ver cómo se calcula el área de cada componente y, finalmente, el área total del material.