/*
===========================================================
            OpenGL Lesson 01:  Creating An OpenGL Window
===========================================================

  Authors Name: Jeff Molofee ( NeHe )

  Disclaimer:

  This program may crash your system or run poorly depending on your
  hardware.  The program and code contained in this archive was scanned
  for virii and has passed all test before it was put online.  If you
  use this code in project of your own, send a shout out to the author!

===========================================================
                NeHe Productions 1997-2004
===========================================================
*/

 /***************************************************************
 *  Project: $(project)
 *  Function : Main program
 ***************************************************************
 *  $Author: Jeff Molofee 2000 ( NeHe )
 *  $Name:  $
 ***************************************************************
 *
 *  Copyright NeHe Production
 *
 ***************************************************************/

/**         Comments manageable by Doxygen
*
*  Modified smoothly by Thierry DECHAIZE
*
*  Paradigm : obtain one source (only one !) compatible for multiple free C Compilers
*    and provide for all users an development environment on Windows (64 bits compatible),
*    the great Code::Blocks manager (version 20.03), and don't use glaux.lib or glaux.dll.
*
*	a) Mingw 32 bits, version officielle gcc 9.2.0 (very old !) : downloadable on http://sourceforge.net/projects/mingw/ (official)
*	b) Mingw 64 bits included in new IDE Red Panda Dev-Cpp, version gcc 12.2.0 : donwloadable on https://sourceforge.net/projects/redpanda-cpp/files/
*	c) Mingw 64 bits included in package Code::Blocks (version 20.03), version gcc 8.1.0 : downloadable on http://sourceforge.net/projects/codeblocks/files/Binaries/20.03/Windows/
*	d) Mingw 32 and 64 bits packagés, version gcc 11.2.0 : downloadable on  https://winlibs.com/ (and CLANG included in, 32 and 64 bits), two kits :
*			- winlibs-i686-posix-dwarf-gcc-12.2.0-llvm-15.0.7-mingw-w64ucrt-10.0.0-r4.7z (32 bits)
*			- winlibs-x86_64-posix-seh-gcc-12.2.0-llvm-15.0.7-mingw-w64ucrt-10.0.0-r4.7z (64 bits)
*	e) Cygwin64, 32 et 64 bits, version gcc 11.3.0 : downloadable on http://www.cygwin.com/install.html (tool for install : setup-x86_64.exe)
*	f) TDM GCC, 32 et 64 bits, version 10.3.0 : downloadable on http://sourceforge.net/projects/TDM-GCC
*	g) MSYS2 environnement MINGW32 and MINGW64, 32 et 64 bits, version de 2022 (msys2-x86_64-20230127.exe), version gcc 12.2.0 : downloadable on https://repo.msys2.org/distrib/x86_64/msys2-x86_64-20230127.exe
*	h) Visual Studio 2022, 32 et 64 bits, community edition for free : downloadable on https://visualstudio.microsoft.com/fr/thank-you-downloading-visual-studio/?sku=Community&rel=17
*	i) Borland C/C++ 32 bits, version 5.5 : downloadable on https://developerinsider.co/download-and-install-borland-c-compiler-on-windows-10/
*	j) Digital Mars Compiler C 32 bits version 8.57 : downloadable on http://www.digitalmars.com (the more old compiler, the more bugged, dead branch !)
*	k) OpenWatcom 32 et 64 bits, version 2.0 : downloadable on http://openwatcom.mirror.fr/
*	l) Lcc and Lcc64, 32 et 64 bits: downloadable http://www.cs.virginia.edu/~lcc-win32/
*	m) PELLES C, 32 et 64 bits, version 11.0 : downloadable on http://www.smorgasbordet.com/pellesc/
*	o) CLANG, adossé aux environnements MINGW64 et MINGW32, version 15.0.7 (version gcc 12.0.0) : downloadable on https://winlibs.com/
*	p) CLANG, adossé aux environnements Visual Studio 2022 (+ kits Microsoft), version 15.0.7 : downloadable on https://releases.llvm.org/download.html
*	q) CLANG de la version MSYS2, adossé aux environnements MINGW64 et MINGW32, version 15.0.7 (version gcc 12.2.0) : downloadable on https://repo.msys2.org/distrib/x86_64/msys2-x86_64-20220118.exe
*	r) CLANG de la version CYGWIN, adossé aux environnements MINGW64 et MINGW32, version 8.0.0 (version gcc 11.3.0) : downloadable http://www.cygwin.com/install.html (tool for install : setup-x86_64.exe)
*
*   TDE -> Add resource file end resource header for restitute version + icon OpenGL.ico for fun
*			because versionning is important, same for freeware :-) !
*
*  Date : 2023/02/02
*
* \file            Lesson01.c
* \author          Jeff Molofee ( NeHe ) originely, adapted by Thierry Dechaize
* \version         2.0.1.0
* \date            2 février 2023
* \brief           Ouvre une simple fenêtre Windows et dessine un triangle muticolore en rotation avec OpenGL.
* \details         Ce programme ne gére que deux événements : le clic sur le bouton "Fermé" de la fenêtre ou la sortie par la touche ESC.
*
*
*/

