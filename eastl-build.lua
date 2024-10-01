project "EASTL"
kind "StaticLib"
language "C++"
staticruntime "off"

targetdir("../Binaries/" .. OutputDir .. "/%{prj.name}")
objdir("../Binaries/Intermediates/" .. OutputDir .. "/%{prj.name}")

includedirs
{
    "include/"
}

files
{
    "include/**.h",
    "source/**.cpp",
}

filter "system:windows"
systemversion "latest"
cppdialect "C++20"
toolset "clang"

filter "system:linux"
pic "On"
systemversion "latest"
cppdialect "C++20"
toolset "clang"

filter "configurations:Debug"
runtime "Debug"
symbols "on"

filter "configurations:Release"
runtime "Release"
optimize "on"

filter "configurations:Dist"
runtime "Release"
optimize "on"
symbols "off"
