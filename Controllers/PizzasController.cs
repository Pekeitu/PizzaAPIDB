using Microsoft.AspNetCore.Mvc;
using TP1Dai.Models;

namespace TP1Dai.Controllers;

[ApiController]
[Route("api/[controller]")]
public class PizzaController : ControllerBase
{

    private readonly ILogger<Pizza> _logger;

    public PizzaController(ILogger<Pizza> logger)
    {
        _logger = logger;
    }

    [HttpGet]
    public IActionResult GetAll()
    {
        return Ok(db.getAllPizzas());
    }

    [HttpGet("id")]
    public IActionResult GetById(int id)
    {
        return Ok(db.getPizzaById(id));
    }

    [HttpPost]
    public IActionResult Create(Pizza pizza)
    {
        return Ok(db.createPizza(pizza));
    }

    [HttpPut]
    public IActionResult Update(Pizza pizza)
    {
        return Ok(db.updatePizza(pizza));
    }

    [HttpDelete("id")]
    public IActionResult DeleteById(int id)
    {
        return Ok(db.deletePizza(id));
    }
}