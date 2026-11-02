# 부루벨 (bluebell)

`bluebell/` 아래에서 작업할 때 루트 `CLAUDE.md`와 함께 읽는 기록입니다.
모바일 앱 작업은 `app/CLAUDE.md`에 따로 있습니다.

## 다른 컴퓨터에서 이어서 하기 (처음에 확인)

1. 퍼블 저장소를 `C:\work\Intobe`에 둔다 (GitHub `kbg3233-ops/intobePub`, 브랜치 `publish/course-list`). 이미 있으면 `git pull`
2. 커밋 작성자 설정 (컴퓨터마다 따로 해야 함): `git config user.name bg`, `git config user.email on3233@intobe.co.kr`
3. Tomcat `conf/Catalina/localhost/ROOT.xml`의 docBase가 `C:/work/Intobe`인지 확인 (아래 "로컬 서버")
4. 운영 소스와 비교·동기화가 필요하면 회사 컴퓨터의 `C:\work\bluebell`(운영 GitLab 저장소)에서 한다 (아래 "운영 소스 동기화")

## 폴더

| 폴더 | 내용 |
|---|---|
| `bluebell/` (css, inc, js, page …) | PC + 기존 반응형(`--m-` 변수, `mobile.css` 768px) |
| `bluebell/app/` | 모바일 앱 전용 페이지 (스마트폰·태블릿 접속 시 이동) → `app/CLAUDE.md` |

### 퍼블 ↔ 운영 소스 위치

| 퍼블 (`C:\work\Intobe\bluebell`) | 운영 (`C:\work\bluebell\member\src\main\webapp`) |
|---|---|
| `css/`, `js/`, `images/`, `fonts/` | `resources/css`, `resources/js`, `resources/images`, `resources/fonts` (실제 화면에 쓰임) |
| `page/*.jsp`, `inc/*.jsp` (정적 샘플) | `WEB-INF/views/**` (개발 jsp, 구조 다름. 헤더는 `WEB-INF/views/layout/header.jsp`) |
| 이미지 경로 `/bluebell/images/...` | `/resources/images/...` 또는 `../images/...` |
| — | `html/bluebell/` = 예전 퍼블 사본 (2025-10 무렵에서 멈춤, 비교 대상 아님) |

## 로컬 서버 / 확인 주소

- Tomcat: `C:\tools\apache-tomcat-10.1.61` (Downloads의 Tomcat 폴더는 비어 있음)
- `conf/Catalina/localhost/ROOT.xml` → `<Context docBase="C:/work/Intobe" />` (ROOT 컨텍스트)
- 주소 = `http://localhost:8080/` + docBase 아래 경로. **`/Intobe`를 붙이면 404**
- 켜기: `JAVA_HOME=C:\Program Files\Java\jdk-27.0.1.0.3` 설정 후 `bin\catalina.bat run` (startup.bat은 명령 창이 닫히면 같이 꺼짐)
  - PC 메인: http://localhost:8080/bluebell/page/main.jsp
  - PC path: http://localhost:8080/bluebell/path/
  - 앱 path: http://localhost:8080/bluebell/app/path/
- 다른 컴퓨터는 Tomcat 위치·설정이 다를 수 있으니 처음에 확인
- Claude의 Bash에서는 localhost 접속이 안 될 수 있음 → PowerShell로 확인·캡처

## 작업 방식 (사용자와 정한 것)

