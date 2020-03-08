package com.project.utils;

public class UtilityTest {

	public static int convertStringToNumber(String numStr) {

		char ch[] = numStr.toCharArray();
		int sum = 0;
		// get ascii value for zero
		int zeroAscii = (int) '0';
		System.out.println("0 Ascii : " + zeroAscii);
		for (char c : ch) {
			int tmpAscii = (int) c;
			System.out.println(tmpAscii + " Ascii : " + tmpAscii);
			sum = (sum * 10) + (tmpAscii - zeroAscii);
		}
		return sum;
	}

	public static void main(String a[]) {

		System.out.println("\"3256\" == " + convertStringToNumber("123456789"));
	}

}
