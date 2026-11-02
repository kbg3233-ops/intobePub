# 부루벨에듀 모바일 (bluebell/app)

이 폴더에서 작업할 때 루트 `CLAUDE.md`와 함께 읽는 프로젝트 기록입니다.
작업이 끝날 때마다 아래 "작업 기록"을 갱신합니다.

## 배경

- 기존 `bluebell/`은 PC + 반응형(`--m-` 변수) 웹. 스마트폰·태블릿 브라우저로 접속하면 **별도 모바일 페이지(이 폴더)** 로 이동하는 구조로 전환.
- 기존 PC 폴더(`bluebell/css`, `page` 등)는 건드리지 않는다.
- 폴더명이 `m`이 아닌 `app`인 이유: 루트 `.gitignore`에 `bluebell/m/`, `bluebell/pc/`가 있음 (넣은 사람 퇴사로 확인 불가 → 피해서 `app` 사용).

## 시안

- Figma: 부루벨에듀_모바일 — https://www.figma.com/design/ruyv05mdpEB01w42rCDG8r
- 작업 기준 페이지: **최종** (섹션: 0. 앱 아이콘 / 1. 시작·공통 / 2. 교육과정 …)
- 시안 기준 폭 **375px** (상단 상태바 47px, 하단 홈 인디케이터 20px은 마크업하지 않음 → `safe-area`로 처리)

## 단위 / 반응형 규칙

- vw를 직접 쓰지 않고 시안 px 값을 그대로 적는다: `calc(20 * var(--px))`
- `--px = min(100vw, --m-max-w) / 375` (`css/root.css`)
- 최대 폭 `--m-max-w: 480px` → 태블릿에서는 480px로 고정, 가운데 정렬
- JS에서 같은 환산이 필요하면 `appPx(20)` (`js/front.js`, Chart.js 크기 등)
- **배경색은 최대 폭 바깥까지 채운다** (요청사항): 영역에 `full-bg` 클래스 + `--full-bg: 색상` (`position` 지정 필요). 페이지 전체가 한 색이면 `body:has(.페이지클래스)`로 body 배경 지정 (splash 참고)

## 파일 구조

```
app/
├─ CLAUDE.md          (이 파일)
├─ css/
│   ├─ global.css     PC 공통(root, font, common, style) import + 아래 파일 import
│   │                 (Pretendard 300~700은 PC `bluebell/css/font.css`에 등록, 파일은 `bluebell/fonts/`)
│   ├─ root.css       단위(--px), 높이, 시안 컬러 토큰
│   ├─ layout.css     래퍼, 헤더, 하단 탭바, full-bg
│   ├─ ui.css         공통 컴포넌트
│   └─ custom.css     페이지별 스타일
├─ inc/               global_header / global_footer / header(메인) / sub_header / footer(탭바)
├─ js/front.js        appPx, 헤더 탭 스크롤, 선택 토글
├─ page/              화면 JSP
├─ path/index.html    페이지 목록 (PC의 path.css/js 공유)
└─ images/
    ├─ ico/           아이콘 SVG (Figma에서 받음)
    ├─ img/           로고 SVG, 푸터 로고, 배너 배경
    └─ dummy/         임시 썸네일·배지 (실데이터 자리)
```

## 헤더 / 푸터 사용법

페이지 맨 위에서 `request.setAttribute`로 지정 후 include.

| 값 | 설명 |
|---|---|
| `pageTitle` | 서브 헤더 제목 |
| `pageTabs` / `pageTabOn` | 서브 헤더 아래 탭 (`String[]`, 활성 순서 0부터) |
| `hideUtil` | true → 알림·언어 아이콘 숨김 |
| `closeBtn` | true → ‹ 없이 제목 + 오른쪽 X (X = 뒤로가기, 알림·언어 없음, 헤더 아래 선). 상세 화면용 |
| `tabbarOn` | 하단 메뉴 활성: home / course / study / team / all |
| `hideTabbar` | true → 하단 메뉴 숨김 |

- 메인 헤더: `inc/header.jsp`, 서브 헤더: `inc/sub_header.jsp`, 탭바 없는 화면(splash 등): `global_header.jsp` / `global_footer.jsp` 직접 include

## 팝업

