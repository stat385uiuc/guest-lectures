# Generate initial guest lecturer structure

# install.packages(c("tibble", "yaml"))

# Number of Entries
n = 1L

# Format of Data
lecture_data = tibble::tibble(
    lecture_title = character(n),
    lecture_abstract = character(n),
    date = as.character(Sys.Date()),
    guest_lecturer = character(n),
    social = list(
        list(
            linkedin = "",
            github = "",
            stackoverflow = "",
            website = "",
            twitter = ""
        )
    ),
    resources = list(
        list(
            video = "",
            slides = "",
            code = ""
            )
    )
)

# Write out YAML structure independently via column.major = FALSE

# See the additional ... options in ?as.yaml for writing yaml
yaml::write_yaml(lecture_data,
                 file = "admin/template-lecture-data.yml",
                 column.major = FALSE)
