console.log("add");

    
let idCheck = false;
let pwCheck = false;
let nameCheck = false;
let emailCheck = false;

$("#all").click(function(e){
    let ch = $(this).prop("checked")
    console.log("ch:",ch);
    $(".check").prop("checked", ch);

})

$(".check").click(function(){
    // let flag = true;
    $("#all").prop("checked", true);

    $(".check").each(function(idx, item){
        let ch = $(item).prop("checked")
            if(!ch){
                $("#all").prop("checked", false);
                console.log();
                return false;
            } 
    });
    // $("#all").prop("checked", flag);
});

//id, pw, pwEquals, name, email
let results = [false, false, false, false, false];

// ID check
$("#id").blur(function(){
    let result = nullcheck($("#id").val(), "#inputIdResult", "ID");
    results[0] = result;
}); 

$("#idCheckBtn").click(function(){
    let idv = "";
    console.log($("#id").prop("value"));
    idv = $("#id").prop("value"); 
    //     $.ajax({
    //         url: "./idcheck", 
    //         type: "GET",
    //         data: {
    //             'id': idv
    //         }
    //     ,
    //         success: function(result){
    //             let result = result;
    //             if(result==0){
    //                 console.log("중복ㄴㄴ");
    //             }
    //         }, 
    //         error: function(result){
    //             let result = result;
    //             if(result==1){
    //                 console.log("중복");
    //             }
    //         }
    //  });
});

// PW check
$("#pw").on({
    blur: function(){
        let result = nullcheck($("#pw").val(), "#inputPwResult","Password");
        results[1] = result;
    },
    change: function(){
    $("#pw2").val("");
    results[2] = false;
    $("#inputPw2Result").text("");
    }
}); 

// PW equal check
$("#pw2").blur(function(){
    let result = equals($("#pw").val(), $("#pw2").val());
        if(result){
            $("#inputPw2Result").text("입력 확인");
        } else{
            $("#inputPw2Result").text("Password를 다시 입력하세요.");
        }
    results[2] = result;
}); 
    
// name check
$("#name").blur(function(){
    let result = nullcheck($("#name").val(), "#inputNameResult", "이름")
    results[3] = result;
}); 

// email check
$("#email").blur(function(){
    let result = nullcheck($("#email").val(), $("#inputEmailResult"), "이메일")
    results[4] = result;
}); 


$("#joinBtn").click(function(){

    if(results.includes(false)){
        alert("필수 정보 입력이 필요합니다");
    } else {
        alert("전송");
        // $("#joinFrm").submit();
    }

    // let c = true;
    // let ch = $("#all").prop("checked")
    // $.each(results, function(idx, item){
    //     if(!item){
    //         console.log("idx",idx, item);
    //         alert("필수 정보 입력이 필요합니다");
    //         c = false;
    //         return c;
    //     } else{
    //         if(!ch){
    //                 alert("약관 동의가 필요합니다");
    //                 c = false;
    //                 return c;
    //             } 
    //         }
    //     })
    // //event 강제 실행
    // if(c){
    //     $("#joinFrm").submit();
    // }
});