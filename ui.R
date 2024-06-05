library(shiny)

# Define the UI for the application
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Gene Annotation Retrieval"),
  
  # Sidebar layout with input and output definitions
  sidebarLayout(
    sidebarPanel(
      # Input: Select input for choosing the dataset
      selectInput("dataset",
                  "Select Dataset:",
                  choices = c("hsapiens_gene_ensembl", "mmusculus_gene_ensembl"),
                  selected = "hsapiens_gene_ensembl"),
      
      # Input: Text input for specifying gene ID
      textInput("gene_id",
                "Enter Gene ID: ",
                placeholder = "e.g., ENSG00000139618")
    ),
    
    # Show the gene annotation in a text output
    mainPanel(
      verbatimTextOutput("annotationText")
    )
  )
))
