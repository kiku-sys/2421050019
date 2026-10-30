var danhSachAnh = [
    {
        id: 1,
        ten:"Nhóc trùm trở lại trong nôi",
        duongDanAnh:"pho-bien1.png",
        duongDanYt: "https://www.youtube.com/embed/uyXucUY9RHo?si=u7LAwd5I7RCsYYt5",
    },
    {
        id: 2,
        ten:"Sharkdog",
        duongDanAnh:"pho-bien2.png",
        duongDanYt: "https://www.youtube.com/embed/nm1hA18q_Ws?si=P32Ctu5-68iqTcMA",
    },
    {
        id: 3,
        ten:"mèo đi hia",
        duongDanAnh:"pho-bien3.png",
        duongDanYt: "https://www.youtube.com/embed/uyXucUY9RHo?si=u7LAwd5I7RCsYYt5",
    },
    {
        id: 4,
        ten:"Trụ cột gia đình",
        duongDanAnh:"pho-bien4.png",
        duongDanYt: "https://www.youtube.com/embed/nm1hA18q_Ws?si=P32Ctu5-68iqTcMA",
    },
    {
        id: 5,
        ten:"Thám tử pikachu",
        duongDanAnh:"pho-bien5.png",
        duongDanYt: "https://www.youtube.com/embed/uyXucUY9RHo?si=u7LAwd5I7RCsYYt5",
    },
]
function chonAnh(id){
    for (let i = 0; i < danhSachAnh.length; i++) {
        if(danhSachAnh[i].id == id){
            // document.getElementsByClassName("banner-img")[0].src = danhSachAnh[i].duongDanAnh;
            document.getElementsByClassName("banner-img")[0].src = danhSachAnh[i].duongDanYt;
        }
    }
}

