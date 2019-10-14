package com.dinfree.javaweb.addrbook;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AddrBookMemDAO implements AddrBookDAO{
	private int seq;
	Map<Integer,AddrBook> addrBookStorage;
	
	public AddrBookMemDAO() {
		seq = 0;
		addrBookStorage = new HashMap<>();
	}
	
	@Override
	public boolean updateDB(AddrBook addrbook) {
		addrBookStorage.put(addrbook.getAb_id(), addrbook);
		return true;
	}

	@Override
	public boolean deleteDB(int gb_id) {
		addrBookStorage.remove(gb_id);
		return true;
	}

	@Override
	public boolean insertDB(AddrBook addrbook) {
		seq++;
		addrbook.setAb_id(seq);
		addrBookStorage.put(seq, addrbook);
		return true;
	}

	@Override
	public AddrBook getDB(int gb_id) {
		return addrBookStorage.get(gb_id);
	}

	@Override
	public List<AddrBook> getDBList() {
		return new ArrayList<>(addrBookStorage.values());
	}

}
