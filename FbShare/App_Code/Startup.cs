using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FbShare.Startup))]
namespace FbShare
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
