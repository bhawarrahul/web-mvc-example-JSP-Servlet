package com.project.utils;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@FunctionalInterface
interface AdditionInterFace {
	public static final int a = 0;

	public int add(int p1, int p2);

	public static int addStatic(int p1, int p2) {
		return p1 + p2;
	}
}

public class FunctionalInterfaceClass {

	public static void main(String[] args) {
		AdditionInterFace additionInterFace = ((p1, p2) -> {
			return p1 + p2;
		});
		System.out.println(additionInterFace.add(10, 10));
		System.out.println(AdditionInterFace.addStatic(30, 30));
		printChartCount();
		printWordCount();
	}

	public static void printChartCount() {
		String str = "My name is Rahul";

		Map<String, Long> map = Arrays.stream(str.toLowerCase().split(""))
				.collect(Collectors.groupingBy(c -> c, Collectors.counting()));
		System.out.println(map);
	}

	public static void printWordCount() {
		List<String> items = Arrays.asList("apple", "apple", "banana", "apple", "orange", "banana", "papaya");

		Map<String, Long> result = items.stream().collect(Collectors.groupingBy(str -> str, Collectors.counting()));
		System.out.println(result);
	}

}
