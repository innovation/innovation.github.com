module ApplicationHelper
  def csp_url(name="")
    "http://www.microsoft.com/industry/publicsector/government/csp/#{name}"
  end

  def pages
    ["Home", "Training", "Services", "Solutions", "People & Contacts"]
  end

  def page_title
    full_page_title.join(" - ")
  end

  
  def full_page_title
    page_title = [@site_name ||= "Microsoft Innovation Center, Vietnam"]
    page_title << @page_title
  end


  def page_description
    @page_description ||
    "The best Microsoft based IT services and training in Vietnam"
  end


  def page_keywords
    @page_keywords ||
    "Microsoft Technology, IT Services, IT Training, SharePoint, CRM, .NET, Hanoi, Vietnam"
  end


  def body_id
    @body_id
  end

  
  def body_class
    "bp " + class_names.join(" ")
  end
  

  def body_class_current_page
    current_page.gsub("/", "").gsub(".html", "")
  end
  

  def class_names
    body_class = [body_class_current_page]
    body_class << (@body_class unless @body_class.nil?)
  end
  
  
  def google_analytics
<<-EOS    
<script type="text/javascript">
  var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
  document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
  try { _gat._getTracker("UA-15818519-1")._trackPageview(); } catch(err) {}
</script>
EOS
  end
  
end