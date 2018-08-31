state <- as.character(c(1:9))
state

ttt <-function( state )
{
  if(missing(state))
  {
    state<-as.character(1:9)
  }
  state<<-structure(state,class='ttt')
}

print.ttt<-function(state)
{
  cat(' ')
  cat(state[1],state[2],state[3], sep = " | ")
  cat("\n")
  cat("---+---+---",'\n')
  cat(' ')
  cat(state[4],state[5],state[6], sep = " | ")
  cat("\n")
  cat("---+---+---",'\n')
  cat(' ')
  cat(state[7],state[8],state[9], sep = " | ")
  cat('\n')
  cat('\n')
}

case1 <- as.character(1:9)
case1[c(1,3)] <- "x"
case1[2] <- "o"
case1 <- ttt(case1)
case1  # should print as a tic-tac-toe board