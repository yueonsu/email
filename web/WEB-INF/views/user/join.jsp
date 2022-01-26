<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="join.css">
    <title>Document</title>
    <style>
        .joinSection { display: flex; align-items: center; flex-direction: column;}
        .joinContainer { display: flex; align-items: center; flex-direction: column; width: 60%; }
        .easyJoinContainer { width: 100%; }
        .easyJoin{ text-align: center; width: 100%;}
        .borderBtm { border-bottom: 1px solid black; padding-bottom: 30px; }

        .joinContainer > form > div > input { margin-top: 10px; width: 300px; padding: 10px 0px; }
        .joinContainer >form > div > div > input { margin-top: 10px; width: 300px; padding: 10px 0px;}
        .joinContainer > form > div > div > button { margin-top: 10px; padding: 8px 25px; background-color: white; border-radius: 10px;}
        .joinContainer > form > div > div > button:hover { transition: all 0.5s; cursor: pointer; background-color: black; color: white; }
        .joinContainer div:nth-child(6) { margin-bottom: 30px; }

        .pl-100 { padding-left: 100px; }
        .mb-20 { margin-bottom: 20px; }
        .mr-10 { margin-right: 10px; }
        .pb-20 { padding-bottom: 20px; }
        .mt-20 { margin-top: 20px; }

        .emailContainer { display: flex; flex-direction: row; }

        .joinSection > input { margin-top: 20px; padding: 10px 70px; color: white; background-color: black; border-radius: 10px;}
        .joinSection > input:hover { transition: all 0.5s; cursor: pointer; background-color: white; color: black; }

        #emailChkId > button { margin-top: 10px; padding: 8px 25px; background-color: white; border-radius: 10px;
            margin-left: 4px;
        }
        #emailChkId > button:hover { transition: all 0.5s; cursor: pointer; background-color: black; color: white; }




        @import url('https://fonts.googleapis.com/css2?family=Lato&display=swap');
        @font-face { font-family: 'NanumBarunGothic';
            src: url('/fonts/NanumBarunGothic.eot');
            src: url('/fonts/NanumBarunGothic.eot') format('embedded-opentype'),
            url('/fonts/NanumBarunGothic.woff') format('woff');}

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        html, body, .container {
            width: 100%;
            height: auto;
        }

        header {
            width: 1200px;
        }

        .headerInput {
            border-top: none;
            border-left: none;
            border-right: none;
            border-bottom: #DDDDDD 1px solid;
        }
        input:focus {outline:none;}

        button:hover {
            cursor: pointer;
        }

        table {
            border-collapse: collapse;
            border-spacing: 0;
        }

        li {
            list-style: none;
            padding: 10px 0px 10px;
        }

        .container {
            display: grid;
            grid-template-rows: 199px 1fr;
            justify-content: center;
        }

        .lato-16 {
            font-family: 'Lato', sans-serif;
            font-size: 16px;
        }
        .lato-30 {
            font-family: 'Lato', sans-serif;
            font-size: 30px;
        }

        .nanum-12 {
            font-family: 'NanumBarunGothic', 'serif';
            font-size: 12px;
        }
        .nanum-13 {
            font-family: 'NanumBarunGothic', 'serif';
            font-size: 13px;
        }
        .nanum-14 {
            font-family: 'NanumBarunGothic', 'serif';
            font-size: 14px;
        }
        .nanum-15 {
            font-family: 'NanumBarunGothic', 'serif';
            font-size: 15px;
        }
        .nanum-16 {
            font-family: 'NanumBarunGothic', 'serif';
            font-size: 16px;
        }
        .nanum-18 {
            font-family: 'NanumBarunGothic', 'serif';
            font-size: 18px;
        }

        .headerContainer {
            display: grid;
            grid-template-rows: 37px 122px 40px;
            width: 100%;
        }
        .headerContainerTop {
            display: grid;
            grid-template-columns: 80px 80px 1fr 160px 80px;
        }
        .headerContainerTop * {
            display: grid;
            justify-content: center;
            align-items: center;
        }
        .searchBox {
            display: grid;
            grid-template-columns: 1fr auto;
        }
        .center {
            display: grid;
            justify-content: center;
            align-items: center;
            height: 100%;
        }
        .topMenu {
            display: grid;
            grid-template-columns: repeat(7, 1fr);
            column-gap: 10px;
        }
        .red {
            color: red;
        }
        .grayBox {
            border: 2px solid #DDDDDD;
        }
        .grayBoxTb {
            border-top: 2px solid #DDDDDD;
            border-bottom: 2px solid #DDDDDD;
        }
        .mb-35 {
            margin-bottom: 35px;
        }

        .textCenter {
            text-align: center;
        }
        .rline {
            border-right: 1px solid #DDDDDD;
        }
        .hund {
            width: 100%;
            height: 100%;
        }
        .darkGray {
            color: #777777;
        }
        .mt-20 {
            margin-top: 20px;
        }
        .mb-10 {
            margin-bottom: 10px;
        }
        .pl-5 {
            padding-left: 5px;
        }
        .mt-10 {
            margin-top: 10px;
        }

        .checkbox {
            border-radius: 0;
        }


        .mt-10 {
            margin-top: 10;
        }
        .grayBtn {
            border: 1px solid #626262;
            padding: 4px 10px 4px;
        }
        .grayBtn2 {
            border: 1px solid #777777;
            padding: 4px 10px 4px;
            color: #484848;
        }
        .mb-5 {
            margin-bottom: 5px;
        }
        .rowFlex {
            display: flex;
            flex-direction: row;
            justify-content: center;
            gap: 20px;
        }
        .colFlex {
            display: flex;
            flex-direction: column;
            justify-content: center;
            gap: 20px;
        }
        .mtaMba {
            margin-top: auto;
            margin-bottom: auto;
        }
        .mt-35 {
            margin-top: 35px;
        }
        .f-1 {
            flex: 1;
        }
        .float-right {
            float: right;
        }
    </style>
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
                    <input type="text" class="headerInput">
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
<section class="joinSection mt-20">
    <div class="joinContainer borderBtm">
        <div class="easyJoinContainer borderBtm mb-20"><h1 class="easyJoin">간편가입</h1></div>
        <form class="joinFrm pl-100" action="#" method="post">
            <div>
                <input type="text" name="uid" placeholder="아이디">
            </div>
            <div>
                <input type="password" name="upw" placeholder="비밀번호">
            </div>
            <div>
                <input type="password" name="upw_chk" placeholder="비밀번호확인">
            </div>
            <div class="emailContainer">
                <div class="mr-10"><input type="text" name="email" placeholder="이메일"></div>
                <div><button id="chkEmailBtn">인증</button></div>
            </div>
            <div id="emailChkId">
                <input type="text" id="chkEmailInput" name="email_chk" placeholder="인증번호확인" disabled="disabled">
            </div>

            <input type="submit" value="회원가입">
        </form>
    </div>
    <div id="test"></div>
