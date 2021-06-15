package com.wjm.softwareout.system.utils;

import java.util.Random;

/**
 * @author ：zzy
 * @description：TODO
 * @date ：2021/4/21 15:32
 */
public class IDUtils {
	/**
	 * 文件名生成
	 */
	public static String getFileName() {
		// 取当前时间的长整形值包含毫秒
		long millis = System.currentTimeMillis();
		// long millis = System.nanoTime();
		// 加上三位随机数
		Random random = new Random();
		int end3 = random.nextInt(999);
		// 如果不足三位前面补0
		String str = millis + String.format("%03d", end3);

		return str;
	}

}