#ifdef __CYGWIN__
#define WIN32_LEAN_AND_MEAN
#endif
#include <windows.h>   /* Bug with LCC64 : two define function 'GetProcessWorkingSetSize' and 'SetProcessWorkingSetSize'in win.h */
#if defined( __LCC__ )
#ifndef WINGDIAPI
#   define WINGDIAPI __stdcall
#endif
#endif
#include <gl/gl.h>

#include "resource.h"


LRESULT CALLBACK WindowProc(HWND, UINT, WPARAM, LPARAM);

void EnableOpenGL(HWND hwnd, HDC*, HGLRC*);
void DisableOpenGL(HWND, HDC, HGLRC);

/**         Comments manageable by Doxygen
*
* \brief      Fonction WinMain obligatoire pour les programmes utilisant l'UI Windows
* \details    Creation de la fenetre principale
* \param      hInstance         L'header de l'instance de la fenêtre principale.
* \param      hPrevInstance     L'header de l'instance de la fenêtre précédente (si besoin).
* \param      lpCmdLine         Un pointeur sur la ligne de cammande.
* \param      nCmdShow          Un indicateur.
* \return     int               Le status du lacement et de la creation de la fenetre (ok ou non).
*
*/

int WINAPI WinMain(HINSTANCE hInstance,
                   HINSTANCE hPrevInstance,
                   LPSTR lpCmdLine,
                   int nCmdShow)
{
    WNDCLASSEX wcex;
    HWND hwnd;
    HDC hDC;
    HGLRC hRC;
    HICON hLogo;
    MSG msg;
    BOOL bQuit = FALSE;
    float theta = 0.0f;

	ZeroMemory(&wcex, sizeof(wcex));
    /* register window class */
    wcex.cbSize 		= sizeof(WNDCLASSEX);
    wcex.style 			= CS_OWNDC;
    wcex.lpfnWndProc 	= WindowProc;
    wcex.cbClsExtra 	= 0;
    wcex.cbWndExtra 	= 0;
    wcex.hInstance 		= hInstance;
    wcex.hIcon 			= LoadIcon(GetModuleHandle(NULL), MAKEINTRESOURCE(IDI_MYICON));
    wcex.hCursor 		= LoadCursor(NULL, IDC_ARROW);
    wcex.hbrBackground 	= (HBRUSH)GetStockObject(BLACK_BRUSH);
    wcex.lpszMenuName 	= NULL;
    wcex.lpszClassName 	= "GLSample";
    wcex.hIconSm 		= (HICON)LoadImage(GetModuleHandle(NULL), MAKEINTRESOURCE(IDI_MYICON), IMAGE_ICON, 16, 16, 0);


    if (!RegisterClassEx(&wcex))
        return 0;

    /* create main window */
    hwnd = CreateWindowEx(0,
                          "GLSample",
                          "OpenGL Sample",
                          WS_OVERLAPPEDWINDOW,
                          CW_USEDEFAULT,
                          CW_USEDEFAULT,
                          256,
                          256,
                          NULL,
                          NULL,
                          hInstance,
                          NULL);

#ifdef __WATCOM__
	wcex.hIcon = LoadIcon( hwnd, MAKEINTRESOURCE(IDI_MYICON));
#endif
    ShowWindow(hwnd, nCmdShow);

    /* enable OpenGL for the window */
    EnableOpenGL(hwnd, &hDC, &hRC);

    /* program main loop */
    while (!bQuit)
    {
        /* check for messages */
        if (PeekMessage(&msg, NULL, 0, 0, PM_REMOVE))
        {
            /* handle or dispatch messages */
            if (msg.message == WM_QUIT)
            {
                bQuit = TRUE;
            }
            else
            {
                TranslateMessage(&msg);
                DispatchMessage(&msg);
            }
        }
        else
        {
            /* OpenGL animation code goes here */

            glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
            glClear(GL_COLOR_BUFFER_BIT);

            glPushMatrix();
            glRotatef(theta, 0.0f, 0.0f, 1.0f);

            glBegin(GL_TRIANGLES);

                glColor3f(1.0f, 0.0f, 0.0f);   glVertex2f(0.0f,   1.0f);
                glColor3f(0.0f, 1.0f, 0.0f);   glVertex2f(0.87f,  -0.5f);
                glColor3f(0.0f, 0.0f, 1.0f);   glVertex2f(-0.87f, -0.5f);

            glEnd();

            glPopMatrix();

            SwapBuffers(hDC);

            theta += 1.0f;
            Sleep (1);
        }
    }

    /* shutdown OpenGL */
    DisableOpenGL(hwnd, hDC, hRC);

    /* destroy the window explicitly */
    DestroyWindow(hwnd);

    return msg.wParam;
}

