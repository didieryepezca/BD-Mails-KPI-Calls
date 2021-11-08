#pragma checksum "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Home\HistorialEnvios.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "f9b59652d8e535bda5179785b0667802f5c19168"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Home_HistorialEnvios), @"mvc.1.0.view", @"/Views/Home/HistorialEnvios.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"f9b59652d8e535bda5179785b0667802f5c19168", @"/Views/Home/HistorialEnvios.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"b09abb528fd0ecab4e6694fb356e3bbb30df1d2d", @"/Views/_ViewImports.cshtml")]
    public class Views_Home_HistorialEnvios : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<IEnumerable<EmailSenderOpplus.Models.Entities.CITAS_MAIL_HISTORIAL>>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "HistorialEnvios", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("method", "post", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
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
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 3 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Home\HistorialEnvios.cshtml"
  
    ViewData["Title"] = "HistorialEnvios";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
<div class=""page-header"">
    <h3 class=""page-title""> Historial de Emails enviados </h3>
    <nav aria-label=""breadcrumb"">
        <ol class=""breadcrumb"">
            <li class=""breadcrumb-item""><a href=""#"">Envios</a></li>
            <li class=""breadcrumb-item active"" aria-current=""page""> Historial de Emails enviados</li>
        </ol>
    </nav>
</div>

");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "f9b59652d8e535bda5179785b0667802f5c191684554", async() => {
                WriteLiteral(@"
    
    <div class=""row"">

        <div class=""col-md-6 grid-margin stretch-card"">
            <div class=""card"">
                <div class=""card-body"">
                    <h4 class=""card-title"">Buscar Envios por Fecha de Envio</h4>
                    
");
#nullable restore
#line 26 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Home\HistorialEnvios.cshtml"
                      

                        string fecha_ingreso = ViewBag.fecha_hoy;

                        if (fecha_ingreso.Equals("0001-01-01"))
                        {
                            fecha_ingreso = DateTime.Today.ToString("yyyy-MM-dd");
                        }
                    

#line default
#line hidden
#nullable disable
                WriteLiteral("                        <div class=\"form-group\">\r\n                            <label for=\"exampleInputUsername1\">Fecha</label>\r\n                            <input type=\"date\" class=\"form-control\"\r\n                                   name=\"fecEnvio\"");
                BeginWriteAttribute("value", " value=\"", 1436, "\"", 1458, 1);
#nullable restore
#line 39 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Home\HistorialEnvios.cshtml"
WriteAttributeValue("", 1444, fecha_ingreso, 1444, 14, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral(">\r\n                        </div>\r\n\r\n                        <button type=\"submit\" class=\"btn btn-primary mr-2\">Buscar</button>\r\n\r\n");
                WriteLiteral(@"                </div>
            </div>
        </div>





        <div class=""col-lg-12 grid-margin stretch-card"">
            <div class=""card"">
                <div class=""card-body"">
                    <h4 class=""card-title"">Informacion de Citas Enviadas</h4>

                    <table class=""table table-striped"">

                        <thead>
                            <tr>
                                <th>#</th>
                                <th>
                                    ");
#nullable restore
#line 64 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Home\HistorialEnvios.cshtml"
                               Write(Html.DisplayNameFor(model => model.estado));

#line default
#line hidden
#nullable disable
                WriteLiteral("\r\n                                </th>\r\n                                <th>\r\n                                    ");
#nullable restore
#line 67 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Home\HistorialEnvios.cshtml"
                               Write(Html.DisplayNameFor(model => model.fecha_hora_cita_envio));

#line default
#line hidden
#nullable disable
                WriteLiteral("\r\n                                </th>\r\n                                <th>\r\n                                    ");
#nullable restore
#line 70 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Home\HistorialEnvios.cshtml"
                               Write(Html.DisplayNameFor(model => model.DNI));

#line default
#line hidden
#nullable disable
                WriteLiteral("\r\n                                </th>\r\n                                <th>\r\n                                    ");
#nullable restore
#line 73 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Home\HistorialEnvios.cshtml"
                               Write(Html.DisplayNameFor(model => model.nombres));

#line default
#line hidden
#nullable disable
                WriteLiteral("\r\n                                </th>\r\n                                <th>\r\n                                    ");
#nullable restore
#line 76 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Home\HistorialEnvios.cshtml"
                               Write(Html.DisplayNameFor(model => model.fecha_cita));

#line default
#line hidden
#nullable disable
                WriteLiteral("\r\n                                </th>\r\n                                <th>\r\n                                    ");
#nullable restore
#line 79 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Home\HistorialEnvios.cshtml"
                               Write(Html.DisplayNameFor(model => model.hora_cita));

#line default
#line hidden
#nullable disable
                WriteLiteral("\r\n                                </th>\r\n                                <th>\r\n                                    ");
#nullable restore
#line 82 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Home\HistorialEnvios.cshtml"
                               Write(Html.DisplayNameFor(model => model.banco));

#line default
#line hidden
#nullable disable
                WriteLiteral("\r\n                                </th>\r\n\r\n                            </tr>\r\n                        </thead>\r\n\r\n\r\n                        <tbody>\r\n");
#nullable restore
#line 90 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Home\HistorialEnvios.cshtml"
                               int contador = 1; 

#line default
#line hidden
#nullable disable
#nullable restore
#line 91 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Home\HistorialEnvios.cshtml"
                             foreach (var item in Model)
                            {

#line default
#line hidden
#nullable disable
                WriteLiteral("                             <tr>\r\n\r\n                                <td>");
#nullable restore
#line 95 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Home\HistorialEnvios.cshtml"
                               Write(contador);

#line default
#line hidden
#nullable disable
                WriteLiteral("</td>\r\n\r\n");
#nullable restore
#line 97 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Home\HistorialEnvios.cshtml"
                                 if (item.estado == "ENVIADA")
                                {

#line default
#line hidden
#nullable disable
                WriteLiteral("                                    <td>\r\n                                        <label class=\"badge badge-success\">");
#nullable restore
#line 100 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Home\HistorialEnvios.cshtml"
                                                                      Write(Html.DisplayFor(modelItem => item.estado));

#line default
#line hidden
#nullable disable
                WriteLiteral("</label>\r\n                                    </td>\r\n");
#nullable restore
#line 102 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Home\HistorialEnvios.cshtml"
                                }
                                else
                                {

#line default
#line hidden
#nullable disable
                WriteLiteral("                                    <td>\r\n                                        <label class=\"badge badge-danger\">");
#nullable restore
#line 106 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Home\HistorialEnvios.cshtml"
                                                                     Write(Html.DisplayFor(modelItem => item.estado));

#line default
#line hidden
#nullable disable
                WriteLiteral("</label>\r\n                                    </td>\r\n");
#nullable restore
#line 108 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Home\HistorialEnvios.cshtml"
                                }

#line default
#line hidden
#nullable disable
                WriteLiteral("                                <td>\r\n                                    ");
#nullable restore
#line 110 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Home\HistorialEnvios.cshtml"
                               Write(Html.DisplayFor(modelItem => item.fecha_hora_cita_envio));

#line default
#line hidden
#nullable disable
                WriteLiteral("\r\n                                </td>\r\n\r\n                                <td>\r\n                                    ");
#nullable restore
#line 114 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Home\HistorialEnvios.cshtml"
                               Write(Html.DisplayFor(modelItem => item.DNI));

#line default
#line hidden
#nullable disable
                WriteLiteral("\r\n                                </td>\r\n                                <td>\r\n                                    ");
#nullable restore
#line 117 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Home\HistorialEnvios.cshtml"
                               Write(Html.DisplayFor(modelItem => item.nombres));

#line default
#line hidden
#nullable disable
                WriteLiteral("\r\n                                </td>\r\n                                <td>\r\n                                    ");
#nullable restore
#line 120 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Home\HistorialEnvios.cshtml"
                               Write(Html.DisplayFor(modelItem => item.fecha_cita));

#line default
#line hidden
#nullable disable
                WriteLiteral("\r\n                                </td>\r\n                                <td>\r\n                                    ");
#nullable restore
#line 123 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Home\HistorialEnvios.cshtml"
                               Write(Html.DisplayFor(modelItem => item.hora_cita));

#line default
#line hidden
#nullable disable
                WriteLiteral("\r\n                                </td>\r\n                                <td>\r\n                                    ");
#nullable restore
#line 126 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Home\HistorialEnvios.cshtml"
                               Write(Html.DisplayFor(modelItem => item.banco));

#line default
#line hidden
#nullable disable
                WriteLiteral("\r\n                                </td>\r\n\r\n\r\n                            </tr>\r\n");
#nullable restore
#line 131 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Home\HistorialEnvios.cshtml"

                             contador = contador + 1;
                            }

#line default
#line hidden
#nullable disable
                WriteLiteral("                        </tbody>\r\n\r\n                    </table>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n\r\n\r\n    ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Action = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Method = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n\r\n\r\n\r\n");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<IEnumerable<EmailSenderOpplus.Models.Entities.CITAS_MAIL_HISTORIAL>> Html { get; private set; }
    }
}
#pragma warning restore 1591