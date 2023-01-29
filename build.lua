module = "naive-ebnf"
ctanupload = true
typesetopts = "-interaction=batchmode -shell-escape -halt-on-error"
checkopts = "-interaction=batchmode -shell-escape -halt-on-error"
sourcefiles = {"*.dtx", "*.ins", "*-????-??-??.sty"}
checkengines = {"pdftex", "luatex", "xetex"}
tagfiles = {"build.lua", "naive-ebnf.dtx"}
cleanfiles = {"build", "_docshots", "*.run.xml", "*.log", "*.bcf", "*.glo", "*.fls", "*.idx", "*.out", "*.fdb_latexmk", "*.aux", "*.sty", "*.zip", "naive-ebnf.pdf", "*.bbl"}
dynamicfiles = {"*.bbl"}
tagfiles = {"naive-ebnf.dtx", "build.lua"}
typesetruns = 2
checkruns = 2

uploadconfig = {
  pkg = "naive-ebnf",
  version = "0.0.2",
  author = "Yegor Bugayenko",
  uploader = "Yegor Bugayenko",
  email = "yegor256@gmail.com",
  note = "Bug fixes",
  announcement = "",
  ctanPath = "/biblio/bibtex/utils/naive-ebnf",
  bugtracker = "https://github.com/yegor256/naive-ebnf/issues",
  home = "",
  description = "EBNF in Plain Text",
  development = "",
  license = "mit",
  summary = "With the help of this LaTeX package EBNF may be rendered in a plain text",
  repository = "https://github.com/yegor256/naive-ebnf",
  support = "",
  topic = {"formal-spec"}
}

function update_tag(file, content, tagname, tagdate)
  return string.gsub(
    string.gsub(content, "0%.0%.0", tagname),
    "0000%-00%-00", os.date("%Y-%m-%d")
  )
end
