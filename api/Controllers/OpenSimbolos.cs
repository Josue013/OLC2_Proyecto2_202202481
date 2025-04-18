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
    public class OpenSimbolos : Controller
    {
        private readonly ILogger<OpenSimbolos> _logger;

        public OpenSimbolos(ILogger<OpenSimbolos> logger)
        {
            _logger = logger;
        }

        [HttpGet]
        public IActionResult Get()
        {
            try
            {
                string ArchivoHTML = "Reportes/TablaSimbolos.html";

                if (!System.IO.File.Exists(ArchivoHTML))
                {
                    return NotFound(new { error = "El archivo de tabla de símbolos no existe" });
                }

                var ContenidoHTML = System.IO.File.ReadAllText(ArchivoHTML);
                return Content(ContenidoHTML, "text/html");
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error al abrir la tabla de símbolos");
                return StatusCode(500, new { error = "Error al abrir la tabla de símbolos" });
            }
        }
    }
}