package com.tornado.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.tornado.entity.Picture;

public class PictureModel extends AbstractModel<Picture>
{
	protected static final long SlidesPicCorrelation_ID = -1;
	
	public List<Picture> getAllSlideshowPic()
	{
		String hql = "from Picture where CorrelationId = :CorrelationId";
		Map<String,Object> params = new HashMap<String,Object>();
		params.put("CorrelationId", PictureModel.SlidesPicCorrelation_ID);
		return list(hql, params); 
	}

}
