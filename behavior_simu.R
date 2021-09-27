library(truncnorm)
library(here)

behavior_simu <- function(n_blocks, 
                          conditions, 
                          n_trial, 
                          success_prob, 
                          mean_rt, 
                          sd_rt){
  for(n in n_blocks){
    
    index <- ifelse(n %% 2, 2, 1)
    
    block_num <- rep(n, n_trial)
    block <- rep(conditions[index], n_trial)
    
    rc <- rbinom(n_trial, 1, success_prob[index])
    rt <- rtruncnorm(n_trial, 300, 3000, mean_rt[index], sd_rt[index])
    
    if(n == 1){
      df <- data.frame(block_num, block, rc, rt)
    }
    else{
      df <- rbind(df, data.frame(block_num, block, rc, rt))
    }
    
  }
  
  df
}

dir.create(here("simu_data"), showWarnings = FALSE)
set.seed(123)  
sub_id <- replicate(20, paste(sample(0:9, 4), collapse = ""))
list <- vector(mode = "list", 20L)
names(list) <- sub_id
for(i in 1:20){
  list[[i]] <- behavior_simu(n_blocks = 1:6, 
                           conditions = c("0b", "2b"), 
                           n_trial = 12, 
                           success_prob = c(.9, .7), 
                           mean_rt = c(800, 1300), 
                           sd_rt = c(300, 500))
  
  write.csv(list[[i]], file = here("simu_data", paste0(sub_id[i], ".csv")), row.names = FALSE)
}


