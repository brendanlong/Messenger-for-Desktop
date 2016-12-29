(->
  # Global configuration for AddThis
  window.addthis_share = window.addthis_share || {}
  window.addthis_share =
    passthrough:
      twitter:
        text: 'Beautiful #Facebook #Messenger client for Mac, Windows & Linux'

  # Anchor smooth scrolling
  smoothScroll.init()

  # Personalize the download button
  if document.querySelectorAll
    setDisplay = (elemsQuery, displayMode) ->
      document.querySelectorAll(elemsQuery).forEach (elem) ->
        elem.style.display = displayMode

    if (window.navigator.userAgent.indexOf('Windows') != -1)
      setDisplay '.winDownloadBtn', 'inline-block'
      setDisplay '.otherPlatformsDlLink', 'inline'
      setDisplay '.redirDownloadBtn', 'none'
    if (window.navigator.userAgent.indexOf('Mac') != -1)
      setDisplay '.macDownloadBtn', 'inline-block'
      setDisplay '.otherPlatformsDlLink', 'inline'
      setDisplay '.redirDownloadBtn', 'none'
)()
