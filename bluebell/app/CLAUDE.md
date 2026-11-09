# 부루벨에듀 모바일 (bluebell/app)

이 폴더에서 작업할 때 루트 `CLAUDE.md`와 함께 읽는 프로젝트 기록입니다.
작업이 끝날 때마다 아래 "작업 기록"을 갱신합니다.

## 배경

- 기존 `bluebell/`은 PC + 반응형(`--m-` 변수) 웹. 스마트폰·태블릿 브라우저로 접속하면 **별도 모바일 페이지(이 폴더)** 로 이동하는 구조로 전환.
- 기존 PC 폴더(`bluebell/css`, `page` 등)는 건드리지 않는다.
- 폴더명이 `m`이 아닌 `app`인 이유: 루트 `.gitignore`에 `bluebell/m/`, `bluebell/pc/`가 있음 (넣은 사람 퇴사로 확인 불가 → 피해서 `app` 사용).

## 시안

- Figma: 부루벨에듀_모바일 — https://www.figma.com/design/ruyv05mdpEB01w42rCDG8r
- 작업 기준 페이지: **최종** (섹션: 0. 앱 아이콘 / 1. 시작·공통 / 2. 교육과정 / 3. 조직도 / 4. 설치 가이드)
- **확인하는 페이지는 최종·컴포넌트·가이드만** (사용자 결정 2026-11-09). "이전시안"(`739:107`)·"연습" 페이지는 읽지 않는다
- 시안 기준 폭 **375px** (상단 상태바 47px, 하단 홈 인디케이터 20px은 마크업하지 않음 → `safe-area`로 처리)

## Figma 가이드 기준 (2026-11-03 사용자 결정)

