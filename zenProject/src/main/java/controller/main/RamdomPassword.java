package controller.main;

public class RamdomPassword {
	public static String getRamdomPassword(int len) { 
		char[] charSet = new char[] { '0', '1', '2', '3', '4', 
				'5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 
				'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N',
				'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 
				'Y', 'Z' 
				}; 
		int idx1 = 0; 
		String  sb1 = ""; 
		System.out.println("charet.length :::: "+charSet.length); 
		for (int i = 0; i < len; i++) { 
			idx1 = (int) (charSet.length * Math.random()); // 36 * �깮�꽦�맂 �궃�닔瑜� Int濡� 異붿텧 (�냼�닽�젏�젣嫄�) 
			System.out.println("idx :::: "+idx1); 
			sb1 += charSet[idx1]; 
		} 
		return sb1.toString();				
	}
}