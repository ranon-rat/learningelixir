f="./Elixir.CompileModuleTest.beam"
{:ok,beam}=File.read(f)
IO.inspect( :beam_disasm.file(beam),pretty: true)
