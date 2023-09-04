# VulkanIntro
Basic Vulkan project from following [The Vulkan Tutorial](https://vulkan-tutorial.com/Introduction)

Build for VS2022 with `build_premake.bat` and build *.spv files with `build_spv.bat`

In Source.cpp comment or uncomment the line below to choose whether you want to run VkRenderer (load 3d model) or ComputeRenderer (compute particle sim).

 ```c++
 #define VK_RENDERER
```

Requires these vcpkg packages and vcpkg IDE intergration:

```
glm
glfw
```

