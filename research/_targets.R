library(magrittr)
R.utils::sourceDirectory("./functions", modifiedOnly = FALSE)
# future::plan(future::multisession, workers = 4)

targets::tar_option_set(
  error = "null",
  memory = "transient",
  garbage_collection = TRUE
)

#-----------------------------------------------------------------

targets = list(
  targets::tar_target(
    name = test_variable,
    command = test_function(5)
  )
)