- **역할**: 사용자는 퍼블 소스(`C:\work\Intobe\bluebell`)만 수정한다. 운영 소스(`resources/`, `WEB-INF/views`)로 옮기는 건 개발자 몫. 운영 소스는 비교·동기화용으로만 본다.
- 작업이 끝나면 **"확인 링크"** 로 수정한 화면의 localhost 주소를 정리해서 준다. 팝업처럼 버튼으로 여는 화면은 어디서 무엇을 누르는지 함께 적는다. (사용자는 VS Code에서 Ctrl+클릭으로 연다)
- 사용자가 파일을 직접 수정하기도 한다. 수정 전에 `git diff`로 사용자 변경을 확인하고, 파일을 통째로 다시 쓰기 전에는 반드시 다시 읽는다. 사용자 수정을 덮어쓰지 않는다.
- 커밋·push는 사용자가 요청할 때 한다. 다른 컴퓨터에서 이어서 작업하므로 보통 push까지.
- **대화로 정한 것도 기록한다** (사용자 요청 2026-11-02): 작업 내용뿐 아니라 사용자와 나눈 결정·설명·보류 사항을 이 파일(또는 `app/CLAUDE.md`)의 "대화 기록"에 남기고, 커밋할 때 함께 올린다. Claude의 기억은 컴퓨터마다 따로라서 다른 컴퓨터에서는 이 파일만 이어진다.
- 화면이 예전 모습으로 보이면 사용자에게 **Ctrl+F5**(강력 새로고침)를 안내한다 (css 캐시)
- 파일은 CRLF 줄바꿈. Git Bash의 `sed -i`로 고치면 LF로 바뀌니 끝나고 CRLF로 되돌린다.
- 시안 확인: Figma 링크는 Figma MCP로 직접 읽는다 (처음에 `/mcp` → claude.ai Figma 로그인 필요). **PSD는 직접 못 읽음** → 사용자가 PSD 옆에 PNG를 내보내 둠 (예: `C:\Users\DesignPL\Desktop\작업psd\bluebell\pc\알림.png`). PNG만 있을 때는 수치를 측정해서 쓰고, 추정한 수치는 알려준다.
- 렌더링 확인: 헤드리스 크롬으로 캡처해서 시안과 비교 (`chrome.exe --headless=new --screenshot`). 375px처럼 좁은 폭은 iframe으로 감싸서 찍는다.
- 사용자는 디자이너/퍼블리셔. 설명은 쉬운 말로, 전문 용어는 풀어서.

## 사람

- **bg** = 현재 사용자 (2026-10-27부터, 회사 메일 on3233@intobe.co.kr)
- **purestar** = 퇴사한 선임 퍼블 (~2026-02-26, 마지막 커밋 `d5a6d1e`). 사용자가 이어받음 → 선임 작업은 "내 작업"이 아니라 이어받은 작업으로 구분해서 설명
- 운영 개발자: JH(모바일앱·가로대응), hhkim(결함 수정), nskim(번역·모바일 레이아웃), sujin(iOS 배지·브랜드 변경), hilee(퍼블 파일을 운영에 반영해 온 사람)
- 선임은 운영 저장소에 직접 커밋한 적 없음. 개발자들이 퍼블 파일을 `resources/`에 옮겨 넣어 왔음 ("[사용자] css 파일 최신화", "퍼블 적용")

## 다음에 할 일 / 확인할 것

- [ ] **개발자·팀장에게 확인**: ① 퍼블 수정본을 어떻게 전달하나 (GitHub 링크 / 파일 전달 / GitLab 직접) ② 운영 `resources`를 퍼블이 직접 수정해도 되나 → 답에 따라 작업 방식 정리
- [ ] PC 메인 공지/FAQ 줄: FAQ 쪽 "더보기"가 영역 밖으로 밀림 (원인 `custom.css`의 `.part-content { white-space: nowrap }`, `.part-content a { font-size: 14px }`). 이 규칙은 모든 화면에 걸리므로 `.main-notice-faq .part-content`처럼 메인에만 덮어써서 고칠 것
- [ ] 헤더 메뉴 작업: `custom.css` "메인/서브 메뉴 정렬 (영문 메뉴 대응)"(nskim)이 대메뉴를 같은 폭으로 나누고 `.h-sub-menu > ul { width: auto !important }`로 **하위 메뉴 `--w`를 무시**함 → 이 규칙 기준으로 맞출 것. 운영 메뉴 이름은 DB, 하위 메뉴 폭은 `handleMenuWidth` 스크립트(`WEB-INF/views/layout/header.jsp`)라서 개발자에게 메모로 전달
- [ ] `page/login.jsp` placeholder가 `비밀번호를 입력하세요!`로 되어 있음 (10/27·10/29 "test" 커밋에서 바뀐 것으로 보임) → 되돌릴지 사용자 확인
- [ ] 개발자에게 전달: 선임 커밋 `c8bd243`(2025-12-12) 중 운영에 빠진 것 — 탭 버튼 좌우 여백 `--tab-btn-pd-x: 20px`(운영 0), PC My 학습현황 `.main-learning-stat` 글자 15px·자간 -1px
- [ ] PC `li.read` 파란 글씨, 모바일 알림(`m-alarm.jsp`) 미적용, PC 전체 Pretendard 전환 여부 (아래 PC 작업 기록 참고)

