package kr.ac.spring.admin.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.spring.admin.service.AdminService;
import kr.ac.spring.member.service.MemberService;
import kr.ac.spring.member.vo.AddrVO;
import kr.ac.spring.member.vo.MemberVO;
import kr.ac.spring.product.service.ProductService;
import kr.ac.spring.product.vo.Criteria;
import kr.ac.spring.product.vo.ProductVO;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	AdminService adminService;

	@Autowired
	MemberService memberService;

	@Autowired
	ProductService productService;

	@Autowired
	private JavaMailSenderImpl mailSender;

	private static final String PRODUCT_IMAGE_REPO = "resources/images/BookImg";

	/*-------------------------- admin�쓽 �쉶�썝 愿�由� ----------------------------*/
	@RequestMapping(value = "/adminManager")
	public String adminManager(HttpServletRequest request, Model model, Criteria cri) throws Exception {
		System.out.println(request.getServletPath());

		List<MemberVO> memberList = adminService.getMemberAllInfo();
		List<ProductVO> productList = productService.listProductAll(cri);
		
		model.addAttribute("memberList", memberList);
		model.addAttribute("productList", productList);

		return "adminManager";
	}

	@RequestMapping(value = "/member_search", method = RequestMethod.GET)
	public String member_search(HttpServletRequest request, @RequestParam("id") String id, Model model) {
		System.out.println(request.getServletPath());
		List<MemberVO> memberList = adminService.selectMemberInfo(id);

		model.addAttribute("memberList", memberList);

		return "member_search";
	}

	@RequestMapping(value = "/memberDetail", method = RequestMethod.GET)
	public String memberInfo_detail(HttpServletRequest request, @RequestParam("id") String id, Model model) {
		System.out.println(request.getServletPath());
		MemberVO memberVO = new MemberVO();
		AddrVO addrVO = new AddrVO();

		memberVO = memberService.selectUserInfo(id);
		addrVO = memberService.selectUserInfo_Addr(id);
		/* �긽�뭹愿��젴, 寃뚯떆�뙋 �젙蹂� 異붽� �삁�젙 */

		model.addAttribute("memberVO", memberVO);
		model.addAttribute("addrVO", addrVO);

		System.out.println("receive: " + memberVO.getReceive_email());
		/* �긽�뭹愿��젴, 寃뚯떆�뙋 �젙蹂� 異붽� �삁�젙 */

		return "memberDetail";
	}

	/*-------------------------- 硫붿씪 �쟾�넚 ----------------------------*/
	@RequestMapping(value = "/mailSending/{id}")
	public String mailSending(HttpServletRequest request, @PathVariable("id") String id, Model model) {
		System.out.println(request.getServletPath());
		MemberVO memberVO = new MemberVO();
		if (id.equals("all")) {

			return "mailSending_all";
		} else {
			memberVO = memberService.selectUserInfo(id);
			model.addAttribute("memberVO", memberVO);
			return "mailSending";
		}

	}

	@RequestMapping(value = { "/mailSending/mailSending.do", "/mailSending/mailSending_all.do" })
	public String sendMail(HttpServletRequest request) {
		System.out.println(request.getServletPath());

		if (request.getServletPath().equals("/mailSending/mailSending.do")) {
			/* mail configuration => mybatis-context.xml */
			String to = request.getParameter("toMail");
			String title = request.getParameter("mailTitle");
			String content = request.getParameter("mailContent");

			final MimeMessagePreparator preparator = new MimeMessagePreparator() {
				@Override
				public void prepare(MimeMessage mimeMessage) throws Exception {
					final MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
					helper.setTo(to);
					helper.setSubject(title);
					helper.setText(content, true);
				}
			};
			mailSender.send(preparator);

			return "redirect:../adminManager";

		} else {
			List<MemberVO> memberList;
			List<MemberVO> memList = new ArrayList<MemberVO>();
			memberList = adminService.getMemberAllInfo();

			for (MemberVO vo : memberList) {
				if (vo.getReceive_email() == 1) {
					memList.add(vo);
				} else
					continue;
			}
			if (memList.size() != 0) {
				MimeMessagePreparator[] preparators = new MimeMessagePreparator[memList.size()];
				int i = 0;
				String title = request.getParameter("mailTitle");
				String content = request.getParameter("mailContent");
				for (final MemberVO vo : memList) {

					preparators[i++] = new MimeMessagePreparator() {
						@Override
						public void prepare(MimeMessage mimeMessage) throws Exception {

							final MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
							helper.setTo(vo.getEmail());
							helper.setSubject(title);
							helper.setText(content);
						}

					};

				}
				mailSender.send(preparators);
			}
			return "redirect:../adminManager";
		}
	}

	/*-------------------------- Admin�쓽 �긽�뭹 愿�由� --------------------------*/

	@RequestMapping(value = "/addProductForm")
	public String addProductForm(HttpServletRequest request, HttpServletResponse response) {
		System.out.println(request.getServletPath());
		return "addProductForm";
	}

	@RequestMapping(value = "/deleteProduct", method = RequestMethod.GET)
	public ModelAndView deleteProduct(@RequestParam("bookNo") int bookNo, HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		System.out.println(request.getServletPath());
		ModelAndView mav = new ModelAndView("adminManager");

		response.setContentType("text/html; charset=UTF-8");
		mav.addObject("deleteStatus", adminService.deleteProduct(bookNo));
		return mav;
	}

	@RequestMapping(value = "/updateProductForm", method = RequestMethod.GET)
	public String updateProductForm(@RequestParam("bookNo") int bookNo, HttpServletRequest request,
			HttpServletResponse response, Model model) throws Exception {
		System.out.println(request.getServletPath());
		ProductVO productVO = productService.bookDetail(bookNo);
		model.addAttribute("productVO", productVO);
		return "updateProductForm";
	}

	@RequestMapping(value = "/updateProduct", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView updateProduct(@RequestParam("bookNo") int bookNo, MultipartHttpServletRequest request,
			HttpServletResponse response, MultipartFile uploadFile) throws Exception {
		System.out.println(request.getServletPath());
		ProductVO productVO = productService.bookDetail(bookNo);
		request.setCharacterEncoding("utf-8");

		Map<String, Object> map = new HashMap<String, Object>();
		Enumeration enu = request.getParameterNames();
		System.out.println(enu);
		while (enu.hasMoreElements()) {
			String name = (String) enu.nextElement();
			Object value = request.getParameter(name);
			System.out.println(name + ", " + value);
			map.put(name, value);
			System.out.println(productVO.toString());
			productVO.setProperty(name, value);
		}
		String imageFileName = upload(request);
		map.put("imageFileName", imageFileName);
		if (imageFileName != null)
			productVO.setImageFileName(imageFileName);

		response.setContentType("text/html; charset=UTF-8");
		ModelAndView mav = new ModelAndView("productDetail_admin");
		mav.addObject("updateStatus", adminService.updateProduct(productVO));
		mav.addObject("bookNo", bookNo);
		System.out.println(request.getServletPath());
		return mav;
	}

	@RequestMapping(value = "/addProduct")
	public ModelAndView addProduct(MultipartHttpServletRequest request, HttpServletResponse response,
			MultipartFile uploadFile, Model model) throws Exception {
		System.out.println(request.getServletPath());

		ProductVO productVO = new ProductVO();
		request.setCharacterEncoding("utf-8");

		Map<String, Object> map = new HashMap<String, Object>();
		Enumeration enu = request.getParameterNames();

		while (enu.hasMoreElements()) {
			String name = (String) enu.nextElement();
			Object value = request.getParameter(name);
			System.out.println(name + ", " + value);
			map.put(name, value);
			productVO.setProperty(name, value);
		}
		String imageFileName = upload(request);
		map.put("imageFileName", imageFileName);
		if (imageFileName != null)
			productVO.setImageFileName(imageFileName);
		else
			productVO.setImageFileName(null);
		System.out.println(productVO.toString());

		ModelAndView mav = new ModelAndView("redirect:/admin/adminManager");

		response.setContentType("text/html; charset=UTF-8");
		mav.addObject("insertStatus", adminService.addProduct(productVO));
		return mav;
	}

	@RequestMapping(value = "/productDetail", method = RequestMethod.GET)
	public String productDetail(HttpServletRequest request, @RequestParam("bookNo") int bookNo, Model model)
			throws Exception {
		System.out.println(request.getServletPath());

		ProductVO productVO = new ProductVO();
		productVO = productService.bookDetail(bookNo);

		HashMap<String, String> categories = new HashMap<String, String>();
		String[][] categories_String = { { "novel1", "나라별소설" }, { "novel2", "고전문학" }, { "novel3", "장르소설" },
				{ "poem1", "한국시" }, { "poem2", "외국시" }, { "poem3", "여행 에세이" },
				{ "selfDevelopment1", "대화/협상" }, { "selfDevelopment2", "자기능력계발" }, { "liberal1", "인문일반" },
				{ "liberal2", "심리" }, { "liberal3", "철학" }, { "child1", "어린이(공통)" }, { "child2", "초등" },
				{ "travel1", "국내여행" }, { "travel2", "해외여행" }, { "travel3", "테마여행" }, { "comic1", "스포츠" }, 
				{ "comic2", "액션" }, { "comic3", "판타지" }, };

		for (String[] c : categories_String) {
			categories.put(c[0], c[1]);
		}
		model.addAttribute("productVO", productVO);
		model.addAttribute("categories", categories);
		return "productDetail_admin";
	}

	/* File Upload */
	private String upload(MultipartHttpServletRequest multipartRequest) throws Exception {
		String imageFileName = null;
		Iterator<String> fileNames = multipartRequest.getFileNames();
		String path = multipartRequest.getSession().getServletContext().getRealPath(PRODUCT_IMAGE_REPO);
		System.out.println(path);
		while (fileNames.hasNext()) {
			String fileName = fileNames.next();
			MultipartFile mFile = multipartRequest.getFile(fileName);
			imageFileName = mFile.getOriginalFilename();
			File file = new File(path + "/" + fileName);
			if (mFile.getSize() != 0) { // File Null Check
				if (!file.exists()) { // 寃쎈줈 �긽�뿉 �뙆�씪�씠 議댁옱�븯吏� �븡�떎硫�
					if (file.getParentFile().mkdirs()) { // �뙆�씪�쓽 寃쎈줈�뿉 �빐�떦�븯�뒗 �뵒�젆�넗由щ�� 紐⑤몢 �깮�꽦(mkdirs�뒗 寃쎈줈�긽
															// �뤃�뜑瑜� 紐⑤몢 留뚮뱾�뼱以�)
						file.createNewFile(); // �뙆�씪 �깮�꽦
					}
				}
				mFile.transferTo(new File(path + "/" + imageFileName)); // �뙆�씪�쓣 �씠�룞�떆�궓�떎.
			}
		}
		return imageFileName;
	}

	private String delete(MultipartHttpServletRequest multipartRequest, String deleteFileName) throws Exception {
		String imageFileName = null;
		Iterator<String> fileNames = multipartRequest.getFileNames();
		String path = multipartRequest.getSession().getServletContext().getRealPath(PRODUCT_IMAGE_REPO);
		while (fileNames.hasNext()) {
			String fileName = fileNames.next();
			MultipartFile mFile = multipartRequest.getFile(fileName);
			imageFileName = mFile.getOriginalFilename();
			File file = new File(path + "/" + fileName);
			if (mFile.getSize() != 0) { // File Null Check
				if (!file.exists()) { // 寃쎈줈 �긽�뿉 �뙆�씪�씠 議댁옱�븯吏� �븡�떎硫�
					if (file.getParentFile().mkdirs()) { // �뙆�씪�쓽 寃쎈줈�뿉 �빐�떦�븯�뒗 �뵒�젆�넗由щ�� 紐⑤몢 �깮�꽦(mkdirs�뒗 寃쎈줈�긽
															// �뤃�뜑瑜� 紐⑤몢 留뚮뱾�뼱以�)
						file.createNewFile(); // �뙆�씪 �깮�꽦
					}
				}
				mFile.transferTo(new File(path + "/" + imageFileName)); // �뙆�씪�쓣 �씠�룞�떆�궓�떎.
			}
		}
		return imageFileName;
	}
}
