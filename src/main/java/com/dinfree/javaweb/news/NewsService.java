package com.dinfree.javaweb.news;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;

public class NewsService {
	HashMap<String,News> newslist = new HashMap<String,News>();
	
	public NewsService() {
		News s1 = new News();
		s1.setAid(1011);
		s1.setTitle("문재인 대통령 UN연설 성공적!!");
		s1.setImg("https://imgnews.pstatic.net/image/001/2018/09/27/PYH2018092701660001300_P2_20180927062326706.jpg?type=w647");
		s1.setDate("2018-9-27");
		s1.setContent("UN에서 연설중인 문재인 대통령의 당당한 모습");
		newslist.put("1011", s1);
		
		News s2 = new News();
		s2.setAid(1012);
		s2.setTitle("청약통장 전성 시대!!");
		s2.setImg("https://imgnews.pstatic.net/image/001/2018/09/27/AKR20180925029000003_04_i_20180927060231396.jpg?type=w647");
		s2.setDate("2018-9-25");
		s2.setContent("청약통장 가입자가 20만명이나 된다고 합니다.!!");
		newslist.put("1012",s2);
	}
	public List<News> getNewsList() {
		return new ArrayList<News>(newslist.values());
	}
	
    public Optional<News> getNews(String aid) {
        return Optional.of(newslist.get(aid));
    }
}
