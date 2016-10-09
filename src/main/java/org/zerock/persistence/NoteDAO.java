package org.zerock.persistence;
import java.util.List;

import org.zerock.domain.NoteCriteria;
import org.zerock.domain.NoteSearchCriteria;
import org.zerock.domain.NoteVO;

public interface NoteDAO {

  public NoteVO read(Integer no) throws Exception;
  public void send(NoteVO send) throws Exception;
  public NoteVO find(String find) throws Exception;
  public NoteVO uname(NoteVO uname) throws Exception;
  public void delete(Integer no) throws Exception;
  public List<NoteVO> listAll() throws Exception;

  public List<NoteVO> listPage(int page) throws Exception;

  public List<NoteVO> listCriteria(NoteCriteria cri) throws Exception;

  public int countPaging(NoteCriteria cri) throws Exception;
  
  //use for dynamic sql
  public void updateViewCnt(int no)throws Exception;
  public List<NoteVO> listSearch(NoteSearchCriteria cri)throws Exception;
  public int listSearchCount(NoteSearchCriteria cri)throws Exception;
  
}
