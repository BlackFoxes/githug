difficulty 1
description "在你的文件夹中有一个叫做`README`的文件，你需要将他添加到你的暂存区
There is a file in your folder called `README`, you should add it to your staging area
提示：你开始的每一个等级都是一个新的仓库，所以不要去之前的文件中查找。
Note: You start each level with a new repo. Don't look for files from the previous one."

setup do
  repo.init
  FileUtils.touch("README")
end

solution do
  return false unless repo.status.files.keys.include?("README")
  return false if repo.status.files["README"].untracked
  true
end

hint do
  puts "你可以在shell命令窗口中输入`git`得到有效的git命令
        You can type `git` in your shell to get a list of available git commands."
end
