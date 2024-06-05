library(shiny)
library(biomaRt)

# Define the server logic required to retrieve gene annotation
shinyServer(function(input, output) {
  
  output$annotationText <- renderPrint({
    # Connect to the Ensembl database
    ensembl <- useMart(biomart = "ensembl",
                       dataset = input$dataset)
    
    # Retrieve gene annotation information
    gene_info <- getBM(attributes = c("ensembl_gene_id", "external_gene_name", "description"),
                       filters = "ensembl_gene_id",
                       values = input$gene_id,
                       mart = ensembl)
    
    # Return the gene annotation information
    gene_info
  })
})
