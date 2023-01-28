module = "cfg"
ctanupload = true
typesetopts = "-interaction=batchmode -shell-escape -halt-on-error"
checkopts = "-interaction=batchmode -shell-escape -halt-on-error"
exefiles = {"cfg.pl"}
sourcefiles = {"*.dtx", "*.ins", "*-????-??-??.sty"}
checkengines = {"pdftex", "luatex", "xetex"}
tagfiles = {"build.lua", "cfg.dtx"}
cleanfiles = {"build", "_docshots", "*.run.xml", "*.log", "*.bcf", "*.glo", "*.fls", "*.idx", "*.out", "*.fdb_latexmk", "*.aux", "*.sty", "*.zip", "cfg.pdf", "*.bbl"}
dynamicfiles = {"*.bbl"}
tagfiles = {"cfg.dtx", "build.lua"}
typesetruns = 2
checkruns = 2

uploadconfig = {
  pkg = "cfg",
  version = "0.0.0",
  author = "Yegor Bugayenko",
  uploader = "Yegor Bugayenko",
  email = "yegor256@gmail.com",
  note = "Bug fixes",
  announcement = "",
  ctanPath = "/biblio/bibtex/utils/cfg",
  bugtracker = "https://github.com/yegor256/cfg/issues",
  home = "",
  description = "Context-Free Grammars in EBNF",
  development = "",
  license = "mit",
  summary = "This LaTeX package renders CFG in EBNF.",
  repository = "https://github.com/yegor256/cfg",
  support = "",
  topic = {""}
}

function update_tag(file, content, tagname, tagdate)
  return string.gsub(
    string.gsub(content, "0%.0%.0", tagname),
    "0000%-00%-00", os.date("%Y-%m-%d")
  )
end
