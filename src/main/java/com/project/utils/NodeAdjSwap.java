package com.project.utils;

class LinkedList {
	Node head; // head of list

	static class Node {
		int data;
		Node next;

		Node(int d) {
			data = d;
			next = null;
		}
	}

	public LinkedList insert(LinkedList list, int data) {
		Node new_node = new Node(data);
		new_node.next = null;

		if (list.head == null) {
			list.head = new_node;
		} else {
			Node last = list.head;
			while (last.next != null) {
				last = last.next;
			}
			last.next = new_node;
		}
		return list;
	}

	public void printList(LinkedList list) {
		Node currNode = list.head;
		System.out.print("LinkedList: ");
		while (currNode != null) {
			System.out.print(currNode.data + " ");

			currNode = currNode.next;
		}
	}

	public void swapAdj(LinkedList list) {
		if (list.head == null) {
			return;
		}
		Node temp = list.head;
		Node previous = null;
		while (temp != null && temp.next != null) {
			if (list.head == temp) {
				list.head = temp.next;
			}
			Node swap = temp.next;
			temp.next = swap.next;
			swap.next = temp;
			if (previous != null) {
				previous.next = swap;
			}
			previous = temp;
			temp = temp.next;
		}
	}
}

public class NodeAdjSwap {
	// Driver code
	public static void main(String[] args) {
		/* Start with the empty list. */
		LinkedList list = new LinkedList();

		for (int count = 1; count <= 10; count++) {
			list = list.insert(list, count);
		}
		System.out.println("Before Swap");
		list.printList(list);
		list.swapAdj(list);
		System.out.println("\nAfter Swap");
		list.printList(list);
	}
}
