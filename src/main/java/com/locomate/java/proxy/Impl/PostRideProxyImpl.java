package com.locomate.java.proxy.Impl;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.locomate.java.beans.PostRidePO;
import com.locomate.java.proxy.PostRideProxy;
@Component
@Repository
public class PostRideProxyImpl implements PostRideProxy{

	@Override
	public PostRidePO saveRideDetails(PostRidePO postRidePO) {
		return null;
	}

}
