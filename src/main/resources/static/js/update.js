//파일의 갯수를 지정하는 변수
let count = 0;            
//del버튼에 아이디 주는 변수(내가 원하는게 삭제 되는지 확인하기 위한 변수)
let idx = 0;

let flag = true;

$(".fileDel").click(function(){
    const btn = $(this);
    let check = window.confirm("삭제하시겠습니까?")
    if(flag){
        let size = $("#fileArea").attr("data-file-size");
        if(size=='undefined'){
            size=0;
        }
        count = size;
        flag = false;
    }    
    if(check){
        let fileNum = $(this).attr("data-file-num");
        console.log(fileNum);
        $.ajax({
            type:"POST",
            url: "fileDelete",
            data: {
                fileNum:fileNum
            },
            success: function(data){
                if(data==1){
                    $(btn).parent().remove();
                    console.log("와 성공");
                    count--;
                } else{
                    console.log("오 실패");
                }
            },
            error: function(){
                console.log("에러남");
            }
        })
    }
})

function setCount(c){
    if(c<1||c>5){
        c=1;
    }
}

$("#fileAdd").click(function(){
    if(flag){
        let size = $("#fileArea").attr("data-file-size");
        if(size=='undefined'){
            size=0;
        }
        count = size;
        console.log(count);
        flag = false;
    }  

    if(count<5){
        let r = '<div class="mb-3">';
        r=r+'<label for="contents" class="form-label">File</label>';
        r=r+'<input type="file" name="files">';
        r=r+'<button type="button" class="del" id="del'+idx+'">X</button>';
        r=r+'</div>';
        $("#fileArea").append(r);
        count++;
        idx++;
    } else{
        alert("파일 추가는 5개까지 가능합니다");
        return;
    }
});

$("#fileArea").on("click", ".del",function(event){
    console.log("del");
    console.log($(event.target).parent());
    $(event.target).parent().remove();
    count--;
});