#pragma once
#include <stdio.h>

struct Repo** repos;
size_t repos_count;

// repo type enum
enum RepoType {
    REPO_GIT,
    REPO_HTTP,
    REPO_HTTPS,
    REPO_LOCAL_DIR
};

// repo struct
struct Repo {
    // repo type
    enum RepoType type;
    // single buffer array packages
    char* packages;
    // count of packages
    size_t packages_count;
    // amount of bytes for each package in packages
    size_t packages_size;
};

struct Repo* __repo_init_file(struct Repo self, FILE *file);
