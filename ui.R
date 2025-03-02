#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#


library(shiny)
library(openintro)
library(shinythemes)
library(shinyalert)

fluidPage(
  #theme = shinytheme("cerulean"),
  useShinyalert(),
  theme = shinytheme("flatly"),
  tags$style(HTML(".tabbable > .nav > li > a  {background-color: #17bc9c;  color:white}
                   .tabbable > .nav > li > a[data-value='Preview'] {background-color: #FF7F50;   color:white}
                  
                  #sep1 {
                  background-color: #007BA7;
                  }
                  
                  #sep2 {
                  background-color: #007BA7;
                  }
                  ")),
  # tags$style('.container-fluid {
  #                            background-color: #007BA7;
  #             }'),

  headerPanel("Create a Case Study"),
  #tags$head(tags$style('h1 {color:white;}')),
  fluidRow(id = 'sep', column(12, h1(''))),
  fluidRow(id = 'sep1', column(12, h1(''))),
  fluidRow(id = 'info', # sidebarLayout(
    column(4, # sidebarPanel(
           helpText("This tool is provided to help users create online lessons", em(strong("quickly and easily")), "like our", 
                    tags$a(href="https://www.opencasestudies.org/", "open case studies"), 
                    ", which are online step-by-step lessons that guide users through a", 
                    strong("real-world problem solving challenge."), style = "font-size: 18px"),
           tags$h6(""),
           tags$h6( "Powered by:"),
           tags$a(href="https://www.r-project.org/", tags$img(src= 'Rlogo.png'))
           ),
    column(4,
           tags$h3(''),
           tags$img(src= 'kari_shea.jpg', width = 300, style="display: block; margin-left: auto; margin-right: auto;"),
           tags$h6("Photo by", tags$a(href="https://unsplash.com/@karishea?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText", "Kari Shea on Unsplash"), align="center"), 
           ),
      
    # tags$hr(),
    # radioButtons('format', 'Document format', c('HTML', 'PDF', 'Word'),
    #             inline = TRUE),
    # radioButtons('format', 'Document format', c('HTML'),
    #             inline = TRUE),
    # tags$h2('----------------------'),
    column(4,
           helpText("Start by clicking the", strong("Make Case Study"), "button to download an example lesson.", style="color:#FF7F50; font-size: 16px"),
           downloadButton('downloadReport', label = 'Make Case Study'),
           tags$h6('Document Format: HTML'),
           helpText("Delete and replace the existing content within the Create tab for your own content, check the preview in the Preview tab, and finally press the",
                    strong("Make Case Study"), "button again to download your own lesson!", style="color:#17bc9c; font-size: 16px"),
           # tags$hr(),
           )
    ),
  fluidRow(id = 'sep2', column(12, h1(''))),
  fluidRow(column(12, h1(''))),
  fluidRow(id = 'tabs',
    column(12,# mainPanel(
           tabsetPanel(
             tabPanel("Create",
                      #fileInput("data", "Choose data files", multiple = TRUE),
                      # tags$div(id = 'placeholder'),
                      # actionButton('insertImage', 'Insert Image URL'),
                      # actionButton('removeImage', 'Remove Image URL'),
                      fluidRow(column(12, h1(''))),
                      textInput("logo", "Logo Image URL", "https://image.freepik.com/free-vector/biology-school-subject-concept_277904-8447.jpg", width = '400px'),
                      textInput("title", "Title", "Gram Negative Vs Gram Positive Bacteria", width = '400px'),
                      textInput("mainimage", "Main Image URL", "https://thisonevsthatone.com/wp-content/uploads/Gram-positive-vs-Gram-negative.webp", width = '400px'),
                      textInput("header1", "Header1", "Gram-positive vs Gram-negative, what’s the difference??", width = '400px'),
                      textAreaInput("narrative1", "Narrative Text Section 1", "Gram-positive is a type of bacteria that have a thick, multilayered cell wall and no outer cell membrane. They stain purple when you perform a Gram stain on them.

Gram-negative is a type of bacteria that have a thin, single-layered cell wall and do have an outer cell membrane. They stain red or pink when you perform a Gram stain on them.

One way to help distinguish between the two different types is to associate the beginning letters of the words with a corresponding color attribute.

So gram-positive bacteria stain purple, and gram-negative bacteria do not.
", width = '600px', height = '400px'),
                      textInput("image1", "Image 1 URL", "https://cdn1.byjus.com/wp-content/uploads/2018/11/biology/2018/05/16065016/Difference-between-Gram-positive-and-Gram-negative-Bacteria.png", width='400px'),
                      
                      textInput("header2", "Header2", "Gram Stain Method", width='400px'),
                      textAreaInput("narrative2", "Narrative Text Section 2", "During Gram staining both bacteria are stained with a purple dye, but the gram-negative does not retain it. So, you could also associate that concept to their names as well.

So gram-positive (plus) bacteria have the purple stain, and gram-negative bacteria (minus) do not have the purple stain.

Of course, there is much more to these two bacterial types than that, so let’s delve a bit deeper into both types.


Gram staining was invented by Hans Christian Gram, and it’s sometimes referred to as Gram’s method. This process is where gram-positive and gram-negative bacteria derived their names. Since bacteria are so tiny, Gram staining is used to determine the bacterial type (positive or negative).

This is incredibly important for treating ailments caused by bacteria. Different bacterial types react in different ways to different treatments, so we need to know the bacterial type to be able to know the best treatment option.
", width = '600px', height = '400px'),
                      textInput("image2", "Image 2 URL", "https://cdn.technologynetworks.com/tn/images/body/g-pos-g-neg-cell-wall-structure-final1566305996142.jpg", width='400px'),
                      
                      textInput("video", "youtube video code", "AZS2wb7pMo4", width='400px'),
                      actionButton('insertHeader', 'Insert Header'),
                      actionButton('removeHeader', 'Remove Header'),
                      actionButton('insertNarrative', 'Insert Narrative Section'),
                      actionButton('removeNarrative', 'Remove Narrative Section'),
                      tags$div(id = 'placeholder')
                      ),
             tabPanel("Preview", 
                      # tags$img(src = "https://cdn1.byjus.com/wp-content/uploads/2018/11/biology/2018/05/16065016/Difference-between-Gram-positive-and-Gram-negative-Bacteria.png", width = "100px", height = "100px")
                      # tags$iframe(srcdoc = "report.html", seamless=NA, width = '100px')
                      #tags$img(
                        htmlOutput("htmlview")
                      )
             )
    )
  )
)

#for images: https://rstudio.github.io/shiny/tutorial/#sending-images

