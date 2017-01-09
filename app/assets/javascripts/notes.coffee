$ ->
    foo = ->
        $('#hello').toggle()
        $('#hello').css({
            'z-index': 1024,
            'position': "fixed",
            'top': '300px',
            'left': "300px",
            'width': "500px",
            "height": "500px"

        })

    $('.all-nodes').on('click', foo)

