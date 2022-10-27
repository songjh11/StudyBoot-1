//파일의 갯수를 지정하는 변수
let count = 0;            
//del버튼에 아이디 주는 변수(내가 원하는게 삭제 되는지 확인하기 위한 변수)
let idx = 0;

$("#fileAdd").click(function(){
    let r = '<div class="mb-3">';
    r=r+'<label for="contents" class="form-label">File</label>';
    r=r+'<input type="file" name="files">';
    r=r+'<button type="button" class="del" id="del'+idx+'">X</button>';
    r=r+'</div>';

    let add = '<div class="mb-3"><label for="contents" class="form-label">File</label><input type="file" name="files"></div>'
    if(count<5){
        console.log(r);
        // $("#fileArea").append(add);
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
})

