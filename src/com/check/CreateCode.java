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
			
		//7.��ֹ������������ͼƬ
		response.setDateHeader("Expires", -1);
		response.setHeader("Cache-control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		
		//6.֪ͨ�ͻ�����ͼƬ��ʽ�򿪷��͹�ȥ������
		response.setHeader("Content-Type", "image/jpeg");
		
		//1.���ڴ��д���һ��ͼƬ
		BufferedImage image = new BufferedImage(50, 25, BufferedImage.TYPE_INT_RGB);
		
		//2.��ͼƬ��д����
		Graphics g = image.getGraphics();
		
		//���ñ���ɫ
		g.setColor(Color.black);
		g.fillRect(0, 0, 50, 25);
		
		//3.����д�����ݵ���ɫ������
		g.setColor(Color.red);
		g.setFont(new Font(null,Font.BOLD,20));
		
		//4.��ͼƬ��д����
		String num = makeNum();
		request.getSession().setAttribute("checkcode", num);
		g.drawString(num, 0, 20);
		
		//5.��д�����ݵ�ͼƬ����������
		ImageIO.write(image, "jpg", response.getOutputStream());
		
	}
	public String makeNum(){
		Random r = new Random();
		String num = r.nextInt(9999)+"";
		StringBuffer stbu = new StringBuffer();
		for(int i = 0;i < 4-num.length();i ++){
			stbu.append("0");//������������������������0��
		}
		num = stbu.toString() + num;
		return num;
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

}
