export const getNumberFromString = (string)=>{
    let price ;
    if(string.search('đồng/tháng') !== -1){
        price = +string.match(/\d+/)[0] / Math.pow(10,3);
    }else if(string.search('triệu/tháng') !== -1){
        price = +string.match(/\d+/)[0];
    }else{
        price = +string.match(/\d+/)[0]
    }

    return price;
}

export const getNumberFromStringV2 = (string) => {
    let number = 0
    if (string.search('đồng/tháng') !== -1) {
        number = +string.match(/\d+/)[0] / Math.pow(10, 3)
    } else if (string.search('triệu/tháng') !== -1) {
        number = +string.split(' ')[0]
    } else if (string.search('m')) {
        number = +string.match(/\d+/)[0]
    }
    return +number
}