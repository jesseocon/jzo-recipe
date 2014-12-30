RA.recipes =
  ready: ->

    # jQuery option Object literal for filepicker-jquery.js
    pickerOptions =
      pickerField: '#image_url'
      thumbField: '#fp-thumb'
      fullsizeField: 'fake'
      fpkey: 'AMWWtbU5VRVOMxeytNPx3z'
      fpRemoveElSelector: '#fp-remover'
      pickerClicker: '#fp-clicker'
      multipleFiles: false
      location: 's3'
      access: 'public'
      onFPResultsReady: (Blobs, $thumbnailField, $pickerField, $fullsizeField, context) ->
        # el = JST['views/course_comments/comment_image'](Blobs[0])
        # $thumbnailField.empty().html(el)
        $pickerField.val(Blobs[0].url)

    $('#recipe-form-container').picker(pickerOptions)