- Figma에 **가이드**(`1:3650`: 컬러, 서브 화면 간격·글자 스타일·탭·헤더·팝업 규칙)와 **컴포넌트**(`42:80`) 페이지가 있음. 최종 화면 시안보다 **가이드를 기준으로** 작업한다.
- 시안 화면이 가이드와 다르면(예외 디자인) 가이드대로 하고 **사용자에게 알린다**.
- 가이드 글과 컴포넌트 값이 다르면 가이드 글을 따른다 (Button / Large 높이 44 — 컴포넌트는 45, Button / Middle 글자 Light — 컴포넌트는 Medium).
- 가이드는 서브 화면 기준. 메인 홈은 예외값이 있음 (카드 안쪽 24 등).
- 색은 가이드 Semantic 이름 그대로 `css/root.css` 토큰으로 (`--primary-subtle`, `--bg-gray`, `--tag-best` …). 색 코드를 직접 쓰지 않는다.

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
- 하단 오버레이 팝업: `.pop-type-sheet` (`.part-dim`(눌러도 닫힘) / `.part-wrap` / `.part-head` / `.part-title` / `.part-close` 24 / `.part-cont` / `.part-foot`). 가이드 "하단 오버레이": 위 모서리 radius 16, 딤 검정 40%
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
| `.btn-l-primary` | Button / Large (높이 44 가이드 기준, SemiBold, 가로 꽉 참). 앞 아이콘은 버튼 안 img |
| `.form-txt` | 입력창 (높이 40, 테두리 border/default). `input.form-txt`로 써야 PC 초기화보다 우선 |
| `.form-chk` | 체크 버튼 (원형 24, label 안에 checkbox + 글자). Figma 컴포넌트 "체크 버튼" |
| `.btn-l-line` | Button / Large Line (흰 바탕 + 테두리 border/default) |
| `.swiper` / `.swiper-wrapper` / `.swiper-slide` | 슬라이드. Swiper 7.4.1은 PC `js/common.js`에 이미 들어 있어 그대로 사용, CSS는 기본값만 ui.css에 |
| `.dot-pagination` | 점 페이지 표시 (6px, 간격 7, 활성 primary / 비활성 #d9d9d9). Swiper `pagination.el` |

- 하단 탭바 아이콘은 SVG + CSS `mask`로 색 변경 (활성/비활성). PNG 스프라이트 전환 여부는 미정.
- 차트는 PC와 같은 Chart.js(`../../js/chart.js`) + datalabels 사용.

## 작업 기록

### 1. 시작·공통 — 완료 (2026-10-30)

| 화면 | 파일 | 비고 |
|---|---|---|
| splash | `page/splash.jsp` | 배경 #f5f7fa 바깥까지 |
| 앱 설치 안내 | `page/install.jsp` | Android / iPhone 카드 |
| 로그인 (2026-11-03) | `page/login.jsp` | Figma 최종에 없음 → PC `bluebell/page/login.jsp` 내용 + 가이드 기준. 바탕 #f5f7fa(splash와 같음), 위 로고, Login 오른쪽 끝 언어 아이콘, 체크는 **자동 로그인**(Figma 이전시안 설치 안내 그림 기준). 간격은 가이드 값으로 정함 |
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
- 버튼 글자 굵기: 시안이 첫 번째 Medium, 두 번째 SemiBold로 다름 → 처음엔 Medium으로 통일했다가 2026-11-03 가이드(Headline 1)에 맞춰 **SemiBold(600)**, 높이 44
- 시안 헤더 탭은 5개("정규과정"이 끝에 한 번 더)인데, 중복으로 보여 `layout_sub.jsp`와 같은 4개로 함
- 유튜브 아이콘: Figma에서 받은 `images/ico/ico_youtube.svg`

| 교육과정 조회 (2026-11-02) | `page/course_search.jsp` | Figma `1471:14294`. 추천 2개 + 검색 + 개수·정렬·스위치 + 가로형 목록 9개 + 페이지 번호 |

- 교육과정 조회에서 공통으로 추가(`css/ui.css`): `.course-card` 교육과정형(`.course-info` 안에 `.tag-type`/`.cate`/`.tit`/`.meta`/`.date`, 가로형 `.course-row`), `.tag-type`, `.search-box`(상세검색 `data-tta="search-detail"`로 열고 닫음), `.sel-type`, `.sort-tab`, `.switch`, `.paging`
- 색 토큰 추가(`css/root.css`): `--border-default`, `--divider-default`(#e2e2e2), `--bg-gray-hover`(#ececec)
- 썸네일: Figma 원본을 `images/dummy/thumb05~11.png`로 받음 (`thumb01~04`와 같은 이미지는 재사용). **`thumb08.png`는 1.8MB** (Figma 원본 크기) → 줄일 필요
- 스위치 꺼진 색은 시안에 없어서 `--brand-grey`(#d2dae4)로 임시 지정
- 상세검색 펼친 상태 = Figma `1471:14464` "교육과정 조회 - 상세검색" (별도 페이지 아님, 같은 화면에서 버튼으로 열림). 버튼과 셀렉트 사이 10, 셀렉트끼리 8, 아이콘 + → − (`ico_minus.svg`, CSS `:has`로 전환)

다음: 2. 교육과정 섹션 완료.

### 가이드 맞춤 수정 (2026-11-03)

가이드와 비교해서 다른 곳을 가이드대로 고침 (사용자 요청)

| 화면 | 수정 |
|---|---|
| 정규과정 | 큰 버튼 SemiBold·높이 44, 카드 안쪽 24 → 20 |
| 교육과정 조회 | 썸네일 ↔ 과정 정보 12 → 10, 구분 띠 #ececec → bg/gray #f5f5f5 |
| 인재역량관리 상세 | 탭 위아래 12 → 20 |
| 조직도 | 직원 카드 이름 ↔ 소속 4 → 12, 소속 줄간격 16 → 20, 이름 1줄 말줄임 |
| 공통 | `root.css`에 가이드 색 토큰 추가, css의 색 코드 → 토큰 |

- `page/main.jsp` 차트 스크립트 색(#96c0cf, #e2698b, #e2e2e2)은 JS라 그대로 둠 (값은 토큰과 같음)
- `.seg-toggle` 테두리 #c9c9c9, 푸터 글자 #bdbdbd는 가이드 Semantic에 없는 색이라 그대로 둠

### 4. 설치 가이드 — 완료 (2026-11-09)

Figma "최종" 페이지의 `4. 설치 가이드` 섹션(`1792:790`): Android 10단계 / iOS 6단계

| 화면 | 파일 | 비고 |
|---|---|---|
| Android 설치 안내 | `page/popup/guide_android.jsp` | 하단 오버레이 팝업 + 단계 슬라이드 10장 (`data-tta="guideAndroid"`) |
| iOS 설치 안내 | `page/popup/guide_ios.jsp` | 6장 (`data-tta="guideIos"`) |

- 앱 설치 안내(`install.jsp`)의 "Android 설치 안내" / "Ios 설치 안내" 링크로 열림 (a → button). `popup.jsp`에도 버튼 추가
- 슬라이드: 손가락으로 넘기기 + 점 눌러 이동, 팝업을 열 때마다 1단계부터 (`front.js`의 `guideSwiper`)
- `.swiper`에 `touch-action: pan-y` 필수 (Swiper CSS를 안 불러서 빠져 있었음). 없으면 F12 기기 모드에서 밀기가 끊김. Swiper는 페이지를 열 때 터치 기기인지 한 번만 판단하므로, F12에서 기기 모드로 바꾼 뒤에는 새로고침해서 확인
- 단계 그림은 Figma `illust`를 2배 PNG로 받음 (`images/img/guide/img_guide_android_01~10.png`, `img_guide_ios_01~06.png`, 670×480)
- 시안 뒤 배경(상태바·크롬/사파리 주소창)은 설명용이라 마크업하지 않음. 팝업 높이는 가장 긴 단계 기준 (시안 600/580 고정 아님)
- **가이드와 다른 점 → 가이드대로**: 하단 "확인" 버튼 14 Medium → Button / Large 16 SemiBold, X 색 #666 → 기존 `ico_close.svg`(border/strong #333)
- 시안 그대로 둔 것: 점 비활성 #d9d9d9 (Semantic에 없는 색), 문구 "켜습니다"(6단계)·"클릭 합니다"(5·8단계) 띄어쓰기 → 문구 확정 필요
- "확인" 버튼 = 팝업 닫기 (시안 레이어명은 btn-next/btn-prev지만 글자가 "확인"이라 닫기로 함)

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
