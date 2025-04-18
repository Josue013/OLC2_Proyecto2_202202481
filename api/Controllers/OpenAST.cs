using System;
using System.IO;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace api.Controllers
{
    [Route("[controller]")]
    public class OpenAST : Controller
    {
        private readonly ILogger<OpenAST> _logger;

        public OpenAST(ILogger<OpenAST> logger)
        {
            _logger = logger;
        }

        // GET /openast
        [HttpGet]
        public IActionResult Get()
        {
            try
            {
                string imageFile = "Reportes/ReporteAST.svg";

                if (!System.IO.File.Exists(imageFile))
                {
                    return NotFound(new { error = "El archivo AST no existe" });
                }

                // Leer el archivo
                var imageBytes = System.IO.File.ReadAllBytes(imageFile);
                
                // Devolver la imagen
                return File(imageBytes, "image/svg+xml");
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error al abrir el AST");
                return StatusCode(500, new { error = "Error al abrir el AST" });
            }
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View("Error!");
        }
    }
}