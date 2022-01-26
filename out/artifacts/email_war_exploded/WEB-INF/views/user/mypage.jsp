<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="mypage.css">
    <title>Document</title>
</head>
<body>
<div class="container">
    <header>
        <div class="headerContainer">
            <div class="headerContainerTop">
                <a class="nanum-12">로그인</a>
                <a class="nanum-12">회원가입</a>
                <div></div>
                <div class="searchBox">
                    <input type="text">
                    <a><i class="fas fa-search"></i></a>
                </div>
                <div><i class="fas fa-shopping-bag"></i></div>
            </div>
            <div class="center lato-30"><a>fitBook</a></div>
            <div class="topMenu">
                <div></div>
                <div class="center lato-16">HOME</div>
                <div class="center lato-16">SHOP</div>
                <div class="center lato-16">EVENT</div>
                <div class="center lato-16 red">FIT!</div>
                <div class="center lato-16">NOTICE</div>
                <div></div>
            </div>
        </div>
    </header>
</div>
<div class="myPage-section">
    <div class="myPage-container">
        <div class="submenu">
            <div>
                <h1>배송</h1>
                <li onclick="goPopup()">배송지관리</li>
                <li>주문내역확인</li>
            </div>

            <div>
                <h1>마이정보</h1>
                <li>포인트조회</li>
                <li>내가 쓴 글</li>
            </div>
        </div>

        <div class="mainmenu">
            <img src="pngegg.png">
            <div><button class="imgModBtn">편집</button></div>
            <div class="info-top">
                <div>
                    <span>김정은</span>
                    <span>적립금 :</span>
                    <span>7200p</span>
                </div>
                <div>
                    <a href="#">질문초기화</a>
                    <a href="#">회원탈퇴</a>
                </div>
            </div>
            <div class="info-title"><h1>기본정보</h1></div>
            <div class="info-ctnt">
                <div>
                    <div>
                        <span>아이디 :</span>
                        <span>kju1234@gamil.com</span>
                    </div>
                </div>
                <div>
                    <div>
                        <span>비밀번호 :</span>
                        <span>************</span>
                    </div>
                    <button>비밀번호변경</button>
                </div>
                <div>
                    <div>
                        <span>이름(실명) :</span>
                        <span>김정은</span>
                    </div>
                    <button>이름변경</button>
                </div>
                <div>
                    <div>
                        <span>닉네임 :</span>
                        <span>김정은</span>
                    </div>
                    <button>닉네임변경</button>
                </div>
                <div>
                    <div>
                        <span>이메일 :</span>
                        <span>kju@gmail.com</span>
                    </div>
                    <button>이메일변경</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 도로명주소 api -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    const goPopup = () => {
        new daum.Postcode({
            oncomplete: function(data) {
                console.log(data);
            }
        }).open();
    }
</script>
</body>
</html>