## 대화 기록 (결정·설명·보류)

### 2026-11-02

- **GitHub와 GitLab**: 퍼블 저장소(`github.com/kbg3233-ops/intobePub`)는 사용자 개인 **비공개** 저장소이고, 부루벨 말고 다른 고객사 프로젝트(아주대, 안동, 삼일 등)도 함께 들어 있다. 운영 소스는 회사 GitLab(`122.99.198.174/intobe/project/bluebell.git`).
  - 개발자에게 GitHub 주소만 넘겨서는 못 본다 (초대 필요, 초대하면 저장소 전체가 보임)
  - 전달 방법 후보: ① GitHub 초대 ② 바뀐 파일만 압축 + 변경 목록 ③ GitLab에 직접 올리기 (브랜치 + 머지 리퀘스트, 운영 소스 안의 `member/src/main/webapp/html/bluebell/` 퍼블 사본 폴더를 전달 창구로 쓰는 안)
  - 이 컴퓨터의 운영 폴더(`C:\work\bluebell`)는 GitLab에 사용자 계정 `on3233`으로 연결돼 있고 받아오기(pull)는 됨. 올리기 권한은 미확인
  - **사용자 결정: 일단 보류** ("됐어 일단은"). 개발자에게 전달 방식·권한 확인 후 정하기
- **PC 헤드 제목**: `inc/global_header.jsp`, `global_header_e.jsp`의 `<title>`·meta를 "캐논코리아" → "부루벨에듀"로 변경. 본문 샘플 이름 "김캐논", "캐논본사"는 **그대로 두기로 함** (사용자: "그건 괜찮아")
- **헤더 탭 개수**: 탭은 페이지 맨 위 `pageTabs` 목록 개수만큼 생기고, 화면보다 길면 가로 스크롤, 활성 탭은 자동으로 보이게 스크롤 (`app/js/front.js`의 `hTab`)
- **Figma**: Claude의 Figma 연결 계정 "인투비"(intobe.design@gmail.com, 인투비의 팀)로 모바일 시안 파일을 읽을 수 있음
- **회사 컴퓨터 이어하기**: 퍼블 폴더에서 `git status` 확인 → `git pull` → `git config user.email on3233@intobe.co.kr`. Tomcat `ROOT.xml`이 `C:/work/Intobe`면 그대로
- **세팅 가이드**: 다른 컴퓨터 세팅용 `setup-guide.html` 작성 (폴더·저장소 구분, 세팅 순서, 매일 흐름, 헷갈렸던 부분 Q&A, 미정 사항). 사용자가 저장소 밖으로 옮겨 따로 보관해서 저장소에는 없음. 세팅 내용의 기준은 이 CLAUDE.md
- **모바일 인재역량관리 상세**: 화면설계서상 하단 메뉴 없어도 됨 → 팝업 대신 별도 페이지 + X = 뒤로가기로 우선 작업. "추후에 수정하자" (`app/CLAUDE.md` 3. 조직도 참고)

## PC 작업 기록

### 2026-10-30 알림 드롭다운 · 헤더 메뉴

PNG 시안(`알림.png`) 기준. 커밋 `13a1794`, `d7c6963`.

| 항목 | 내용 |
|---|---|
| 알림 드롭다운 | `inc/header.jsp`의 `simplealert` (`.h-pop.h-alarm`). 폭 374px, 헤더 오른쪽 끝 정렬(`right: -104px; top: 42px`) |
| 알림 수신 언어 | `.h-alarm-lang` (`.part-tit` 16px, `.part-desc` 14px — 사용자가 직접 수정), 국문/영문 `.seg-toggle` |
| 토글 스크립트 | `js/front.js`의 `segToggle` (`.seg-toggle button` 중 하나만 `.active`) |
| 헤더 대메뉴 | 영어 → 한글, 명조(`ft-nnmj`) 제거 → Pretendard. 하위 메뉴 칸 폭 `--w`는 대메뉴 폭에 맞춰 측정한 값 (동기화 후 nskim 규칙에 덮임, 위 "다음에 할 일" 참고) |
| 폰트 | Pretendard 300~700을 `css/font.css`에 등록 (파일 `fonts/`). PC는 알림 드롭다운·헤더 메뉴에만 적용, 나머지는 기존 나눔고딕/나눔명조 |

