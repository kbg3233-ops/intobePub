# 부루벨 (bluebell)

`bluebell/` 아래에서 작업할 때 루트 `CLAUDE.md`와 함께 읽는 기록입니다.
모바일 앱 작업은 `app/CLAUDE.md`에 따로 있습니다.

## 폴더

| 폴더 | 내용 |
|---|---|
| `bluebell/` (css, inc, js, page …) | PC + 기존 반응형(`--m-` 변수, `mobile.css` 768px) |
| `bluebell/app/` | 모바일 앱 전용 페이지 (스마트폰·태블릿 접속 시 이동) → `app/CLAUDE.md` |

## 로컬 서버 / 확인 주소

- Tomcat: `C:\tools\apache-tomcat-10.1.61` (Downloads의 Tomcat 폴더는 비어 있음)
- `conf/Catalina/localhost/ROOT.xml` → `<Context docBase="C:/work/_backup/Intobe_261102/Intobe" />` (ROOT 컨텍스트, 2026-11-02 변경. 이전 `C:/work/Intobe`)
- 주소 = `http://localhost:8080/` + docBase 아래 경로. **`/Intobe`를 붙이면 404**
- 켜기: `JAVA_HOME=C:\Program Files\Java\jdk-27.0.1.0.3` 설정 후 `bin\catalina.bat run` (startup.bat은 명령 창이 닫히면 같이 꺼짐)
  - PC 메인: http://localhost:8080/bluebell/page/main.jsp
  - PC path: http://localhost:8080/bluebell/path/
  - 앱 path: http://localhost:8080/bluebell/app/path/
- 다른 컴퓨터는 Tomcat 위치·설정이 다를 수 있으니 처음에 확인

## 작업 방식 (사용자와 정한 것)

- 작업이 끝나면 **"확인 링크"** 로 수정한 화면의 localhost 주소를 정리해서 준다. 팝업처럼 버튼으로 여는 화면은 어디서 무엇을 누르는지 함께 적는다. (사용자는 VS Code에서 Ctrl+클릭으로 연다)
- 사용자가 파일을 직접 수정하기도 한다. 수정 전에 `git diff`로 사용자 변경을 확인하고, 파일을 통째로 다시 쓰기 전에는 반드시 다시 읽는다. 사용자 수정을 덮어쓰지 않는다.
- 중간중간 커밋한다 (사용자가 요청하면). 다른 컴퓨터에서 이어서 작업하므로 push까지.
- 시안 확인: Figma 링크는 Figma MCP로 직접 읽는다 (처음에 `/mcp` → claude.ai Figma 로그인 필요). **PSD는 직접 못 읽음** → 사용자가 PSD 옆에 PNG를 내보내 둠 (예: `C:\Users\DesignPL\Desktop\작업psd\bluebell\pc\알림.png`). PNG만 있을 때는 수치를 측정해서 쓰고, 추정한 수치는 알려준다.
- 렌더링 확인: 헤드리스 크롬으로 캡처해서 시안과 비교 (`chrome.exe --headless=new --screenshot`). 375px처럼 좁은 폭은 iframe으로 감싸서 찍는다.
- 사용자는 디자이너/퍼블리셔. 설명은 쉬운 말로, 전문 용어는 풀어서.

## PC 작업 기록

### 2026-10-30 알림 드롭다운 · 헤더 메뉴

PNG 시안(`알림.png`) 기준. 커밋 `13a1794`, `d7c6963`.

| 항목 | 내용 |
|---|---|
| 알림 드롭다운 | `inc/header.jsp`의 `simplealert` (`.h-pop.h-alarm`). 폭 374px, 헤더 오른쪽 끝 정렬(`right: -104px; top: 42px`) |
| 알림 수신 언어 | `.h-alarm-lang` (`.part-tit` 16px, `.part-desc` 14px — 사용자가 직접 수정), 국문/영문 `.seg-toggle` |
| 토글 스크립트 | `js/front.js`의 `segToggle` (`.seg-toggle button` 중 하나만 `.active`) |
| 헤더 대메뉴 | 영어 → 한글, 명조(`ft-nnmj`) 제거 → Pretendard. 하위 메뉴 칸 폭 `--w`는 대메뉴 폭에 맞춰 측정한 값 |
| 폰트 | Pretendard 300~700을 `css/font.css`에 등록 (파일 `fonts/`). PC는 알림 드롭다운·헤더 메뉴에만 적용, 나머지는 기존 나눔고딕/나눔명조 |

