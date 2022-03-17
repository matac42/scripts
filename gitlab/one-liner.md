# get repository hash

```
cat repos.txt | perl -nle 'print qq{puts Project.find_by_full_path\( abc $_ abc \)}' | sed -e "s/ abc /\'/g"
```

```repos.txt
group/project
group1/project1
group1/subgroup/project2
```
