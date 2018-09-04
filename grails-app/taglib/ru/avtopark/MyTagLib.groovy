package ru.avtopark

class MyTagLib {

    static namespace = 'my'

    def select = { attr ->
        out << '<div class=\"form-group\">'
        if (attr.label) {
            out << '<label>'
            out << attr.label
            out << '</label>'
        }
        attr.class = 'form-control'
        out << g.select(attr)
        out << '</div>'
    }
}
