class Resume 
    def initialize(name="Shubha_Chaudhary")
        @name=name
        @projects=[]
    end
    def contact_details
        @details=%{Shubha Chaudhary 
            	Web Application Developer
            	Shubha.learning@gmail.com
            	https://www.linkedin.com/in/shubhachaudhary/
            	https://www.github.com/ShubhaChaudhary
            	https://www.codewars.com/users/ShubhaChaudhary
            	Permanent Resident having full AU working rights
        }
    end 
    def about_me
        @about_me = %{
            About me 
            Being curious by nature and of analytical attitude, I developed my interest in Mathematics and Physics since early childhood and pursued engineering post-graduation as part of my education.I believe I have the trait to experiment in doing things in a different way and I find it very enriching to create something which is productively beneficial. Coupled with my mathematics and engineering background, writing software code attracted me as it creates a tangible output and has numerous application which impacts our day to day life.
        }  
    end
    def current_projects
        @projects=[Project.new("Fitness_App","Ruby terminal app that calculate BMI (Body mass index) and assign the fitness program "),
            Project.new("Personal Portfolio ", "A personal webpage built with HTML5 and CSS. Deployment done with GitHub.\n https://shubhachaudhary.github.io"),
            Project.new("Hot Carrier Model ","Build a mathematical model to show the degradation effect in CMOS device. Internship project at NXP Semiconductors – Nijmegen Netherlands."),
            Project.new("Minimizing Noise Effect in Communication Devices","MATLAB based program to reduce the noise effect for mild and strong Intersymbol interference in signal processing.")] 
            @projects.each{|project| puts"**#{project.title}::#{project.description}"}                                
        end    
        def add_future_projects(title,description)
            @project=Project.new(title,description)
            @projects << @project
            return  "#{@project.title}, #{@project.description}"
        end
        def skills(new_skill="")
            @skill=[{software_language:"Ruby, HTML5, CSS, Base SAS, C"},{Frameworks: "Rails"},{Databases: "SQLite, Postgres"},{Other: "Trello, GitHub, Agile Methodology,Word, PowerPoint & Excel"},{Learning_in_prosses:"JavaScript, React JS, Node JS"}]
            @skill<<new_skill
            @skill.each{|k| puts "\n#{k}"}
            
        end
        def community(new_events_in_comming_month="")
            @rows= "	
            Meetups | Bris Ruby, Women-Who-Code, 
            NodeGirlsJS, Enterprise UX Brisbane
            Event |    RCL – Co-working Day and Pitches Evening
            "
            @rows += new_events_in_comming_month
        end
        
        def work_history(new_work="")
            @work_history = "
              Student - Fast Track Coding Boot Camp: Diploma of Information Technology|Coder Academy, Brisbane Australia
            AUGUST 2018 – TILL DATE
              Customer Service Assistant | Croydon Central Library, London UK
            AUGUST 2016 – JANUARY 2018
              Electronic Quotation Engineer | Bitelle Electronics, Canada
            APRIL 2015 – NOVEMBER 2015
            o Worked on “Bill of Materials” that required attention to detail and knowledge of Microsoft Excel.
              Internship | NXP Semiconductors, Nijmegen – Netherlands
            MARCH 2008 – OCTOBER 2008 
            o The objective of my work was to perform stress measurement at different biasing conditions and analyze the data for modeling. 
            "
            @work_history += new_work
        end  
        def education
            @education="
            	Fast Track Coding Boot Camp | Diploma of Information Technology| Coder Academy, Brisbane Australia
            	Master of Technology | Manipal Institute of Technology, Manipal, India | Digital Electronics & Advanced Communication
            	Bachelor of Technology | University Institute of Engineering and Technology (UIET), Kanpur, India | Electronics & Communication
            	Certification in Business Analytics Foundation
            "
        end      
    end
    
    class Project 
        attr_accessor :title,:description
        def initialize(title,description ='')
            @title=title
            @description=description
        end   
    end    
    
    
    Shubha_Chaudhary=Resume.new
    puts Shubha_Chaudhary.contact_details
    puts Shubha_Chaudhary.about_me
     Shubha_Chaudhary.current_projects
     Shubha_Chaudhary.skills()
    # puts Shubha_Chaudhary.community()
    # puts Shubha_Chaudhary.work_history
    # puts Shubha_Chaudhary.education
    
    