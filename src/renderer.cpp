#include <ngl/NGLInit.h>

#include "renderer.hpp"
#include "util.hpp"

renderer::renderer()
{
    SDLInit();

    m_w = 1920;
    m_h = 1080;

    m_window = SDL_CreateWindow("Captain Fractal: Attack of the Space Communists",
                                0, 0,
                                m_w, m_h,
                                SDL_WINDOW_OPENGL | SDL_WINDOW_RESIZABLE | SDL_WINDOW_BORDERLESS /*| SDL_WINDOW_FULLSCREEN*/ );

    if(!m_window)
        errorExit("Unable to create window");

    //Setting up the GL attributes before they can be used
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_CORE);

    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 4);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 3);

    SDL_GL_SetAttribute(SDL_GL_MULTISAMPLEBUFFERS, 1);
    SDL_GL_SetAttribute(SDL_GL_MULTISAMPLESAMPLES, 4);

    SDL_GL_SetAttribute(SDL_GL_DEPTH_SIZE, 16);
    SDL_GL_SetAttribute(SDL_GL_DOUBLEBUFFER, 1);

    m_gl_context = SDL_GL_CreateContext( m_window );

    if(!m_gl_context)
        errorExit("Unable to create GL context");

    makeCurrent();
    SDL_GL_SetSwapInterval(1);

    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);

    ngl::NGLInit::instance();

    finalise();
}

renderer::~renderer()
{

}

void renderer::finalise()
{
    //glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    SDL_GL_SwapWindow(m_window);
}

void renderer::SDLInit()
{
    if(SDL_Init(SDL_INIT_EVERYTHING) != 0)
    {
        errorExit("SDL initialisation failed");
    }

    if(TTF_Init() != 0)
    {
        errorExit("SDL TTF initialisation failed");
    }
}
