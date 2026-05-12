```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MARÍA - Centro de Mando</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        body { background-color: #0f172a; color: #f8fafc; font-family: sans-serif; }
        .glass { background: rgba(30, 41, 59, 0.7); backdrop-filter: blur(10px); border: 1px solid rgba(255,255,255,0.1); }
        .locked { filter: grayscale(1); opacity: 0.6; cursor: not-allowed; }
    </style>
</head>
<body class="min-h-screen flex flex-col p-4">

    <!-- Encabezado -->
    <header class="text-center py-8">
        <div class="inline-block p-4 rounded-full border-4 border-slate-500 mb-4">
            <!-- Icono de Columna y Llama (SVG) -->
            <svg width="60" height="60" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M4 22h16M7 22V11a5 5 0 0 1 10 0v11M12 2v4M8 4l2 2M16 4l-2 2"/>
            </svg>
        </div>
        <h1 class="text-3xl font-bold tracking-tighter">MARÍA</h1>
        <p class="text-slate-400 text-sm italic">Manual de Aprendizaje Real e Inversión Autónoma</p>
    </header>

    <!-- Mensaje de Bienvenida -->
    <section class="mb-8 p-4 glass rounded-2xl text-center">
        <p class="text-blue-300 font-semibold mb-2">Bienvenido, Guerrero.</p>
        <p class="text-sm">Selecciona tu nivel de instrucción para comenzar.</p>
    </section>

    <!-- Lista de Fases -->
    <main class="space-y-4">
        <!-- Fase 1 -->
        <div onclick="abrirFase(1)" class="p-5 glass rounded-2xl flex items-center justify-between cursor-pointer hover:bg-slate-800 transition">
            <div class="flex items-center">
                <div class="w-10 h-10 bg-green-900/30 rounded-lg flex items-center justify-center mr-4">
                    <span class="text-green-500 font-bold">I</span>
                </div>
                <div>
                    <h3 class="font-bold">FASE 1: RAÍCES</h3>
                    <p class="text-xs text-green-400 font-medium uppercase tracking-widest">Desbloqueado</p>
                </div>
            </div>
            <svg class="w-5 h-5 text-slate-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path d="M9 5l7 7-7 7"/></svg>
        </div>

        <!-- Fase 2 -->
        <div onclick="mostrarBloqueo(2)" class="locked p-5 glass rounded-2xl flex items-center justify-between">
            <div class="flex items-center">
                <div class="w-10 h-10 bg-orange-900/30 rounded-lg flex items-center justify-center mr-4">
                    <span class="text-orange-500 font-bold">II</span>
                </div>
                <div>
                    <h3 class="font-bold">FASE 2: ASISTENCIA</h3>
                    <p class="text-xs text-orange-400 font-medium uppercase tracking-widest text-slate-500">Bloqueado</p>
                </div>
            </div>
            <svg class="w-5 h-5 text-slate-500" fill="currentColor" viewBox="0 0 24 24"><path d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z"/></svg>
        </div>

        <!-- Fase 3 -->
        <div onclick="mostrarBloqueo(3)" class="locked p-5 glass rounded-2xl flex items-center justify-between">
            <div class="flex items-center">
                <div class="w-10 h-10 bg-red-900/30 rounded-lg flex items-center justify-center mr-4">
                    <span class="text-red-500 font-bold">III</span>
                </div>
                <div>
                    <h3 class="font-bold">FASE 3: PODER</h3>
                    <p class="text-xs text-red-400 font-medium uppercase tracking-widest text-slate-500">Bloqueado</p>
                </div>
            </div>
            <svg class="w-5 h-5 text-slate-500" fill="currentColor" viewBox="0 0 24 24"><path d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z"/></svg>
        </div>

        <!-- Fase 4 -->
        <div onclick="mostrarBloqueo(4)" class="locked p-5 glass rounded-2xl flex items-center justify-between">
            <div class="flex items-center">
                <div class="w-10 h-10 bg-purple-900/30 rounded-lg flex items-center justify-center mr-4">
                    <span class="text-purple-500 font-bold">IV</span>
                </div>
                <div>
                    <h3 class="font-bold">FASE 4: MAESTRÍA</h3>
                    <p class="text-xs text-purple-400 font-medium uppercase tracking-widest text-slate-500">Bloqueado</p>
                </div>
            </div>
            <svg class="w-5 h-5 text-slate-500" fill="currentColor" viewBox="0 0 24 24"><path d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z"/></svg>
        </div>
    </main>

    <!-- Modal de Pago -->
    <div id="modal" class="hidden fixed inset-0 bg-black/80 flex items-center justify-center p-6 z-50">
        <div class="glass p-8 rounded-3xl w-full max-w-sm text-center">
            <h2 class="text-xl font-bold text-orange-400 mb-4">ACCESO RESTRINGIDO</h2>
            <p class="text-sm text-slate-300 mb-6">Para desbloquear este nivel de soberanía y financiar al Maestro, realiza tu aportación de inversión autónoma.</p>
            <div class="bg-white p-2 inline-block rounded-lg mb-6">
                <p class="text-black text-xs font-bold">[CÓDIGO QR DE PAGO]</p>
            </div>
            <button onclick="cerrarModal()" class="w-full py-3 bg-blue-600 rounded-xl font-bold">ENTENDIDO</button>
        </div>
    </div>

    <!-- Pantalla de Fase 1 (Simulada) -->
    <div id="pantallaFase1" class="hidden fixed inset-0 bg-slate-900 overflow-y-auto p-6 z-40">
        <button onclick="cerrarFase()" class="mb-6 text-blue-400 flex items-center">
            <svg class="w-5 h-5 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path d="M15 19l-7-7 7-7"/></svg> Atrás
        </button>
        <h2 class="text-2xl font-bold mb-4">MÓDULO: RAÍCES</h2>
        <div class="space-y-4">
            <div class="p-4 glass rounded-xl border-l-4 border-blue-500">
                <h4 class="font-bold">1.1 Escudo Mental</h4>
                <p class="text-xs text-slate-400">Cómo detectar mentiras en los medios oficiales.</p>
            </div>
            <div class="p-4 glass rounded-xl border-l-4 border-green-500">
                <h4 class="font-bold">1.2 Valor Real</h4>
                <p class="text-xs text-slate-400">Manual práctico de la Onza Libertad.</p>
            </div>
        </div>
    </section>

    <script>
        function mostrarBloqueo(num) {
            document.getElementById('modal').classList.remove('hidden');
        }
        function cerrarModal() {
            document.getElementById('modal').classList.add('hidden');
        }
        function abrirFase(num) {
            if(num === 1) document.getElementById('pantallaFase1').classList.remove('hidden');
        }
        function cerrarFase() {
            document.getElementById('pantallaFase1').classList.add('hidden');
        }
    </script>
</body>
</html>

```
