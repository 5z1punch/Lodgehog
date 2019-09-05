
import java.io.FileWriter;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class MaskClassGenerator {
	// javap -s java.lang.String
	public static String tag = "    ";

	public static String[] parseDescriptor(String md) {
		md = md.substring(0, md.length() - 1);
		String[] accessModifiers = { "public", "protected"};
		String[] otherModifiers = { "abstract", "static", "final", "synchronized", "native", "strictfp" };
		List<String> aml = Arrays.asList(accessModifiers);
		ArrayList<String> modifiersList = new ArrayList<>();
		modifiersList.addAll(Arrays.asList(accessModifiers));
		modifiersList.addAll(Arrays.asList(otherModifiers));
		String[] ps = md.split("\\(|\\)",-1);
		String[] ele = ps[0].split(" ");
		String m = "";
		String r = "";
		String n = "";
		String p = ps[1];
		String t = ps[2];
		int inM = 0;
		int i = 0;
		boolean accessAble = false;
		while(i<ele.length) {
			if (inM == 0) {
				if(aml.contains(ele[i])) {
					accessAble = true;
				}
				if (modifiersList.contains(ele[i])) {
					m += ele[i] + " ";
					i++;
				}
				else if(!accessAble) {
					return null;
				}
				else {
					inM = 1;
				}
			} else if (inM == 1) {
				r = ele[i];
				inM = 2;
				i++;
			} else if (inM == 2) {
				n = ele[i];
				i++;
			}
		}
		return new String[] { m, r, n, p, t };
	}
	
	public static String genCode() {
		String originClass = "java.lang.String";
		String code = "public final class MaskString {\n";
		String[] methodsDescriptor = { "public int length();", "public boolean isEmpty();", "public char charAt(int);",
				"public int codePointAt(int);", "public int codePointBefore(int);",
				"public int codePointCount(int, int);", "public int offsetByCodePoints(int, int);",
				"void getChars(char[], int);", "public void getChars(int, int, char[], int);",
				"public void getBytes(int, int, byte[], int);",
				"public byte[] getBytes(java.lang.String) throws java.io.UnsupportedEncodingException;",
				"public byte[] getBytes(java.nio.charset.Charset);", "public byte[] getBytes();",
				"public boolean equals(java.lang.Object);", "public boolean contentEquals(java.lang.StringBuffer);",
				"public boolean contentEquals(java.lang.CharSequence);",
				"public boolean equalsIgnoreCase(java.lang.String);", "public int compareTo(java.lang.String);",
				"public int compareToIgnoreCase(java.lang.String);",
				"public boolean regionMatches(int, java.lang.String, int, int);",
				"public boolean regionMatches(boolean, int, java.lang.String, int, int);",
				"public boolean startsWith(java.lang.String, int);", "public boolean startsWith(java.lang.String);",
				"public boolean endsWith(java.lang.String);", "public int hashCode();", "public int indexOf(int);",
				"public int indexOf(int, int);", "public int lastIndexOf(int);", "public int lastIndexOf(int, int);",
				"public int indexOf(java.lang.String);", "public int indexOf(java.lang.String, int);",
				"static int indexOf(char[], int, int, java.lang.String, int);",
				"static int indexOf(char[], int, int, char[], int, int, int);",
				"public int lastIndexOf(java.lang.String);", "public int lastIndexOf(java.lang.String, int);",
				"static int lastIndexOf(char[], int, int, java.lang.String, int);",
				"static int lastIndexOf(char[], int, int, char[], int, int, int);",
				"public java.lang.String substring(int);", "public java.lang.String substring(int, int);",
				"public java.lang.CharSequence subSequence(int, int);",
				"public java.lang.String concat(java.lang.String);", "public java.lang.String replace(char, char);",
				"public boolean matches(java.lang.String);", "public boolean contains(java.lang.CharSequence);",
				"public java.lang.String replaceFirst(java.lang.String, java.lang.String);",
				"public java.lang.String replaceAll(java.lang.String, java.lang.String);",
				"public java.lang.String replace(java.lang.CharSequence, java.lang.CharSequence);",
				"public java.lang.String[] split(java.lang.String, int);",
				"public java.lang.String[] split(java.lang.String);",
				"public static java.lang.String join(java.lang.CharSequence, java.lang.CharSequence...);",
				"public static java.lang.String join(java.lang.CharSequence, java.lang.Iterable<? extends java.lang.CharSequence>);",
				"public java.lang.String toLowerCase(java.util.Locale);", "public java.lang.String toLowerCase();",
				"public java.lang.String toUpperCase(java.util.Locale);", "public java.lang.String toUpperCase();",
				"public java.lang.String trim();", "public java.lang.String toString();",
				"public char[] toCharArray();",
				"public static java.lang.String format(java.lang.String, java.lang.Object...);",
				"public static java.lang.String format(java.util.Locale, java.lang.String, java.lang.Object...);",
				"public static java.lang.String valueOf(java.lang.Object);",
				"public static java.lang.String valueOf(char[]);",
				"public static java.lang.String valueOf(char[], int, int);",
				"public static java.lang.String copyValueOf(char[], int, int);",
				"public static java.lang.String copyValueOf(char[]);",
				"public static java.lang.String valueOf(boolean);", "public static java.lang.String valueOf(char);",
				"public static java.lang.String valueOf(int);", "public static java.lang.String valueOf(long);",
				"public static java.lang.String valueOf(float);", "public static java.lang.String valueOf(double);",
				"public native java.lang.String intern();", "public int compareTo(java.lang.Object);" };
		for (int i = 0; i < methodsDescriptor.length; i++) {
			boolean isStatic = true;
			String[] descriptors = parseDescriptor(methodsDescriptor[i]);
			if(descriptors==null) {
				continue;
			}
			descriptors[0] = descriptors[0].replace("native", "");
			code += tag + descriptors[0];
			if (descriptors[0].indexOf("static") == -1) {
				code += "static ";
				isStatic = false;
			}
			code += descriptors[1] + " " + descriptors[2];
			code += "(";
			int i2 = 0;
			String[] args = descriptors[3].isEmpty() ? new String[] {}: descriptors[3].split(", ");
			if (!isStatic) {
				code += originClass + " argThis";
				i2 = 0;
			} else {
				if (args.length > 0) {
					code += args[0] + " arg0";
					i2 = 1;
				}
			}
			for (; i2 < args.length; i2++) {
				code += ", " + args[i2] + " arg" + i2;
			}
			code += ") " + descriptors[4] + " {\n";
			code += tag + tag;
			String returnV;
			String paramsString = "";
			if (!descriptors[1].equals("void")) {
				returnV = "returnV";
				code += descriptors[1]+" returnV = ";
			}
			else {
				returnV = "\"__VOID__\"";
			}
			if (!isStatic) {
				code += "argThis";
				paramsString += ", argThis";
			} else {
				code += originClass;
			}
			code += "." + descriptors[2];
			code += "(";
			if (args.length > 0) {
				code += "arg0";
				paramsString += ", arg0";
			}
			for (int i3 = 1; i3 < args.length; i3++) {
				code += ", arg" + i3;
				paramsString += ", arg"+i3;
			}
			code += ");\n";
			code += tag+tag+"FlowLog.log(\""+descriptors[2]+"\", "+returnV+paramsString+");\n";
			if(!descriptors[1].equals("void")) {
				code += tag+tag+"return returnV;\n";
			}
			code += tag + "}\n";
		}
		code += "}";
		return code;
	}

	public static void main(String[] args) throws Exception {
		String fileName = "D:\\ZIYA\\MaskString.java";
		try {
			FileWriter writer = new FileWriter(fileName);
			writer.write(genCode());
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
