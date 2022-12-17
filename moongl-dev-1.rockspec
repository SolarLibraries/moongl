package = "moongl"
version = "dev-1"
source = {
    url = "git+https://github.com/SolarLibraries/moongl.git"
}
description = {
    summary = "MoonGL is a Lua binding library for [OpenGL](https://www.opengl.org/).",
    detailed = "MoonGL is a Lua binding library for [OpenGL](https://www.opengl.org/).",
    homepage = "https://github.com/SolarLibraries/moongl",
    license = "MIT/X11"
}
dependencies = {
    "lua >= 5.1, < 5.5"
}
external_dependencies = {
    GLEW = {
        header = "GL/glew.h",
        library = "GLEW"
    }
}
build = {
    type = "builtin",
    modules = {
        ["moongl.make"]     = "moongl/make.lua",
        ["moongl.nongl"]    = "moongl/nongl.lua",
        ["moongl.wrappers"] = "moongl/wrappers.lua",

        moongl = {
            source = {
                "src/bitfield.c",
                "src/buffer.c",
                "src/capabilities.c",
                "src/compat-5.3.c",
                "src/debug.c",
                "src/draw.c",
                "src/enums.c",
                "src/framebuffer.c",
                "src/func.c",
                "src/get.c",
                "src/getintformat.c",
                "src/getstring.c",
                "src/getuniform.c",
                "src/getvertex.c",
                "src/hint.c",
                "src/init.c",
                "src/main.c",
                "src/nongl.c",
                "src/object.c",
                "src/perfragment.c",
                "src/pipeline.c",
                "src/pixel.c",
                "src/proginterface.c",
                "src/program.c",
                "src/query.c",
                "src/raster.c",
                "src/renderbuffer.c",
                "src/sampler.c",
                "src/shader.c",
                "src/subroutine.c",
                "src/sync.c",
                "src/teximage.c",
                "src/texture.c",
                "src/transform.c",
                "src/uniform.c",
                "src/utils.c",
                "src/vertex_array.c",
                "src/whole_framebuffer.c",
            },

            incdirs = { "src/", "$(GLEW_INCDIR)" },
            libdirs = { "$(GLEW_LIBDIR)" },

            libraries = { "GLEW" }
        }
    },
    copy_directories = {
        "doc", "examples"
    }
}
