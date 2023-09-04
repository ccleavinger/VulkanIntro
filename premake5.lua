workspace "VulkanIntro"
    architecture "x64"

    configurations
    {
        "Debug",
        "Release"
    }

output_directory = "%{cfg.buildcfg}=%{cfg.system}-%{cfg.architecture}"


    project "VulkanProject"
        location "VulkanProject"

        language "C++"
        kind "ConsoleApp"

        targetdir("bin/" .. output_directory .. "/%{prj.name}")
        objdir("bin/int/" .. output_directory .. "/%{prj.name}")

        files
        {
            "%{prj.name}/**.h",
            "%{prj.name}/**.hpp",
            "%{prj.name}/**.cpp"
        }

        VULKAN_SDK = os.getenv("VULKAN_SDK")
        includedirs
        {
            "%{VULKAN_SDK}/Include"
        }
        links
        {
            "%{VULKAN_SDK}/Lib/vulkan-1.lib"
        }

        filter "system:windows"
            systemversion "latest"
            cppdialect "C++17"

        filter "configurations:Debug"
            defines "DEBUG"
            symbols "On"
        filter "configurations:Release"
            defines "NDEBUG"
            optimize "On"