- 헤더 메뉴 이름은 PC `path/index.html`의 페이지 이름으로 **추정한 것** (사용자: "메뉴 이름은 중요하지 않고 폰트가 중요"). 확정되면 텍스트만 교체, 길이가 크게 바뀌면 하위 메뉴 `--w` 재측정.
- PC `li.read`는 기존 코드상 **파란 글씨**(안 읽은 알림처럼 보임). 의미가 반대지만 개발 연동 때문에 유지 — 개발 담당자 확인 필요.
- 모바일 폭(768px 이하)에서는 기존 `page/popup/m-alarm.jsp`(`mobile-alarm`)가 뜸. 이번 수정 미적용.
- PC 본문 제목(블루벨님, My 학습현황 등)과 사용자 팝업 이름은 아직 명조. PC 전체 Pretendard 전환 여부 미정.

## 운영 소스 동기화 (2026-11-02 완료)

운영 소스(`C:\work\bluebell`)의 `member/src/main/webapp/resources/`(css·js·images)를 퍼블 `bluebell/`에 3-way로 합침. 커밋 "[부루벨에듀] 운영 소스 동기화".

- 역할: 퍼블은 이 소스만 수정. 운영(`resources/`, `WEB-INF/views`)으로 옮기는 건 개발자 몫
- purestar = 퇴사한 선임 퍼블. bg = 현재 사용자
- 가져온 것: JH 휴대폰 가로대응(css 38개 + `front.js`), hhkim 마크 색 `#666666`, nskim 모바일·표·탭 수정, sujin 배지 `--badge-scale`, Bluebell Edu 로고 등 이미지 7개, "Smart BBK → Bluebell Edu" 문구 2곳
- 운영 경로(`/resources/images`, `../images`)는 퍼블 경로(`/bluebell/images`)로 되돌림. `front.js` 로고 경로는 `contextPath` 없이 유지(퍼블에 없음)
- `front.js` 초기화(팝업·툴팁·별점 등)는 운영처럼 켬 (사용자 결정)
- 모바일 `.main-learning-stat` 값은 퍼블 유지(선임이 `main.jsp`에서 css로 옮긴 값, 단위만 vmin)
- `css/en.css`: 운영 영문 모드 css 참고용 복사. 페이지에 연결 안 함
- 안 가져온 것: `dev.css`, `common.js`, 운영 전용 라이브러리·샘플 이미지
- 선임 작업 중 운영에 빠진 것(개발자에게 전달): `c8bd243`의 탭 버튼 좌우 여백 20px(운영 0), PC My 학습현황 글자 15px·자간 -1px
- 운영 헤더 메뉴는 DB에서 이름을 불러오고, 하위 메뉴 폭은 `handleMenuWidth` 스크립트가 정함 (`WEB-INF/views/layout/header.jsp`)

### 동기화 후 확인할 점 (운영과 같게 두기로 함)

- `custom.css` "메인/서브 메뉴 정렬 (영문 메뉴 대응)"(nskim): 대메뉴가 같은 폭으로 나뉘고, `.h-sub-menu > ul { width: auto !important }`가 **하위 메뉴 `--w`를 무시**함 → 헤더 메뉴 작업 시 이 규칙 기준으로 맞출 것
- `.part-content { white-space: nowrap }`, `.part-content a { font-size: 14px }`(nskim): PC 메인 공지/FAQ 줄에서 FAQ 쪽 "더보기"가 영역 밖으로 밀림 → 따로 손볼 것

## (기록) 운영 소스 동기화 계획 (2026-10-30)

작업 전에 운영 소스와 동기화해야 했는데, 10/27~10/30 작업 후에 알게 됨. 운영 소스와 지금 소스가 다를 수 있음.

- 운영 저장소: `http://122.99.198.174/intobe/project/bluebell.git` (GitLab, http)
- 회사 아이피에서만 접속되는 것으로 보임 → **회사 컴퓨터에서 진행**
- 다른 PC에서 `git ls-remote` 했을 때: 서버 연결은 되지만 Git Credential Manager가 http 로그인을 막음
  (`fatal: Unencrypted HTTP is not recommended for GitLab`).
  해결: https 주소 확인(추천) / SSH 키 / 이 주소만 http 허용
  `git config --global credential.http://122.99.198.174.allowUnsafeRemotes true` (비밀번호가 암호화 안 됨 — 사용자 확인 후 적용)

### 진행 계획 (3-way merge)

- 기준(base): 이번 작업 직전 커밋 `d5a6d1e` (2026-02-26)
- 내 작업: `d5a6d1e` 이후 bluebell 커밋들 (알림 드롭다운·헤더 메뉴, 모바일 `app/` 등)
- 운영: `bluebell.git` 현재 상태

1. 운영 소스를 별도 폴더에 받는다 (예: `C:\work\bluebell-prod`). 지금 작업본은 건드리지 않음
2. 운영 저장소 구조에서 우리 `bluebell/`(css, js, page, inc …)에 해당하는 경로를 찾는다
3. `d5a6d1e` 기준 새 브랜치 → 운영 파일을 덮어써서 "운영 소스 동기화" 커밋
4. 그 위에 내 작업 커밋을 rebase. 양쪽 다 바뀐 파일만 충돌 → 사용자와 함께 확인
