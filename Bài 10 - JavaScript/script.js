var danhSachVid = [
            {
                id: 1,
                ten: "3 PHẢI 6 ĐỪNG - Quân A.P (Official MV)",
                duongDanAnh: "3 phải 6 đừng.png",
                duongDanYoutube: "https://www.youtube.com/embed/INJuqE_34eQ?si=sRoEtM--e46uVwqq",
            },
            {
                id: 2,
                ten: "hqhuy - mùa hè năm ấy (Official Lyric Video)",
                duongDanAnh: "mùa hè năm ấy.png",
                duongDanYoutube: "https://www.youtube.com/embed/ugG4i8HgxXw?si=2pzhED12YZbX_E7q",
            },
            {
                id:3,
                ten: "Sớm Như Vậy / buitruonglinh",
                duongDanAnh: "Sớm như vậy.png",
                duongDanYoutube: "https://www.youtube.com/embed/6hNenqz0ISA?si=abLxerWdBQdAklc8",
            },
            {
                id: 4,
                ten: "Hngle - Tìm em ft. Bảo Anh | Official Music Video",
                duongDanAnh: "tìm em.png",
                duongDanYoutube: "https://www.youtube.com/embed/gJAbDSse5WM?si=Mc-7T7w-H42qurUX",
            }

        ]
        function chonBai(id){
            for (let i =0; i< danhSachVid.length; i++) {
                if(danhSachVid[i].id == id){
                    document.getElementsByClassName("video")[0].src = danhSachVid[i].duongDanYoutube;
                }
                
            }
        }