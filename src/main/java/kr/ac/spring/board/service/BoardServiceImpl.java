package kr.ac.spring.board.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.spring.board.vo.BoardMapper;
import kr.ac.spring.board.vo.BoardVO;
import kr.ac.spring.board.vo.Criteria;
import kr.ac.spring.board.vo.Pagination;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl  implements BoardService{
	
	@Autowired
	private BoardMapper mapper;
	
	@Override
	public void register(BoardVO board) {
		
		log.info("register....." + board);
		
		mapper.insertSelectKey(board);
	}

	@Override
	public BoardVO get(Long bno) {
		
		log.info("get........." + bno);
		
		return mapper.read(bno);
	}

	@Override
	public boolean modify(BoardVO board) {
		log.info("modify........." + board);
		return mapper.update(board) == 1;
	}

	@Override
	public boolean remove(Long bno) {
		log.info("remove........." + bno);
		return mapper.delete(bno) == 1;
	}

/*	
	@Override
	public List<BoardVO> getList() {
		
		log.info("getLinst.........");

		return mapper.getList();
	}
*/
	@Override
	public List<BoardVO> getList(Criteria cri) {
		
		log.info("get List with criterial: " + cri);
		
		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {

		log.info("get total count");
		return mapper.getTotalCount(cri);
	}

	@Override
	public List<BoardVO> listBoards(Pagination pagination) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addBoard(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateBoard(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public BoardVO viewBoard(int boardId) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteBoard(Map<String, Object> parameters) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getBoardListCnt() throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void increaseViewCnt(int boardId, HttpSession session) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int replyBoard(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getBoardListCntById(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<BoardVO> listBoardById(Pagination pagination, String id) {
		// TODO Auto-generated method stub
		return null;
	}

}
