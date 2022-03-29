using Avalonia.Web.Blazor;

namespace AvaloniaInWB.Web;

public partial class App
{
    protected override void OnParametersSet()
    {
        base.OnParametersSet();
        
        WebAppBuilder.Configure<AvaloniaInWB.App>()
            .SetupWithSingleViewLifetime();
    }
}