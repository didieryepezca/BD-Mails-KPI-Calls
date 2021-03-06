#pragma checksum "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Desembolsos\CargarDesembolsos.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "d173880ae82a612f1eea6765e73b1d26d63c8664"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Desembolsos_CargarDesembolsos), @"mvc.1.0.view", @"/Views/Desembolsos/CargarDesembolsos.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"d173880ae82a612f1eea6765e73b1d26d63c8664", @"/Views/Desembolsos/CargarDesembolsos.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"b09abb528fd0ecab4e6694fb356e3bbb30df1d2d", @"/Views/_ViewImports.cshtml")]
    public class Views_Desembolsos_CargarDesembolsos : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("forms-sample"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
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
#line 2 "C:\Workspace\EmailSenderOpplus\EmailSenderOpplus\Views\Desembolsos\CargarDesembolsos.cshtml"
  
    ViewData["Title"] = "CargarDesembolsos";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
<script type=""text/javascript"">

    function UploadFileCSV() {

        var vNombreTxt = $('#nombreArchivo').val();

        $.ajax({
            type: ""POST"",
            url: ""/Desembolsos/CargarDesembolsosCSV?vNombre="" + vNombreTxt,
            contentType: false,
            processData: false,
            success: function (jres) {

                console.log(jres);

                if (jres == ""OK"") {
                    ///-------------------
                    Swal.fire('Cargado!', 'Se Cargo el Archivo correctamente', 'success')
                    //window.location.href = ""http://172.17.1.38:8074/Refinanciados/Lista"";

                    //--------------------
                } else {
                    Swal.fire('ERROR', 'No se pudo cargar, revisa el archivo', 'warning')
                }

            },

        });
    }
</script>


<div class=""page-header"">
    <h3 class=""page-title""> Cargar Data de Desembolsos de Convenios</h3>
    <nav aria-label=""breadc");
            WriteLiteral(@"rumb"">
        <ol class=""breadcrumb"">
            <li class=""breadcrumb-item""><a href=""#"">Datos</a></li>
            <li class=""breadcrumb-item active"" aria-current=""page"">Cargar Datos de Desembolsos Convenios</li>
        </ol>
    </nav>
</div>


<div class=""row"">

    <div class=""col-md-6 grid-margin stretch-card"">
        <div class=""card"">
            <div class=""card-body"">
                <h4 class=""card-title"">Cargar archivo .CSV</h4>
                <p class=""card-description""> Escriba en la caja el nombre de su archivo correctamente</p>
                ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "d173880ae82a612f1eea6765e73b1d26d63c86645591", async() => {
                WriteLiteral(@"
                    <div class=""form-group"">
                        <label for=""exampleInputUsername1"">Archivo</label>
                        <input type=""text"" class=""form-control"" id=""nombreArchivo"">
                    </div>

                    <a class=""btn btn-primary mr-2"" onclick=""UploadFileCSV()"">Cargar Base ! </a>

                ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n\r\n");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
