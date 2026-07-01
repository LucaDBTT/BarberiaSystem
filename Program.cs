using Microsoft.EntityFrameworkCore;
using Barberia.Datos;

var builder = WebApplication.CreateBuilder(args);

// 1. REGISTRAR EL DBCONTEXT (Tu conexión a SQL Server)
builder.Services.AddDbContext<BarberiaDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("CadenaBarberia")));

// Add services to the container.
builder.Services.AddControllers();

//builder.Services.AddOpenApi();

var app = builder.Build();

 //if (app.Environment.IsDevelopment())
//{
    //app.MapOpenApi();
//}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
