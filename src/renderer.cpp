#include <iostream>

#ifndef M_PI
#define M_PI 3.14159
#endif

#include <ngl/NGLInit.h>
#include <ngl/Util.h>

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
                                SDL_WINDOW_OPENGL | SDL_WINDOW_RESIZABLE/* | SDL_WINDOW_BORDERLESS /*| SDL_WINDOW_FULLSCREEN*/ );

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

    glClearColor(1.0f, 1.0f, 1.0f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);

    ngl::NGLInit::instance();

    finalise();

    m_pSettings.m_trans.reset();
    m_pSettings.m_project = ngl::perspective( 60.0f, (float)m_w / (float)m_h, 0.01f, 10000.0f );
    m_pSettings.m_view = ngl::lookAt( ngl::Vec3(0.0f, 1.0f, 0.0f), ngl::Vec3(0.0f, 0.0f, 0.0f), ngl::Vec3(0.0f, 1.0f, 0.0f) );

    ngl::VAOPrimitives * prim = ngl::VAOPrimitives::instance();
    prim->createSphere("sphere", 1.0f, 12.0f);

    createShaderProgram( "blinn", "vMVPUVNV", "fBlinn" );

    ngl::ShaderLib * slib = ngl::ShaderLib::instance();
    std::cout << "slib check " << (slib == nullptr) << '\n';
    slib->use( "blinn" );

    ngl::Vec3 lightDir (0.4, -1.0, 0.0);
    lightDir.normalize();
    slib->setRegisteredUniform( "lightDir", lightDir );

    std::cout << "Renderer constructed!\n";
}

renderer::~renderer()
{
    SDL_DestroyWindow( m_window );

    SDL_Quit();
}

void renderer::createShaderProgram(const std::string _name, const std::string _vert, const std::string _frag)
{
    ngl::ShaderLib * slib = ngl::ShaderLib::instance();

    slib->createShaderProgram(_name);
    slib->attachShader(_vert, ngl::ShaderType::VERTEX);
    slib->attachShader(_frag, ngl::ShaderType::FRAGMENT);

    slib->loadShaderSource(_vert, "shaders/" + _vert + ".glsl");
    slib->loadShaderSource(_frag, "shaders/" + _frag + ".glsl");

    slib->compileShader(_vert);
    slib->compileShader(_frag);

    slib->attachShaderToProgram(_name, _vert);
    slib->attachShaderToProgram(_name, _frag);

    slib->linkProgramObject(_name);

    std::cout << "shader created\n";
}

void renderer::drawSphere(const ngl::Vec3 _pos, const float _radius, const ngl::Vec4 _colour)
{
    ngl::ShaderLib * slib = ngl::ShaderLib::instance();
    slib->use( "blinn" );
    slib->setRegisteredUniform( "colour", _colour );

    m_pSettings.m_trans.setPosition( _pos );
    m_pSettings.m_trans.setScale( _radius, _radius, _radius );

    ngl::VAOPrimitives * prim = ngl::VAOPrimitives::instance();

    loadMatricesToShader();

    prim->draw("sphere");
}

void renderer::finalise()
{
    //glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    SDL_GL_SwapWindow(m_window);
}

void renderer::loadMatricesToShader()
{
    ngl::Mat4 MVP = m_pSettings.m_trans.getMatrix() * m_pSettings.m_view * m_pSettings.m_project;
    ngl::ShaderLib * slib = ngl::ShaderLib::instance();
    slib->setRegisteredUniform("MVP", MVP);
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