- PC·아주대와 같은 방식: 팝업 파일은 `page/popup/이름.jsp` (`data-ttatg="이름"`), 여는 버튼은 `data-tta="이름"` → `.active` 토글 (`js/front.js`의 `tta`)
- 확인용 목록 페이지: `page/popup.jsp` (path 맨 위 "팝업"). 새 팝업을 만들면 여기에 버튼 추가
- 전체 화면 팝업: `.pop-type-full` (`.part-wrap` / `.part-head` / `.part-title` / `.part-close` / `.part-cont`)
- 알림 팝업(`popup/alarm.jsp`)은 `header.jsp`, `sub_header.jsp`에 include되어 있음 (PC 헤더의 m-alarm과 같은 구조)

## 공통 컴포넌트 (`css/ui.css`)

| 클래스 | Figma 컴포넌트 / 용도 |
|---|---|
| `.logo-edu` | Bluebell Edu 로고 (SVG). 크기는 `--logo-scale` (헤더 1 / 설치안내 1.133 / splash 1.246) |
| `.btn-m-primary` | Button / Middle (높이 36) |
| `.btn-s-dark`, `.btn-s-gray` | Button / Small (높이 28) |
| `.btn-more` | Text Button (더보기 / 자세히보기 + > 아이콘) |
| `.lnk-info` | info 아이콘 + 밑줄 링크 |
| `.card-box` | 흰 카드 (테두리 #ececec, radius 4) |
| `.sec-head` + `.sec-tit` / `.sec-tit-lg` | 섹션 제목 + 더보기 |
| `.course-card` | 썸네일 과정 카드 |
| `.h-scroll` | 가로 스크롤 목록 (카드 폭 215.33) |
| `.seg-toggle` | 선택 토글 (국문/영문), 선택 버튼 `.active` |
| `.list-count` | List Count (전체 7) |
| `.btn-l-primary` | Button / Large (높이 45, 가로 꽉 참). 앞 아이콘은 버튼 안 img |

- 하단 탭바 아이콘은 SVG + CSS `mask`로 색 변경 (활성/비활성). PNG 스프라이트 전환 여부는 미정.
- 차트는 PC와 같은 Chart.js(`../../js/chart.js`) + datalabels 사용.

## 작업 기록

### 1. 시작·공통 — 완료 (2026-10-30)

| 화면 | 파일 | 비고 |
|---|---|---|
| splash | `page/splash.jsp` | 배경 #f5f7fa 바깥까지 |
| 앱 설치 안내 | `page/install.jsp` | Android / iPhone 카드 |
| 메인 | `page/main.jsp` | 프로필·배지, 학습현황 차트, 진행현황, 공지/FAQ, 추천 교육 2종, 바로가기 배너, 푸터 |
| 알림 (팝업) | `page/popup/alarm.jsp` | 헤더 종 아이콘으로 열림, 읽은 알림 `li.read` |

- 최대 폭 750 → **480px**로 변경 (사용자 요청, 태블릿에서 확인 후 조정 가능)
- 로고는 Figma에서 SVG로 받아 교체 (`images/img/img_logo.svg`)
- 알림은 처음에 페이지(`notice.jsp`)로 만들었다가 사용자 요청으로 **아주대·PC와 같은 팝업 방식**으로 전환
- 팝업 안 좌우 스크롤 문제 → `.pop-type-full`에 `overflow-x: hidden`

### 2. 교육과정 — 진행 중

Figma "최종" 페이지의 `2. 교육과정` 섹션(`1471:14242`): 정규과정 / 교육과정 조회 / 교육과정 조회 - 상세검색
(메인에서 만든 `.course-card`, `.h-scroll`, 서브 헤더 탭 `pageTabs` 재사용 예정)

| 화면 | 파일 | 비고 |
|---|---|---|
| 정규과정 (2026-11-02) | `page/regcourse.jsp` | Figma `1471:14243`. 안내 카드 + BBK 맞춤형 / 직무역량 일반(Skillsoft) 카드. 파일명은 PC `page/regcourse.jsp`와 맞춤 |

- 시안 카드는 모서리 각짐 → `.card-box`에 `border-radius: 0` (메인 카드는 radius 4)
- 버튼 글자 굵기: 시안이 첫 번째 Medium, 두 번째 SemiBold로 다름 → 컴포넌트 기본값 Medium(500)으로 통일
- 시안 헤더 탭은 5개("정규과정"이 끝에 한 번 더)인데, 중복으로 보여 `layout_sub.jsp`와 같은 4개로 함
- 유튜브 아이콘: Figma에서 받은 `images/ico/ico_youtube.svg`

| 교육과정 조회 (2026-11-02) | `page/course_search.jsp` | Figma `1471:14294`. 추천 2개 + 검색 + 개수·정렬·스위치 + 가로형 목록 9개 + 페이지 번호 |

- 교육과정 조회에서 공통으로 추가(`css/ui.css`): `.course-card` 교육과정형(`.course-info` 안에 `.tag-type`/`.cate`/`.tit`/`.meta`/`.date`, 가로형 `.course-row`), `.tag-type`, `.search-box`(상세검색 `data-tta="search-detail"`로 열고 닫음), `.sel-type`, `.sort-tab`, `.switch`, `.paging`
- 색 토큰 추가(`css/root.css`): `--border-default`, `--divider-default`(#e2e2e2), `--bg-gray-hover`(#ececec)
- 썸네일: Figma 원본을 `images/dummy/thumb05~11.png`로 받음 (`thumb01~04`와 같은 이미지는 재사용). **`thumb08.png`는 1.8MB** (Figma 원본 크기) → 줄일 필요
- 스위치 꺼진 색은 시안에 없어서 `--brand-grey`(#d2dae4)로 임시 지정
- 상세검색 펼친 상태 = Figma `1471:14464` "교육과정 조회 - 상세검색" (별도 페이지 아님, 같은 화면에서 버튼으로 열림). 버튼과 셀렉트 사이 10, 셀렉트끼리 8, 아이콘 + → − (`ico_minus.svg`, CSS `:has`로 전환)

다음: 2. 교육과정 섹션 완료.

## 남은 확인 사항

- `images/img/img_roadmap_bg.png` 1.8MB → JPG 변환 필요
- 로고 엠블럼은 Figma 원본이 PNG라 SVG 안에 이미지로 들어감 (완전 벡터 필요하면 원본 요청)
- 본문 기본 글자 크기(`--init-font-size`) 16px로 임시 설정
- 메인 공지 제목은 말줄임 확인용 임의 문구
- 알림 시안 "전체 7"인데 목록은 6개 (시안 그대로)

### 3. 조직도 — 완료 (2026-11-02)

Figma "최종" 페이지의 `3. 조직도` 섹션(`1549:609`)

| 화면 | 파일 | 비고 |
|---|---|---|
| 조직도 | `page/orgchart.jsp` | Figma `1549:611`. My team 탭(결재내역/마이팀 조회/대시보드/조직도), 오피스·스토어 조직도 버튼, 인재역량관리 검색 + 직원 카드 |
| 인재역량관리 상세 | `page/talent_detail.jsp` | Figma `1549:679`. 별도 페이지 (직원 카드 링크로 이동, X = 뒤로가기, 하단 메뉴 없음). 버튼형 탭(기본정보만 시안 있음), 프로필, 정보행, 교육시간·이력, 수강중인 과정(정보 없음) |

- 공통 추가(`css/ui.css`): `.sec-tit-m`(Section Title 18), `.tab-btn`(탭 / 버튼형, `segToggle`로 전환), `.info-list`(Info Row), `.empty-state`
- 아이콘: `ico_arrow_up_r.svg`(외부 링크), `ico_chevron_r24.svg`(카드 오른쪽). 닫기·아바타는 기존 `ico_close.svg`, `ico_avatar.svg`와 같아 재사용
- 상세 화면: 처음엔 팝업으로 만들었다가 사용자 요청으로 **별도 페이지 + X = 뒤로가기**로 변경 (화면설계서상 하단 메뉴 없어도 됨). 서브 헤더에 `closeBtn` 옵션 추가. **추후 다시 정할 수 있음** (사용자: "추후에 수정하자")
- 역량정보 / 스펙·경력정보 탭 내용은 시안 없음 (탭 버튼 전환만 됨)
- 오피스·스토어 조직도 버튼은 외부 링크(주소 미정, `#`)
