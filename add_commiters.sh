git config user.email "$2@none.none"
git config user.name "$2"

for run in $(seq 1 $1)
do
    git commit --allow-empty -m "Commit message $run" --author "$2 <$2@none.none>"
done

git push origin