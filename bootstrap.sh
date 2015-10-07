# TODO
# handle existence of backup_dir
# handle folders with spaces in names

is_ignored() {
    ignored_files=". .. .DS_Store .localized .git TODO README.md ${0##*/} Resources"
    for ignored in $ignored_files; do
        if [[ "$1" = "$ignored" ]]; then
            return 0 # true
        fi
    done

    return 1 # false
}

create_backup() {
    # create the backup directory if it doesn't exist
    if [ ! -d $backup_dir ]; then
        mkdir -p $backup_dir
    fi

    mv "$destination_dir/$1" "$backup_dir/$1"
    echo Backed up $1
}

source_dir=${PWD}
destination_dir=~
backup_dir=$destination_dir/dotfiles_backup

for file in * .*; do
    if ! is_ignored $file; then
        # if the file already exists
        if [ -a "$destination_dir/$file" ]; then
            create_backup $file
        fi

        ln -s "$source_dir/$file" "$destination_dir/$file"
        echo Linked $file
    fi
done
