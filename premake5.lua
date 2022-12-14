project "SPIRV"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "SPIRV/**.h",
        "SPIRV/**.hpp",
        "SPIRV/**.cpp"
    }

    includedirs {
        ".",
        "include"
    }

    defines {
        "ENABLE_OPT=0",
        "ENABLE_HLSL",
        "_HAS_EXCEPTIONS=0",
        "ROOT_PATH_SIZE=34"
    }

    filter "system:windows"
		systemversion "latest"

		defines { 
			"GLSLANG_OSINCLUDE_WIN32"
		}

	filter "system:linux"
		pic "On"
		systemversion "latest"

		defines { 
			"GLSLANG_OSINCLUDE_UNIX"
		}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

		defines {
			"_DEBUG"
		}

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

		defines {
			"NDEBUG"
		}

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"

		defines {
			"NDEBUG"
		}

project "OSDependent"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "off"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	files {
		"glslang/OSDependent/osinclude.h"
	}

	includedirs {
		".",
		"include"
	}

	defines {
		"ENABLE_OPT=0",
		"ENABLE_HLSL",
		"_HAS_EXCEPTIONS=0",
		"ROOT_PATH_SIZE=34"
	}

	filter "system:windows"
		systemversion "latest"

		files {
			"glslang/OSDependent/Windows/ossource.cpp"
		}

		defines { 
			"GLSLANG_OSINCLUDE_WIN32"
		}

	filter "system:linux"
		pic "On"
		systemversion "latest"

		files {
			"glslang/OSDependent/Unix/ossource.cpp"
		}

		defines { 
			"GLSLANG_OSINCLUDE_UNIX"
		}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

		defines {
			"_DEBUG"
		}

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

		defines {
			"NDEBUG"
		}

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
		symbols "off"

		defines {
			"NDEBUG"
		}

project "OGLCompiler"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "off"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	files {
		"OGLCompilersDLL/InitializeDll.h",
		"OGLCompilersDLL/InitializeDll.cpp"
	}

	includedirs {
		".",
		"include"
	}

	defines {
		"ENABLE_OPT=0",
		"ENABLE_HLSL",
		"_HAS_EXCEPTIONS=0",
		"ROOT_PATH_SIZE=34"
	}

	filter "system:windows"
		systemversion "latest"

		defines { 
			"GLSLANG_OSINCLUDE_WIN32"
		}

	filter "system:linux"
		pic "On"
		systemversion "latest"

		defines { 
			"GLSLANG_OSINCLUDE_UNIX"
		}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

		defines {
			"_DEBUG"
		}

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

		defines {
			"NDEBUG"
		}

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
		symbols "off"

		defines {
			"NDEBUG"
		}

project "glslang-default-resource-limits"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "off"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	files {
		"StandAlone/ResourceLimits.cpp"
	}

	includedirs {
		".",
		"include"
	}

	defines {
		"ENABLE_OPT=0",
		"ENABLE_HLSL",
		"_HAS_EXCEPTIONS=0",
		"ROOT_PATH_SIZE=34"
	}

	filter "system:windows"
		systemversion "latest"

		defines { 
			"GLSLANG_OSINCLUDE_WIN32"
		}

	filter "system:linux"
		pic "On"
		systemversion "latest"

		defines { 
			"GLSLANG_OSINCLUDE_UNIX"
		}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

		defines {
			"_DEBUG"
		}

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

		defines {
			"NDEBUG"
		}

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
		symbols "off"

		defines {
			"NDEBUG"
		}

project "glslang"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "off"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	files {
		"glslang/CInterface/glslang_c_interface.cpp",
		"glslang/Include/**.h",
		"glslang/Public/ShaderLang.h"
	}

	includedirs {
		".",
		"include"
	}

	defines {
		"ENABLE_OPT=0",
		"ENABLE_HLSL",
		"_HAS_EXCEPTIONS=0",
		"ROOT_PATH_SIZE=34"
	}

	filter "system:windows"
		systemversion "latest"

		defines { 
			"GLSLANG_OSINCLUDE_WIN32"
		}

	filter "system:linux"
		pic "On"
		systemversion "latest"

		defines { 
			"GLSLANG_OSINCLUDE_UNIX"
		}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

		defines {
			"_DEBUG"
		}

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

		defines {
			"NDEBUG"
		}

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
		symbols "off"

		defines {
			"NDEBUG"
		}

project "hlsl"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "off"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	files {
		"hlsl/stub.cpp",
	}

	includedirs {
		".",
		"include"
	}

	defines {
		"ENABLE_OPT=0",
		"ENABLE_HLSL",
		"_HAS_EXCEPTIONS=0",
		"ROOT_PATH_SIZE=34"
	}

	filter "system:windows"
		systemversion "latest"

		defines { 
			"GLSLANG_OSINCLUDE_WIN32"
		}

	filter "system:linux"
		pic "On"
		systemversion "latest"

		defines { 
			"GLSLANG_OSINCLUDE_UNIX"
		}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

		defines {
			"_DEBUG"
		}

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

		defines {
			"NDEBUG"
		}

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
		symbols "off"

		defines {
			"NDEBUG"
		}

project "MachineIndependent"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "off"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	files {
		"glslang/MachineIndependent/**",
		"glslang/HLSL/**",
	}

	removefiles {
		"glslang/**/pch.h"
	}

	includedirs {
		".",
		"include"
	}

	defines {
		"ENABLE_OPT=0",
		"ENABLE_HLSL",
		"_HAS_EXCEPTIONS=0",
		"ROOT_PATH_SIZE=34"
	}

	filter "system:windows"
		systemversion "latest"

		defines { 
			"GLSLANG_OSINCLUDE_WIN32"
		}

	filter "system:linux"
		pic "On"
		systemversion "latest"

		defines { 
			"GLSLANG_OSINCLUDE_UNIX"
		}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

		defines {
			"_DEBUG"
		}

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

		defines {
			"NDEBUG"
		}

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
		symbols "off"

		defines {
			"NDEBUG"
		}

project "GenericCodeGen"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "off"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	files {
		"glslang/GenericCodeGen/**.cpp",
	}

	includedirs {
		".",
		"include"
	}

	defines {
		"ENABLE_OPT=0",
		"ENABLE_HLSL",
		"_HAS_EXCEPTIONS=0",
		"ROOT_PATH_SIZE=34"
	}

	filter "system:windows"
		systemversion "latest"

		defines { 
			"GLSLANG_OSINCLUDE_WIN32"
		}

	filter "system:linux"
		pic "On"
		systemversion "latest"

		defines { 
			"GLSLANG_OSINCLUDE_UNIX"
		}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

		defines {
			"_DEBUG"
		}

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

		defines {
			"NDEBUG"
		}

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
		symbols "off"

		defines {
			"NDEBUG"
		}
