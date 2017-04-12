const bs = require('browser-sync');

bs.init({
	proxy: "localhost/detalhar-quickstart",
	serveStatic: ["/**/*"],
	browser: ["firefox", "chrome"],
});

bs.watch('./**/*.php').on('change', bs.reload);
bs.watch('./**/*.css').on('change', bs.reload);
bs.watch('./**/*.js').on('change', bs.reload);