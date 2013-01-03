package com.tornado.controller;

import java.io.UnsupportedEncodingException;
import java.util.Date;

import com.tornado.core.control.Content;
import com.tornado.core.control.Controller;
import com.tornado.core.view.View;
import com.tornado.entity.Message;
import com.tornado.persistence.PMF;

public class MessageController extends Controller
{
	public View leaveMessage(Content content) throws UnsupportedEncodingException
	{
		View view = new View("/pages/contactus/feedback_result.jsp");
		/* 解决中文乱码问题 */
		String author = new String(content.getParameter("author").getBytes("ISO-8859-1"), "utf8"); 
		String email = new String(content.getParameter("email").getBytes("ISO-8859-1"), "utf8"); 
		String phone = new String(content.getParameter("phone").getBytes("ISO-8859-1"), "utf8");
		String title = new String(content.getParameter("title").getBytes("ISO-8859-1"), "utf8"); 
		String contentStr = new String(content.getParameter("content").getBytes("ISO-8859-1"), "utf8"); 
		Message message = new Message();
		message.setAuthor(author);
		message.setContent(contentStr);
		message.setDate(new Date());
		message.setEmail(email);
		message.setPhone(phone);
		message.setTitle(title);
		PMF.save(message);
		content.getRequest().setAttribute("data", message);
		return view;
	}
	
	public View updateMessage(Content content) throws UnsupportedEncodingException
	{
		View view = new View("/pages/contactus/feedback_result.jsp");
		Long id = new Long(content.getParameter("messageid"));
		/* 解决中文乱码问题 */
		String author = new String(content.getParameter("author").getBytes("ISO-8859-1"), "utf8"); 
		String email = new String(content.getParameter("email").getBytes("ISO-8859-1"), "utf8"); 
		String phone = new String(content.getParameter("phone").getBytes("ISO-8859-1"), "utf8");
		String title = new String(content.getParameter("title").getBytes("ISO-8859-1"), "utf8"); 
		String contentStr = new String(content.getParameter("content").getBytes("ISO-8859-1"), "utf8");
		Message message = new Message(id);
		message.setAuthor(author);
		message.setContent(contentStr);
		message.setDate(new Date());
		message.setEmail(email);
		message.setPhone(phone);
		message.setTitle(title);
		PMF.update(message);
		content.getRequest().setAttribute("data", message);
		return view;
	}
	
	public View leaveMessage_en(Content content) throws UnsupportedEncodingException
	{
		View view = new View("/pages/contactus/feedback_result_en.jsp");
		/* 解决中文乱码问题 */
		String author = new String(content.getParameter("author").getBytes("ISO-8859-1"), "utf8"); 
		String email = new String(content.getParameter("email").getBytes("ISO-8859-1"), "utf8"); 
		String phone = new String(content.getParameter("phone").getBytes("ISO-8859-1"), "utf8");
		String title = new String(content.getParameter("title").getBytes("ISO-8859-1"), "utf8"); 
		String contentStr = new String(content.getParameter("content").getBytes("ISO-8859-1"), "utf8"); 
		Message message = new Message();
		message.setAuthor(author);
		message.setContent(contentStr);
		message.setDate(new Date());
		message.setEmail(email);
		message.setPhone(phone);
		message.setTitle(title);
		PMF.save(message);
		content.getRequest().setAttribute("data", message);
		return view;
	}
	
	public View updateMessage_en(Content content) throws UnsupportedEncodingException
	{
		View view = new View("/pages/contactus/feedback_result_en.jsp");
		Long id = new Long(content.getParameter("messageid"));
		/* 解决中文乱码问题 */
		String author = new String(content.getParameter("author").getBytes("ISO-8859-1"), "utf8"); 
		String email = new String(content.getParameter("email").getBytes("ISO-8859-1"), "utf8"); 
		String phone = new String(content.getParameter("phone").getBytes("ISO-8859-1"), "utf8");
		String title = new String(content.getParameter("title").getBytes("ISO-8859-1"), "utf8"); 
		String contentStr = new String(content.getParameter("content").getBytes("ISO-8859-1"), "utf8");
		Message message = new Message(id);
		message.setAuthor(author);
		message.setContent(contentStr);
		message.setDate(new Date());
		message.setEmail(email);
		message.setPhone(phone);
		message.setTitle(title);
		PMF.update(message);
		content.getRequest().setAttribute("data", message);
		return view;
	}
}
