function compile_hdl_design_main
% compile_hdl_design_main compiles HDL design
% Generated by Cosimulation Wizard
savedPath = getenv('PATH');
% Restore the PATH after compilation
restorePathObj = onCleanup(@()setenv('PATH', savedPath));
% Add HDL path
setenv('PATH', ['C:\modeltech64_10.5\win64;' getenv('PATH')])
[s, r] = system(['vsim < hdlverifier_compile_design.do'],'-echo');
if (s ~= 0)
    error(message('HDLLink:CosimWizard:CompilationError',r));
end
