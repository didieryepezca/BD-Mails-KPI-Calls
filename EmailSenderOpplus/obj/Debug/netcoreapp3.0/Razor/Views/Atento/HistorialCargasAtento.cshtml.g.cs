#pragma checksum "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Atento\HistorialCargasAtento.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "aeaadf3235deae7dd6d2d3abb42bb00ecfabf1f2"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Atento_HistorialCargasAtento), @"mvc.1.0.view", @"/Views/Atento/HistorialCargasAtento.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\_ViewImports.cshtml"
using EmailSenderOpplus;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\_ViewImports.cshtml"
using EmailSenderOpplus.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"aeaadf3235deae7dd6d2d3abb42bb00ecfabf1f2", @"/Views/Atento/HistorialCargasAtento.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"b09abb528fd0ecab4e6694fb356e3bbb30df1d2d", @"/Views/_ViewImports.cshtml")]
    public class Views_Atento_HistorialCargasAtento : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<IEnumerable<EmailSenderOpplus.Models.Entities.TB_HISTORIAL_CARGAS_ATTO>>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "Atento", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "CargarBasesAtento", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 3 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Atento\HistorialCargasAtento.cshtml"
  
    ViewData["Title"] = "HistorialCargasAtento";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n<div class=\"page-header\">\r\n    <h3 class=\"page-title\"> Historial de Archivos Cargados </h3>\r\n    <nav aria-label=\"breadcrumb\">\r\n        <ol class=\"breadcrumb\">\r\n            <li class=\"breadcrumb-item\">");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "aeaadf3235deae7dd6d2d3abb42bb00ecfabf1f24310", async() => {
                WriteLiteral("Cargar Bases ATENTO");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Controller = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral(@"</li>
            <li class=""breadcrumb-item active"" aria-current=""page""> Historial de Archivos Cargados</li>
        </ol>
    </nav>
</div>

<div class=""row"">
    <div class=""col-lg-12 grid-margin stretch-card"">
        <div class=""card"">
            <div class=""card-body"">
                <h4 class=""card-title"">Informacion de Archivos Cargados</h4>

                <table class=""table"">

                    <thead>
                        <tr>
                            <th>Estado de Archivo</th>
                            <th>Nombre de Archivo</th>
                            <th>Fecha y Hora de Carga</th>
                        </tr>
                    </thead>


                    <tbody>
");
#nullable restore
#line 35 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Atento\HistorialCargasAtento.cshtml"
                         foreach (var item in Model)
                        {

#line default
#line hidden
#nullable disable
            WriteLiteral("                            <tr>\r\n");
#nullable restore
#line 38 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Atento\HistorialCargasAtento.cshtml"
                                 if (item.estado == "CARGADO CON EXITO")
                                {

#line default
#line hidden
#nullable disable
            WriteLiteral("                                    <td>\r\n                                        <label class=\"badge badge-success\">");
#nullable restore
#line 41 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Atento\HistorialCargasAtento.cshtml"
                                                                      Write(Html.DisplayFor(modelItem => item.estado));

#line default
#line hidden
#nullable disable
            WriteLiteral("</label>\r\n                                    </td>\r\n");
#nullable restore
#line 43 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Atento\HistorialCargasAtento.cshtml"
                                }
                                else
                                {

#line default
#line hidden
#nullable disable
            WriteLiteral("                                    <td>\r\n                                        <label class=\"badge badge-danger\">");
#nullable restore
#line 47 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Atento\HistorialCargasAtento.cshtml"
                                                                     Write(Html.DisplayFor(modelItem => item.estado));

#line default
#line hidden
#nullable disable
            WriteLiteral("</label>\r\n                                    </td>\r\n");
#nullable restore
#line 49 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Atento\HistorialCargasAtento.cshtml"
                                }

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                                <td>\r\n                                    ");
#nullable restore
#line 52 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Atento\HistorialCargasAtento.cshtml"
                               Write(Html.DisplayFor(modelItem => item.archivo));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                                </td>\r\n                                <td>\r\n                                    ");
#nullable restore
#line 55 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Atento\HistorialCargasAtento.cshtml"
                               Write(Html.DisplayFor(modelItem => item.fecha));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                                </td>\r\n\r\n                            </tr>\r\n");
#nullable restore
#line 59 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Atento\HistorialCargasAtento.cshtml"
                        }

#line default
#line hidden
#nullable disable
            WriteLiteral("                    </tbody>\r\n\r\n                </table>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n</div>\r\n\r\n");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<IEnumerable<EmailSenderOpplus.Models.Entities.TB_HISTORIAL_CARGAS_ATTO>> Html { get; private set; }
    }
}
#pragma warning restore 1591
