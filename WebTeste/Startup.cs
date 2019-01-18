using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebTeste.Startup))]
namespace WebTeste
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
