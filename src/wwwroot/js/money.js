$(".price").each(function() {
    var item = $(this).text();
    var num = Number(item).toLocaleString('vi');

    if (Number(item) < 0) {
        num = num.replace('-', '');
        $(this).addClass('negMoney');
    } else {
        $(this).addClass('enMoney');
    }

    $(this).text(num);
});