- 헤더 메뉴 이름은 PC `path/index.html`의 페이지 이름으로 **추정한 것** (사용자: "메뉴 이름은 중요하지 않고 폰트가 중요"). 확정되면 텍스트만 교체, 길이가 크게 바뀌면 하위 메뉴 `--w` 재측정.
- PC `li.read`는 기존 코드상 **파란 글씨**(안 읽은 알림처럼 보임). 의미가 반대지만 개발 연동 때문에 유지 — 개발 담당자 확인 필요.
- 모바일 폭(768px 이하)에서는 기존 `page/popup/m-alarm.jsp`(`mobile-alarm`)가 뜸. 이번 수정 미적용.
- PC 본문 제목(블루벨님, My 학습현황 등)과 사용자 팝업 이름은 아직 명조. PC 전체 Pretendard 전환 여부 미정.

## 운영 소스 동기화

### 2026-11-02 완료 (커밋 `d3b41b4`)

운영 소스 `C:\work\bluebell`(운영 커밋 **`38c60ea1`**, 2026-10-30 기준)의 `member/src/main/webapp/resources/`(css·js·images)를 퍼블 `bluebell/`에 3-way로 합침. 퍼블 폴더는 이날 `C:\work\_backup\Intobe_261102\Intobe`에서 `C:\work\Intobe`로 옮김.

- 가져온 것: JH 휴대폰 가로대응(css 38개 + `front.js`), hhkim 마크 색 `#666666`, nskim 모바일·표·탭 수정, sujin 배지 `--badge-scale`, Bluebell Edu 로고 등 이미지 7개, "Smart BBK → Bluebell Edu" 문구 2곳(`mail.html`, `studySystem.jsp`)
- 운영 경로(`/resources/images`, `../images`)는 퍼블 경로(`/bluebell/images`)로 되돌림. `front.js` 로고 경로는 `contextPath` 없이 유지(퍼블에 없음)
- `front.js` 초기화(팝업·툴팁·별점 등)는 운영처럼 켬 (사용자 결정)
- 모바일 `.main-learning-stat` 값은 퍼블 유지(선임이 `main.jsp`에서 css로 옮긴 값, 단위만 vmin)
- nskim의 헤더 메뉴 정렬·`.part-content` 규칙은 퍼블 화면을 바꾸지만 **운영과 같게 두기로 함** (사용자 결정)
- `css/en.css`: 운영 영문 모드 css 참고용 복사. 페이지에 연결 안 함
- 안 가져온 것: `dev.css`, `common.js`(개발 전용), 운영에만 있는 라이브러리·샘플 이미지, `img_thumb02.png`(퍼블이 더 최신)

### 다음 동기화 방법

운영 개발자가 또 고쳤을 때. 회사 컴퓨터에서:

1. `C:\work\bluebell`에서 `git pull` (운영 GitLab, 아래 접속 메모 참고)
2. 지난번 이후 바뀐 것만 보기: `git log --stat 38c60ea1..HEAD -- member/src/main/webapp/resources/css member/src/main/webapp/resources/js member/src/main/webapp/resources/images`
3. 바뀐 파일마다 `git diff 38c60ea1..HEAD -- <파일>`의 변경을 퍼블 같은 파일에 반영. 이미지 경로는 퍼블 경로(`/bluebell/images`)로 바꿔서
4. 퍼블에 있던 줄이 지워지는 변경은 사용자와 확인 (선임·내 작업이 사라질 수 있음)
5. 이 기록의 기준 커밋(`38c60ea1`)을 새 운영 커밋으로 갱신

### 운영 GitLab 접속 메모

- 운영 저장소: `http://122.99.198.174/intobe/project/bluebell.git` (GitLab, http)
- 회사 아이피에서만 접속되는 것으로 보임 → **회사 컴퓨터에서 진행**
- 다른 PC에서 `git ls-remote` 했을 때: 서버 연결은 되지만 Git Credential Manager가 http 로그인을 막음
  (`fatal: Unencrypted HTTP is not recommended for GitLab`).
  해결: https 주소 확인(추천) / SSH 키 / 이 주소만 http 허용
  `git config --global credential.http://122.99.198.174.allowUnsafeRemotes true` (비밀번호가 암호화 안 됨 — 사용자 확인 후 적용)
