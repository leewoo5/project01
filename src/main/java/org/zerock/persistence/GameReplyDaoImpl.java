package org.zerock.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.zerock.domain.Criteria;
import org.zerock.domain.GameReplyVO;

@Repository
public class GameReplyDaoImpl implements GameReplyDAO {

  @Inject
  private SqlSession session;

  private static String namespace = "org.zerock.mapper.gamereplyMapper";

  @Override
  public List<GameReplyVO> list(Integer bno) throws Exception {

    return session.selectList(namespace + ".list", bno);
  }

  @Override
  public void create(GameReplyVO gvo) throws Exception {

    session.insert(namespace + ".create", gvo);
  }

  @Override
  public void update(GameReplyVO gvo) throws Exception {

    session.update(namespace + ".update", gvo);
  }

  @Override
  public void delete(Integer rno) throws Exception {

    session.update(namespace + ".delete", rno);
  }

  @Override
  public List<GameReplyVO> listPage(Integer bno, Criteria cri) throws Exception {

    Map<String, Object> paramMap = new HashMap<>();

    paramMap.put("bno", bno);
    paramMap.put("cri", cri);

    return session.selectList(namespace + ".listPage", paramMap);
  }

  @Override
  public int count(Integer bno) throws Exception {

    return session.selectOne(namespace + ".count", bno);

  }

  @Override
  public int getBno(Integer rno) throws Exception {

    return session.selectOne(namespace + ".getBno", rno);
  }
  
  
}
