# 사진 이미지 업로드 하여 이미지 갤러리 BBS로 변환

* spring framework에서는 기본적으로 Text 위주의 project만 지원한다.
* file(종류에 관계없이)을 upload하기 위해서 apache에서 지원하는 dependency를 도움을 받아야 한다. 
* commons-io, commons-fileupload

## file upload 할 수 있도록 서버 context를 설정 해 주어야 한다. 
* file-context.xml 파일을 설정하여 file upload 설정하는데
* context-param에서 핸들링 할 수 있도록 root-context.xml과 같은 위치 작성
* file 선택을 하기 위해 input type="file" tag를 추가하고
* form tag에 entype="multipart/form-data"
* upload하는 파일의 type을 제한 하고 싶을 때 accept="image/*" 설정 해 주면 된다.
* file의 확장자를 검사하여 제한하고 싶을 때 accept=".gif, .jpg, .jpeg, .png"
* 미디어 타입과 확장자를 검사하여 제한하고 싶을 대 accept="video.mp4, audio/mp3, image/png"