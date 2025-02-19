project "ImGui"
    kind "StaticLib"
    language "C++"

    targetdir ("Binaries/" .. outputdir .. "/%{prj.name}")
    objdir ("Intermediate/" .. outputdir .. "/%{prj.name}")

    files
    {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_tables.cpp",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp",
    }

    filter "system:windows"
    systemversion "latest"
    cppdialect "C++20"
    staticruntime "On"

    filter { "system:windows", "configurations:Release" }
        buildoptions { "/MT", "/utf-8" }
