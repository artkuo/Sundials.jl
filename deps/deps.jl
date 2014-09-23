macro checked_lib(libname, path)
        (dlopen_e(path) == C_NULL) && error("Unable to load \n\n$libname ($path)\n\nPlease re-run Pkg.build(package), and restart Julia.")
        quote const $(esc(libname)) = $path end
    end
@checked_lib libsundials_nvecserial "/usr/local/lib/libsundials_nvecserial.dylib"
@checked_lib libsundials_cvode "/usr/local/lib/libsundials_cvode.dylib"
@checked_lib libsundials_cvodes "/usr/local/lib/libsundials_cvodes.dylib"
@checked_lib libsundials_kinsol "/usr/local/lib/libsundials_kinsol.dylib"
@checked_lib libsundials_ida "/usr/local/lib/libsundials_ida.dylib"
@checked_lib libsundials_idas "/usr/local/lib/libsundials_idas.dylib"

