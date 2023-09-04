/**/

#include "renderer.h"

// if it is defined load 3d house otherwise load compute shader
#define VK_RENDERER
#ifdef VK_RENDERER
    #include "vkRender.h"
#else
    #include "computeRenderer.h"
#endif



int main() {
    renderer* app = nullptr;
#ifdef VK_RENDERER
    VkRenderer vkRend;
    app = &vkRend;
#else
    computeRenderer compRend;
    app = &compRend;
#endif // VK_RENDERER

    try {
        app->run();
    }
    catch (const std::exception& e) {
        std::cerr << e.what() << std::endl;
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
/**/

