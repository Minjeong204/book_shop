package kr.ac.spring.product.service;

import java.util.List;
import java.util.Map;

import kr.ac.spring.product.vo.Criteria;
import kr.ac.spring.product.vo.ProductVO;


public interface ProductService {
	public List<ProductVO> listRecommendation() throws Exception;
	public List<ProductVO> listProductAll(Criteria cri) throws Exception;
	public ProductVO bookDetail(int bookNo) throws Exception;
	public List<ProductVO> listProductByCategory(String category);
	public int getTotal(Criteria cri);
}
