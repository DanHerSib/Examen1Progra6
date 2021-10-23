using BD;
using Microsoft.Extensions.DependencyInjection;
using WBL;

namespace WebApp
{
    public static class ContainerExtensions
    {

        public static IServiceCollection AddDIContainer(this IServiceCollection services)
        {
            services.AddSingleton<IDataAccess, DataAccess>();
            services.AddTransient<ITipoInquilinoService, TipoInquilinoService>();

            return services;
        }
    }
}
