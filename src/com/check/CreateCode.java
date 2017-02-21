package com.check;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CreateCode extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
		//7.禁止浏览器缓存随机图片
		response.setDateHeader("Expires", -1);
		response.setHeader("Cache-control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		
		//6.通知客户端以图片方式打开发送过去的数据
		response.setHeader("Content-Type", "image/jpeg");
		
		//1.在内存中创建一副图片
		BufferedImage image = new BufferedImage(50, 25, BufferedImage.TYPE_INT_RGB);
		
		//2.向图片上写数据
		Graphics g = image.getGraphics();
		
		//设置背景色
		g.setColor(Color.black);
		g.fillRect(0, 0, 50, 25);
		
		//3.设置写入数据的颜色和字体
		g.setColor(Color.red);
		g.setFont(new Font(null,Font.BOLD,20));
		
		//4.向图片上写数据
		String num = makeNum();
		request.getSession().setAttribute("checkcode", num);
		g.drawString(num, 0, 20);
		
		//5.把写好数据的图片传输给浏览器
		ImageIO.write(image, "jpg", response.getOutputStream());
		
	}
	public String makeNum(){
		Random r = new Random();
		String num = r.nextInt(9999)+"";
		StringBuffer stbu = new StringBuffer();
		for(int i = 0;i < 4-num.length();i ++){
			stbu.append("0");//如果随机产生的数不够数，以0补
		}
		num = stbu.toString() + num;
		return num;
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

}
