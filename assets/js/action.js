$(document).ready(function () {
    $('#logo').fadeIn(3000);
    // document.oncontextmenu = desabilitar;
    $().UItoTop({easingType: 'easeOutQuart'});

    $.getScript('/adm/default/js/lib/jquery.mask.min.js', function () {
        $('#qtd').mask('###.##0', {reverse: true});
        $("#cnpj").mask("99.999.999/9999-99");
    });

    $("span.menu").click(function () {
        $("ul.nav1").slideToggle(300, function () {
            // Animation complete.
        });
    });

    $(document).on('click', '#voltar', function () {
        $.ajax({
            url: '/galeria/',
            type: 'GET',
            dataType: 'html'

        }).done(function (data) {
            $('.port').html(data);
        });
    });
    $(document).on('click', '.galeria', function () {
        var param = $(this).data('param');
        $.ajax({
            url: '/galeria/ajax-operacao/',
            data: {
                param: param
            },
            type: 'GET',
            dataType: 'html'

        }).done(function (data) {
            $('.port').html(data);
        });

    });

//    var $grid = $('.portfolio-grids').isotope({
//        // options
//    });
//    // filter items on button click
//    $('.filter-button-group').on('click', 'button', function () {
//        $('button').removeClass('clicado');
//        $(this).addClass('clicado');
//        var filterValue = $(this).attr('data-filter');
//        $grid.isotope({filter: filterValue});
//    });

    $('#slider').coinslider({
        effect: 'rain', // random, swirl, rain, straight
        spw: 7,
        sph: 5,
        width: 1140,
        height: 430,
        opacity: 0.8,
        titleSpeed: 500,
        links: true,
        hoverPause: true,
        navigation: false,
        //sDelay: 2,
        delay: 4000
    });

    $('.map_google').click(function (e) {
        $(this).find('iframe').css('pointer-events', 'auto');
    }).mouseleave(function (e) {
        $(this).find('iframe').css('pointer-events', 'none');
    });


    setTimeout(function () {
        centerCS();
    }, 500);

});


// center coin slider image
function centerCS() {
    var w = $(".container").width();  // container of coin slider
    var csw = $("#slider").width();
    var lpad = (w - csw) / 2;

    $("#slider").css("margin-left", lpad + "px");

}

function mascara(telefone) {
    if (telefone.value.length == 0)
        telefone.value = '(' + telefone.value; //quando começamos a digitar, o script irá inserir um parênteses no começo do campo.
    if (telefone.value.length == 3)
        telefone.value = telefone.value + ') '; //quando o campo já tiver 3 caracteres (um parênteses e 2 números) o script irá inserir mais um parênteses, fechando assim o código de área.

    if (telefone.value.length == 8)
        telefone.value = telefone.value + '-'; //quando o campo já tiver 8 caracteres, o script irá inserir um tracinho, para melhor visualização do telefone.
}

function desabilitar() {
    alert("Função desabilitada.\n\nDesculpe o incômodo.");
    return false;
}