# Medical Shop - 환자 관리 시스템 (Spring Boot & JPA)

본 프로젝트는 **Spring Data JPA**를 사용하여 병원 내 환자 정보를 효율적으로 관리하기 위해 구축된 CRUD 시스템입니다. **병원 컨셉의 정갈한 UI**와 **객체지향적 도메인 설계**를 결합하여 실무적인 백엔드 데이터 처리 로직을 구현하는 데 중점을 두었습니다.

## 핵심 기술 스택
* **Backend**: Java 17, Spring Boot 4.0.2
* **Data Access**: **Spring Data JPA**, Hibernate
* **Database**: Oracle DB (XE 21c)
* **Frontend**: JSP (JSTL), CSS (Medical Clean UI)
* **Library**: Lombok, Spring Web, Spring Boot DevTools

---

## 주요 기술적 특징

### 1. JPA 시퀀스 전략 및 엔티티 설계
* `@SequenceGenerator`를 활용하여 환자 고유 번호(`no`)를 Oracle 시퀀스와 매핑하여 자동 생성합니다.
* `id` 필드에 `unique = true` 제약을 부여하여 비즈니스 식별자와 DB 식별자를 분리 설계했습니다.

### 2. Spring Data JPA 활용
* `JpaRepository` 인터페이스를 사용하여 반복적인 CRUD 코드를 제거했습니다.
* **Dirty Checking(변경 감지)**: 수정 로직에서 별도의 `update` 쿼리 없이 `@Transactional` 환경에서 객체 상태 변경만으로 DB를 갱신합니다.
* **Query Method**: `findById`, `findAll(Sort)` 등을 활용한 세밀한 데이터 조회.

### 3. 병원 컨셉의 UI/UX 디자인
* **Point Color**: `Deep Sky Blue` (#0077b6)
* **Design Strategy**: 신뢰감을 주는 화이트/스카이블루 톤의 레이아웃과 직관적인 버튼 배치.
* **Interactive UI**: 테이블 행 호버 효과 및 폼 입력 시 포커스 애니메이션 적용.

---

## 주요 기능 (CRUD)

| 기능 | 설명 |
| :--- | :--- |
| **환자 등록 (C)** | 시퀀스를 활용한 신규 환자 정보 저장 및 가입 성공/실패 안내. |
| **환자 명단 (R)** | 전체 등록된 환자 리스트를 정렬하여 출력하고, 행 클릭 시 상세 페이지 이동. |
| **상세 조회 (R)** | 특정 환자의 모든 세부 기록을 확인하는 디지털 차트 기능. |
| **기록 수정 (U)** | 변경 감지 기법을 활용한 기존 환자 정보 업데이트 프로세스. |
| **환자 탈퇴 (D)** | 자바스크립트 컨펌창을 통한 안전한 데이터 삭제 로직. |

---

## UI Preview

### [환자 등록 화면]
* 정갈한 입력 폼과 진한 하늘색 포인트 컬러 적용.

### [환자 명단 및 상세 정보]
* 깔끔한 테이블 레이아웃과 환자별 상세 차트 뷰 제공.

[Image of medical hospital management dashboard UI design]

---

## 실행 방법 (Settings)

### 1. Database 설정 (Oracle)
`src/main/resources/application.properties` 파일에 접속 정보를 설정합니다.
```properties
spring.datasource.url=jdbc:oracle:thin:@localhost:1521:XE
spring.datasource.username=사용자계정
spring.datasource.password=비밀번호
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
