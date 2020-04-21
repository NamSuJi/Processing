size(400,400,P3D);//size에 P3D를 명시함으로써 나타나는 도형이 P3D라는 것을 명시
background(0);//배경은 검은색
//noStroke();//mesh line
pointLight(255,255,0,0,0,400);//color,x,y,z
translate(200,200,0);//rotate, 위치 지정
sphere(160);//모자이크된 삼각형으로 이루어진 구를 선언
