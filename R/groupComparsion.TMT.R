#' Summarize PSM level data to protein level
#' 
#' @param data data: protein level data, which has columns Protein, Group, Subject, Run, Channel, IonIntensity
#' @param model Possible options: "proposed", "lima", "t"
#' @return The sum of \code{x} and \code{y}.//TODO
#' @examples //TODO
#' @export



groupComparison.TMT<-function(data,annotation,model){
  
  if(model == "proposed"){
    result<-MSstatsTMT::proposed.model(data.long)
  }
  if(model == "t"){
    result<-MSstatsTMT::protein.ttest(data.long)
  }
  if(model == "limma"){
    result<-MSstatsTMT::ebayes.limma(data.long)
  }
  return(result)
}

# Proposed inference model
# data: protein level data, which has columns Protein, Group, Subject, Run, Channel, IonIntensity
# adj.method: adjusted method for multiple comparison

# Limma inference model
# data: protein level data matrix, whose columns are subjects and rows are proteins.
# label: vector with group information, whose columns are subjects and rows are proteins.
# adj.method: adjusted method for multiple comparison

# t test 
# data: protein level data, which has columns Protein, Group, Subject, Run, Channel, IonIntensity
# adj.method: adjusted method for multiple comparison