</section>
<script>
    const chkEmailBtn = document.querySelector('#chkEmailBtn');
    const emailChkid = document.querySelector('#emailChkId');
    const emailChk = 'asd';
    var isSendForm = 0;

    chkEmailBtn.addEventListener('click', (e) => {
        e.preventDefault();
        const isBtn = emailChkid.querySelector('.isBtn');
        if(!isBtn) {
            const joinFrmElem = document.querySelector('.joinFrm');
            const data = {
                'email': joinFrmElem.email.value
            };
            console.log(joinFrmElem.email.value);
            console.log(data);
            const emailInput = document.querySelector('#chkEmailInput');
            emailInput.disabled = false;
            const emailBtnElem = document.createElement('button');
            emailBtnElem.innerText = "확인";
            emailBtnElem.className = 'isBtn';
            const emailChkElem = document.querySelector('#emailChkId');
            emailChkElem.appendChild(emailBtnElem);
            fetch('/email/send', {
                method: 'post',
                headers: {'Content-Type' : 'application/json'},
                body: JSON.stringify(data)
            }).then((res) => {
                return res.json();
            }).then((data) => {


                emailBtnElem.addEventListener('click', (e) => {
                    e.preventDefault();
                    if(isSendForm === 1) {
                        return;
                    }
                    const chkEmailInput = document.querySelector('#chkEmailInput');
                    console.log('data.result : ' +data.result);
                    console.log('value : ' + chkEmailInput.value);
                    if(parseInt(chkEmailInput.value) === data.result) {
                        alert('인증이 완료되었습니다!');
                        isSendForm = 1;
                        chkEmailInput.value = '인증완료';
                        chkEmailInput.style.color = 'blue';
                        emailInput.disabled = true;
                        emailBtnElem.remove();
                    } else {
                        alert('인증에 실패했습니다.');
                    }
                });
            }).catch((e) => {
                console.log(e);
            })
        }
    });

    const joinFrmElem = document.querySelector('.joinFrm');
    if(joinFrmElem) {
        joinFrmElem.addEventListener('submit', (e) => {
            if(isSendForm !== 1) {
                e.preventDefault();
                alert('이메일 인증을 완료해 주세요.');
            }
        });
    }
</script>
</body>
</html>