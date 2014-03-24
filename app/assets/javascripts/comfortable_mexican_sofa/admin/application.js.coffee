#= require summernote/dist/summernote

if typeof window.CMS != 'undefined'
  window.CMS.wysiwyg = ->
    $ ->
      $('textarea[data-cms-rich-text]').summernote({
        height: 300,
        tabsize: 2,
        codemirror: {
          theme: 'monokai',
          tabSize: 2,
          indentUnit: 2,
          indentWithTabs: false
        }
      })