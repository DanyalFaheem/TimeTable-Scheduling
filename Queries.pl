
/*Query 2 */
isteaching(Name,CourseName):-
    instructor(Name,A),
    course(X,CourseName),
    coursesection(X,Z),
    teaches(A,Z).

/*Query 4*/
belongtoduplicaterollnum(Name):-
    student(X,Name),
    student(Y,Name),
    Y\=X.

/*Query 6 */
roomcollision(CourseName1,CourseName2):-
    course(X,CourseName1),
    course(Y,CourseName2),
    examtime(Z,A,B,X,C),
    examtime(Z1,A1,B1,Y,C1),
    Z1 = Z,
    A1 = A,
    B = B1,
    C = C1.

/*Query 8*/
checkroom(Room, Day, StartTime):-
    examtime(Day,StartTime,ET,CID,Room),
    examtime(Day,StartTime,ET,CID,Room).

/*Query 10 */
teachestwocourses(TeacherName):-
    instructor(Email,TeacherName),
    teaches(Sec,Email),
    coursesection(Code,Sec),
    coursesection(Code1,Sec),
    Code1 = Code;
    instructor(Email,TeacherName),
    teaches(Sec1,Email),
    coursesection(Code,Sec1),
    coursesection(Code1,Sec1),
    Code = Code1.



/*Query 1 */
doubleExam(Name):-
	student(R,Name),
	section(R,SI),
	coursesection(CI1,SI),
	coursesection(CI2,SI),
	CI1\=CI2,
	examtime(D1,ST1,ET1,CI1,R1),
	examtime(D1,ST2,ET2,CI2,R2),
	ST1\=ST2,
	ET1\=ET2.
		
/*Query 3 */        
examcollision(CNameX,CNameY):-
	course(Xid,CNameX),
	course(Yid,CNameY),
	coursesection(Xid,X),
	coursesection(Yid,Y),
	X=Y,
	examtime(A,B,C,Xid,D),
	examtime(A1,B1,C1,Yid,D1),
	A=A1,
	B=B1,
	C=C1,
	D\=D1.

/*Query 5 */
isswitchpossible(Room1,Room2,DX,ST):-
	capacity(Room1,X),
	capacity(Room2,Y),
	X = Y,
	examtime(DX,ST,ET,Xid1,Room1),
	examtime(DX,ST,ET,Xid2,Room2).
		
/*Query 7 */        
havecommonsection(S,T,CN):-
	student(X,S),
	student(Y,T),
	section(X,SX),
	section(Y,SY),
	course(C,CN),
	coursesection(C,SC),
	SC = SX,
	SC = SY.

/*Query 9 */
teachestwosections(TName):-
	instructor(TName,Email),
    teaches(Email,Sec1),
    teaches(Email,Sec2),
	Sec1 \= Sec2.