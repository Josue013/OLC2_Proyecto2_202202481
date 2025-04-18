using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace api.Controllers
{
    [Route("[controller]")]
    public class OpenError : Controller
    {
        private readonly ILogger<OpenError> _logger;

        public OpenError(ILogger<OpenError> logger)
        {
            _logger = logger;
        }

        // GET /openerror
        [HttpGet]
        public IActionResult Get()
        {
            try
            {
                string ArchivoHTML = "Reportes/ReporteErrores.html";

                if (!System.IO.File.Exists(ArchivoHTML))
                {
                    return NotFound(new { error = "El archivo de errores no existe" });
                }

                // Leer el archivo
                var ContenidoHTML = System.IO.File.ReadAllText(ArchivoHTML);
                // Devolver el contenido
                return Content(ContenidoHTML, "text/html");
            }
            catch (System.Exception ex)
            {
                _logger.LogError(ex, "Error al abrir el reporte de errores");
                return StatusCode(500, new { error = "Error al abrir el reporte de errores" });
            }
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View("Error!");
        }

    }
}