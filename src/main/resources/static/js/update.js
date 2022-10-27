

$("#fileArea").on("click",".fileDel",function(){
    const btn = $(this);
    let check = window.confirm("삭제하시겠습니까?")
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

$("#fileAdd").click(function(){

});