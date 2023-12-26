<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta http-equiv="imagetoolbar" content="no">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="format-detection" content="telephone=no">
  <meta name="title" content="웹사이트">
  <meta name="description" content="웹사이트입니다.">
  <meta name="keywords" content="키워드,키워드,키워드">
  <meta property="og:title" content="웹사이트">
  <meta property="og:description" content="웹사이트입니다">
  <meta property="og:image" content="https://웹사이트/images/opengraph.png">
  <meta property="og:url" content="https://웹사이트">
  <title>위탁 문의 등록 | 침대</title>
  <link rel="stylesheet" href="consignment/css/setting.css">
  <link rel="stylesheet" href="consignment/css/plugin.css">
  <link rel="stylesheet" href="consignment/css/template.css">
  <link rel="stylesheet" href="consignment/css/common.css">
  <link rel="stylesheet" href="consignment/css/style.css">
 </head>

<body>
	// 위탁문의 등록 페이지로 
	@GetMapping("conEnroll.co")
	public String moveToConsignmentEnroll() {		// ()안에 받는게 없으니까 컨트롤러에서 conEnroll.co라고 해도 이동함
		return "consignment/conEnroll";
	}
	// 위탁문의 등록
	@PostMapping("conInsert.co")
	public String insertConsignment(@ModelAttribute Consignment c,
									@RequestParam("file") ArrayList<MultipartFile> files, HttpSession session, Member m) {
		
		// 현재 세션에 저장된 사용자 정보에서 회원 ID를 가져와서 위탁 정보 객체설정
		String id = ((Member)session.getAttribute("loginUser")).getMemId();
		c.setmemId(id);
		
		// 첨부 파일 리스트를 담을 ArrayList를 생성
		ArrayList<Attachment> list = new ArrayList<>();
	
		// 업로드된 파일들에 대한 처리
		for(int i = 0; i < files.size(); i++) {
			MultipartFile upload = files.get(i);
			
			if(!upload.getOriginalFilename().equals("")) {
				// 파일을 저장하고 저장된 파일정보 가져옴
				String rename = saveFile(upload);
				if(rename != null) {
					Attachment a = new Attachment();
					a.setAttRename(rename);
					a.setAttCategory(2); 	// 위탁문의 게시판(2)
					
					list.add(a);
				}
			}
		}
			// 게시판 분류(attCategory) : 1(리뷰) / 2(위탁문의) / 3(그림추천)
			// 그림추천(썸네일) 구분(fno) : 0(없), 1(있)
			// 위탁문의 순서(fno) : 앞(1)/뒤(2)/서명(3)/구매서류(4)/상세사진(5)		
		
		for(int i = 0; i < list.size(); i++) {
			Attachment a = list.get(i);
			a.setAttFno(i + 1);
		}	

		int result1 = cService.insertConsignment(c);	// 정보 저장 리스트
	
		System.out.println(c.getConNo());
		
		// 첨부 파일이 없는 경우
		if(!list.isEmpty()) {
			for(Attachment a : list) {
				System.out.println(c.getConNo());
				a.setAttBno(c.getConNo());	
			}
			int result2 = cService.insertAttm(list);	// 사진 리스트
			
			if(result1 > 0 && result2 > 0) {			// 정보저장도 하고, 사진도 무조건 있어야 성공
				return "redirect:conEnroll.co";
			} else {
				for(Attachment a : list) {
					deleteFile(a.getAttRename());
				}
				throw new Exception("첨부파일 게시글 등록 실패");
			}
		} else {
			if(result1 > 0) {							
				return "redirect:conInfo.co";			// 일단 등록 성공하면 위탁안내 페이지로 이동
			} else {
				throw new Exception("첨부파일 게시글 등록 실패");
			}
		}
	}

	public String saveFile(MultipartFile upload) {
		String root = "User:\\";
		String savePath = root + "\\uploadFiles";
		
		File folder = new File(savePath);
		if(!folder.exists()) {
			folder.mkdirs();
		}
		// 저장 파일 rename
		Date time = new Date(System.currentTimeMillis());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		int ranNum = (int)(Math.random()*100000);		
		
		String originFileName = upload.getOriginalFilename();
		String renameFileName = sdf.format(time) + ranNum + originFileName.substring(originFileName.lastIndexOf("."));
		
		// rename된 파일 저장소에 저장
		String renamePath = folder + "\\" + renameFileName;	// 이름 변경	
		try {
			upload.transferTo(new File(renamePath));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		String rename = renameFileName;
		
		return rename;
	}
	
	public void deleteFile(String fileName) {
		String root = "Users:\\";
		String savePath = root + "\\uploadFiles";
		
		File f = new File(savePath + "\\" + fileName);
		if(f.exists()) {
			f.delete();
		}
	}
	
    <!-- [E]hooms-N39 -->
  </main>
<jsp:include page="../common/footer.jsp"/>



  <!-- [E]basic-N4 -->
  <script src="consignment/js/setting.js"></script>
  <script src="consignment/js/plugin.js"></script>
  <script src="consignment/js/template.js"></script>
  <script src="consignment/js/common.js"></script>
  <script src="consignment/js/script.js"></script>
  </body>
</html>