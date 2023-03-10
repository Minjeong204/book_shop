package kr.ac.spring.product.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.spring.product.vo.Criteria;

public interface ProductController {
	public ModelAndView productDetail(@RequestParam("bookNo") int bookNo, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView productAll(HttpServletRequest request, Criteria cri) throws Exception;
}
