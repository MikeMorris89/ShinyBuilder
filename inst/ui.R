# Copyright (c) 2014 Clear Channel Broadcasting, Inc. 
# https://github.com/iheartradio/ShinyBuilder
# Licensed under the MIT License (MIT)

shinyUI(bootstrapPage(theme = "bootstrap.css",
#shinyUI(fluidPage(
  #Includes
  
  #Main Stylesheet
      includeScript(str_c(sb_dir, 'www/bootstrap.js')),
      includeCSS(str_c(sb_dir, 'www/main.css')),
  HTML('<!-- =========================================================       
      import //tinymce.cachefly.net/4.0/tinymce.min.js 
      ========================================================= -->'),
      #tags$head(tags$script(src = "//tinymce.cachefly.net/4.0/tinymce.min.js")),
      #tags$head(tags$script(src = "//cdn.tinymce.com/4/tinymce.min.js")),
      includeScript(str_c(sb_dir, 'tinymce/tinymce.min.js')),
      #tags$head(HTML("<script>tinymce.suffix = '.min';tinymce.init({ selector:'textarea' });</script>")),
tags$head(HTML("<script>tinymce.min.init({ selector:'textarea' });</script>")),
  
  HTML('<!-- =========================================================       
      source shinyMCE/shiny-tinymce-bindings.js
      ========================================================= -->'),  
      includeScript(str_c(sb_dir,  'shinyMCE/shiny-tinymce-bindings.js')),
  
  HTML('<!-- =========================================================       
      source www/shiny-gridster-bindings.js
      ========================================================= -->'),
      includeScript(str_c(sb_dir, 'www/jquery.min.js')),
      includeScript(str_c(sb_dir, 'www/jquery.coords.js')),
      includeScript(str_c(sb_dir, 'www/shiny-gridster-bindings.js')),   
      includeScript(str_c(sb_dir, 'www/jquery.draggable.js')), 
      includeScript(str_c(sb_dir, 'www/jquery.gridster.js')),    
      
      

  HTML('<!-- =========================================================       
      source www/json2.js
      ========================================================= -->'),  
      #includeScript(str_c(sb_dir, 'www/json2.js')),
      #includeScript(str_c(sb_dir, 'https://raw.githubusercontent.com/douglascrockford/JSON-js/master/json2.js')),
      #wget https://raw.githubusercontent.com/douglascrockford/JSON-js/master/json2.js    
      includeScript(str_c(sb_dir, 'www/json2.js')),



HTML('<!-- =========================================================       
      import https://www.gstatic.com/charts/loader.js
      ========================================================= -->'),
      tags$head(tags$script(src = 'https://www.gstatic.com/charts/loader.js')),
  
HTML('<!-- =========================================================       
      import //www.google.com/jsapi
      ========================================================= -->'),
      #tags$head(tags$script(src = "//www.google.com/jsapi")),
      includeScript(str_c(sb_dir,  "www/jsapi")),

  HTML('<!-- =========================================================       
      source www/googleChart_init.js
      ========================================================= -->'),
      includeScript(str_c(sb_dir, 'www/googleChart_init.js')),
  
   #includeScript(str_c(sb_dir, "www/tinymce.min.js")),
   # includeScript(str_c(sb_dir, 'www/shiny-tinymce-bindings.js')),
   # includeScript(str_c(sb_dir, 'www/shiny-gridster-bindings.js')), 
   # includeScript(str_c(sb_dir, 'www/json2.js')),
   # includeScript(str_c(sb_dir, "www/jsapi")),
   # includeScript(str_c(sb_dir, 'www/googleChart_init.js')),
  #Navbar
    div(class="navbar navbar-inverse navbar-fixed-top", 
     div(class = 'container',
      div(class = 'navbar-header',
         # a(class = 'navbar-brand pull-left',
         #   span(list(img(src = './mm.png', width="50", height="40"), 'Shiny Builder'))
         # ),
         a('Shiny Builder',href="#")
      )
    ,withTags(
      ul(class = "nav navbar-nav",
         selectInput('sel_dashboard', NULL, choices = available_dashboards)
        ,li(class = "dropdown",
           a(class="dropdown-toggle", `data-toggle` = "dropdown", 'File',span(class="caret")),
           ul(class = "dropdown-menu",
               li(a(id="save_dash_btn", class="action-button shiny-input-bound", icon('floppy-o'), 'Save')),
               li(class = "divider"),
               li(a(id="save_as_modal_btn", 'data-toggle' = "modal", 'data-target' = '#save_as_modal', icon('floppy-o'), 'Save As')),
               li(a(id="new_dash_modal_btn", 'data-toggle' = "modal", 'data-target' = '#new_dash_modal', icon('dashboard'), 'New Dashboard')),
               li(a(id="delete_dash_modal_btn", class = 'action-button', 'data-toggle' = "modal", 'data-target' = '#delete_modal', icon('trash-o'), 'Delete Dashboard'))
           )
        )
       ,li(class = "dropdown"
         ,a(class="dropdown-toggle", `data-toggle` = "dropdown", 'Edit', span(class = "caret"))
         ,ul(class = "dropdown-menu"
            ,li(a(id="addChart", class="action-button shiny-input-bound", icon('bar-chart-o'), 'Add Chart'))
            ,li(a(id="addText", class="action-button shiny-input-bound", icon('bars'), 'Add Text Area'))
          )
       )
      )
     )
    )
   ),
  # navbarPage("ShinyBuilder"
  #            ,tabPanel(selectInput('sel_dashboard', NULL, choices = available_dashboards))
  #            ,navbarMenu("File"
  #                       ,tabPanel(actionButton(inputId = 'save_dash_btn',label = "Save", icon('floppy-o')))
  #                       ,tabPanel(actionButton(inputId = 'save_dash_btn',label = "Save As", icon('floppy-o'), 'data-toggle' = "modal", 'data-target' = '#save_as_modal'))
  #                       ,tabPanel(actionButton(inputId = 'new_dash_modal_btn',label = "New Dashboard", icon('dashboard'), 'data-toggle' = "modal", 'data-target' = '#new_dash_modal'))
  #                       ,tabPanel(actionButton(inputId = 'delete_dash_modal_btn',label = "Delete Dashboard",icon('trash-o'), 'data-toggle' = "modal", 'data-target' = '#delete_modal'))
  #            )
  #            ,navbarMenu("Edit"
  #                        ,tabPanel(actionButton(inputId = 'save_dash_btn',label = "Save",icon('floppy-o')))
  #                        ,tabPanel(actionButton(inputId = 'addChart',label = 'Add Chart', icon('bar-chart-o')))
  #                        ,tabPanel(actionButton(inputId = 'addText',label = "New Dashboard", icon('dashboard')))
  #            )
  # ),
  #Gridster frame
  br(),
  gridster(id = 'gridster_frame', marginx = 10, marginy = 10, width = 140,height = 140),
  hr(), 
  
  #'Delete' modal
  div(id = 'delete_modal', class = 'modal',  role="dialog",tabindex="-1",
      div(class="modal-dialog", role="document",
      div(class="modal-content",
      div(class = 'modal-header',
          tags$div(class = 'button', class = 'close', `data-dismiss` = 'modal', `aria-hidden`='true', 'x'),
          h3('Confirm Deletion',class="modal-title")
          )
     ,div(class = 'modal-body',
          p('Are you sure you want to delete this dashboard?  This operation cannot be undone.')),
      div(class = 'modal-footer',
          HTML('<button type="button" data-dismiss="modal" class="btn">Cancel</button>
               <button type="button" data-dismiss="modal" class="btn btn-primary action-button" id="delete_dash_btn">Delete Dashboard</button>')) 
      )
  )
  ),
  
  #'New Dashboard' Modal
  div(id = 'new_dash_modal', class = 'modal',  role="dialog",tabindex="-1",
      div(class="modal-dialog", role="document",
       div(class="modal-content",
        div(class = 'modal-header', 
           tags$div(class = 'button', class = 'close', `data-dismiss` = 'modal', `aria-hidden`='true', 'x')
          ,h4('New Dashboard',class="modal-title")
          )
       ,div(class = 'modal-body', 
          p('Enter a new dashboard title:'), 
          textInput('new_dash_file_name', label = NULL, value = '')
       )
       ,div(class = 'modal-footer',
          HTML('<button type="button" data-dismiss="modal" class="btn">Close</button>')
          #<button type="button" data-dismiss="modal" class="btn btn-primary action-button" id="new_dash_btn">Create Dashboard</button>')
          ,actionButton(id="new_dash_btn",label =  "Create Dashboard",icon("glyphicon glyphicon-new-window"),`data-dismiss`="modal")
          )
      )
  )
  ),

  #'Save As' Modal
  div(id = 'save_as_modal', class = 'modal',  role="dialog",tabindex="-1",
      div(class="modal-dialog", role="document",
          div(class="modal-content",
     div(class = 'modal-header'
        ,tags$div(class = 'button', class = 'close', `data-dismiss` = 'modal', `aria-hidden`='true', 'x')
        ,h3('Save As',class="modal-title")
     )
    ,div(class = 'modal-body'
       ,p('Enter a new dashboard title:')
       ,textInput('save_as_file_name', label = NULL, value = '')
     )
    ,div(class = 'modal-footer'
        ,HTML('<button type="button" data-dismiss="modal" class="btn">Close</button>')
        ,HTML('<button type="button" data-dismiss="modal" class="btn btn-primary action-button" id="save_as_dash_btn">Save Dashboard</button>')
     )
  )
  )),
   
  #Query Editor Modal
  div(id = 'full-width', class = 'modal',  role="dialog",tabindex="-1",
      div(class="modal-dialog", role="document",
          div(class="modal-content"
              ,div(class = 'modal-header'
              ,tags$div(class = 'button', class = 'close', `data-dismiss` = 'modal', `aria-hidden`='true', 'x')
              ,h3('Query Editor',class="modal-title")
              )
         ,div(class = 'modal-body'
            ,fluidRow(column(6,h4('Edit Query')), column(6,h4('Table Preview')))
            ,fluidRow(
              column(6, shinyAce::aceEditor("code", 
                                  mode="sql", 
                                  height = "300px",
                                  value=''
              ),
             HTML('<button class="btn btn-primary action-button shiny-bound-input" id="update_preview">Update Preview</button>'),
             selectInput('selected_db', label = NULL, choices = names(db_list)), 
             tags$input(id = 'active_chart_id', type = 'text', value = '', class = 'shiny-bound-input', style = 'visibility: hidden; z-index: -1')
             ),
              column(6, dataTableOutput("output_tbl"))
            )
       ),
      div(class = 'modal-footer',
             HTML('<button type="button" data-dismiss="modal" class="btn">Cancel</button>
                    <button type="button" data-dismiss="modal" class="btn btn-primary action-button" id="save_changes">Save Query</button>')
        )
      )
    )
  ),
  p('powered by iHR DataScience, bootstrap update by Mike Morris', align = 'left')
))
