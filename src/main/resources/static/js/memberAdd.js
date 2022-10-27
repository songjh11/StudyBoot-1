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
                return false;
            } 
    });
    // $("#all").prop("checked", flag);
});

//id, pw, pwEquals, name, email
let results = [false, false, false, false, false];

// ID check
$("#id").blur(function(){
    let id = $("#id").val();
    let result = nullcheck($("#id").val(), "#inputIdResult", "ID");
    results[0] = result;
    
    //단 id가 비어있지 않을때 사용
    
    $.get("./idCheck?id="+id, function(data){
        console.log(data);
        if(data=='0'){
            $("#inputIdResult").text("사용 가능한 ID입니다")
            results[0] = true;
        }else{
            $("#id").val("");
            $("#inputIdResult").text("이미 사용중인 ID입니다")
            results[0] = false;
        }
    })
}); 

let idv = "";

$("#idCheckBtn").click(function(){
    idv = $("#id").val();
    let result = null;
        $.ajax({
            url: "./idcheck", 
            type: "GET",
            data: {
                'id': idv
            }
        ,
            success: function(data){
                result = data;
                if(result==0){
                    console.log("중복ㄴㄴ");
                }
            }, 
            error: function(data){
                result = data;
                if(result==1){
                    console.log("중복");
                }
            }
     });
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

$("#test").click(function(){
    let id="123";
    let name = "iu";
    $.post("test", {
        id:id, 
        name:name
    }, function(result){
        console.log("Result: ", result);
        console.log("Name: ", result.name);
        // JSON으로 안 올 때는 아래처럼 처리하고 진행
        // result = JSON.parse(result);
    });
})

$("#test2").click(function(){
    let id="";
    $.ajax({
        type: "GET",
        url: "idCheck",
        data: {
            id:id
        },
        success: function(data){
            if(data==0){
                console.log("success: ",data);
            } else{
                console.log("fail: ",data);
            }
        },
        error: function(xhr, status, error){
            console.log("xhr: ",xhr);
            console.log("status: ",status);
            console.log("error: ",error);
        }

    }
    )
})

$("#test3").click(function(){
    let id="123";
    let name = "iu";
    let ar = [1,2,3];
    $.ajax({
        type: "POST",
        url: "test",
        traditional: true,
        data: {
            id:id,
            name:name,
            ar:ar
        },
        success: function(data){
            console.log("success: ",data);
        },
        error: function(xhr, status, error){
            console.log("xhr: ",xhr);
            console.log("status: ",status);
            console.log("error: ",error);
        }
    }
    )
});

let count =3;
$("#s1Add").click(function(){
    // let add = '<option class="abc" id="abc'+count+'">'+count+'</option>';
    // $("#s1").append(add);
    // count++;

    $("#s1Add").remove();
});

$("#s1").click(function(){
    $("#s1").empty();
});