/**         Comments manageable by Doxygen
*
* \brief      Fonction CALLBACK de traitement des messages Windows
* \details    Traitement de la boucle infinie des messages Windows
* \param      hWnd         L'header de la fenêtre principale.
* \param      uMsg         Un entier non signé.
* \param      wParam       Les paramétres en entrée.
* \param      lParam       Autres paramétres en entrée.
* \return     LRESULT 	   Un LRESULT donnant le status du traitement du message.
*
*/

LRESULT CALLBACK WindowProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
    switch (uMsg)
    {
        case WM_CLOSE:
            PostQuitMessage(0);
        break;

        case WM_DESTROY:
            return 0;

        case WM_KEYDOWN:
        {
            switch (wParam)
            {
                case VK_ESCAPE:
                    PostQuitMessage(0);
                break;
            }
        }
        break;

        default:
            return DefWindowProc(hwnd, uMsg, wParam, lParam);
    }

    return 0;
}

/**         Comments manageable by Doxygen
*
* \brief      Fonction EnableOpenGL permettant la configuration d'OpenGL pour la fenêtre principale.
* \details    Ce qui est important est le descripteur du format du pixel utilisé.
* \param      hwnd         L'header de la fenêtre principale.
* \param      hDC          L'header du Device Context.
* \param      hRC          L'header du Resource Context sous OpenGL.
* \return     void         Void (aucun)
*
*/

void EnableOpenGL(HWND hwnd, HDC* hDC, HGLRC* hRC)
{
    PIXELFORMATDESCRIPTOR pfd;

    int iFormat;

    /* get the device context (DC) */
    *hDC = GetDC(hwnd);

    /* set the pixel format for the DC */
    ZeroMemory(&pfd, sizeof(pfd));

    pfd.nSize = sizeof(pfd);
    pfd.nVersion = 1;
    pfd.dwFlags = PFD_DRAW_TO_WINDOW |
                  PFD_SUPPORT_OPENGL | PFD_DOUBLEBUFFER;
    pfd.iPixelType = PFD_TYPE_RGBA;
    pfd.cColorBits = 24;
    pfd.cDepthBits = 16;
    pfd.iLayerType = PFD_MAIN_PLANE;

    iFormat = ChoosePixelFormat(*hDC, &pfd);

    SetPixelFormat(*hDC, iFormat, &pfd);

    /* create and enable the render context (RC) */
    *hRC = wglCreateContext(*hDC);

    wglMakeCurrent(*hDC, *hRC);
}

/**         Comments manageable by Doxygen
*
* \brief      Fonction DisableOpenGL permettant la dé-configuration d'OpenGL pour la fenêtre principale.
* \details    On libère les différents contextes : Device Context et Resource Context.
* \param      hwnd         L'header de la fenêtre principale.
* \param      hDC          L'header du Device Context.
* \param      hRC          L'header du Resource Context sous OpenGL.
* \return     void         Void (aucun)
*
*/

void DisableOpenGL (HWND hwnd, HDC hDC, HGLRC hRC)
{
    wglMakeCurrent(NULL, NULL);
    wglDeleteContext(hRC);
    ReleaseDC(hwnd, hDC);
}

