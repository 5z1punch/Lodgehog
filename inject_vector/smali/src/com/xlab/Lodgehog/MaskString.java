public final class MaskString {
    public static int length(java.lang.String argThis)  {
        int returnV = argThis.length();
        FlowLogNG.log("String.length", returnV, argThis);
        return returnV;
    }
    public static boolean isEmpty(java.lang.String argThis)  {
        boolean returnV = argThis.isEmpty();
        FlowLogNG.log("String.isEmpty", returnV, argThis);
        return returnV;
    }
    public static char charAt(java.lang.String argThis, int arg0)  {
        char returnV = argThis.charAt(arg0);
        FlowLogNG.log("String.charAt", returnV, argThis, arg0);
        return returnV;
    }
    public static int codePointAt(java.lang.String argThis, int arg0)  {
        int returnV = argThis.codePointAt(arg0);
        FlowLogNG.log("String.codePointAt", returnV, argThis, arg0);
        return returnV;
    }
    public static int codePointBefore(java.lang.String argThis, int arg0)  {
        int returnV = argThis.codePointBefore(arg0);
        FlowLogNG.log("String.codePointBefore", returnV, argThis, arg0);
        return returnV;
    }
    public static int codePointCount(java.lang.String argThis, int arg0, int arg1)  {
        int returnV = argThis.codePointCount(arg0, arg1);
        FlowLogNG.log("String.codePointCount", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static int offsetByCodePoints(java.lang.String argThis, int arg0, int arg1)  {
        int returnV = argThis.offsetByCodePoints(arg0, arg1);
        FlowLogNG.log("String.offsetByCodePoints", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static void getChars(java.lang.String argThis, int arg0, int arg1, char[] arg2, int arg3)  {
        argThis.getChars(arg0, arg1, arg2, arg3);
        FlowLogNG.log("String.getChars", "__VOID__", argThis, arg0, arg1, arg2, arg3);
    }
    public static void getBytes(java.lang.String argThis, int arg0, int arg1, byte[] arg2, int arg3)  {
        argThis.getBytes(arg0, arg1, arg2, arg3);
        FlowLogNG.log("String.getBytes", "__VOID__", argThis, arg0, arg1, arg2, arg3);
    }
    public static byte[] getBytes(java.lang.String argThis, java.lang.String arg0)  throws java.io.UnsupportedEncodingException {
        byte[] returnV = argThis.getBytes(arg0);
        FlowLogNG.log("String.getBytes", returnV, argThis, arg0);
        return returnV;
    }
    public static byte[] getBytes(java.lang.String argThis, java.nio.charset.Charset arg0)  {
        byte[] returnV = argThis.getBytes(arg0);
        FlowLogNG.log("String.getBytes", returnV, argThis, arg0);
        return returnV;
    }
    public static byte[] getBytes(java.lang.String argThis)  {
        byte[] returnV = argThis.getBytes();
        FlowLogNG.log("String.getBytes", returnV, argThis);
        return returnV;
    }
    public static boolean equals(java.lang.String argThis, java.lang.Object arg0)  {
        boolean returnV = argThis.equals(arg0);
        FlowLogNG.log("String.equals", returnV, argThis, arg0);
        return returnV;
    }
    public static boolean contentEquals(java.lang.String argThis, java.lang.StringBuffer arg0)  {
        boolean returnV = argThis.contentEquals(arg0);
        FlowLogNG.log("String.contentEquals", returnV, argThis, arg0);
        return returnV;
    }
    public static boolean contentEquals(java.lang.String argThis, java.lang.CharSequence arg0)  {
        boolean returnV = argThis.contentEquals(arg0);
        FlowLogNG.log("String.contentEquals", returnV, argThis, arg0);
        return returnV;
    }
    public static boolean equalsIgnoreCase(java.lang.String argThis, java.lang.String arg0)  {
        boolean returnV = argThis.equalsIgnoreCase(arg0);
        FlowLogNG.log("String.equalsIgnoreCase", returnV, argThis, arg0);
        return returnV;
    }
    public static int compareTo(java.lang.String argThis, java.lang.String arg0)  {
        int returnV = argThis.compareTo(arg0);
        FlowLogNG.log("String.compareTo", returnV, argThis, arg0);
        return returnV;
    }
    public static int compareToIgnoreCase(java.lang.String argThis, java.lang.String arg0)  {
        int returnV = argThis.compareToIgnoreCase(arg0);
        FlowLogNG.log("String.compareToIgnoreCase", returnV, argThis, arg0);
        return returnV;
    }
    public static boolean regionMatches(java.lang.String argThis, int arg0, java.lang.String arg1, int arg2, int arg3)  {
        boolean returnV = argThis.regionMatches(arg0, arg1, arg2, arg3);
        FlowLogNG.log("String.regionMatches", returnV, argThis, arg0, arg1, arg2, arg3);
        return returnV;
    }
    public static boolean regionMatches(java.lang.String argThis, boolean arg0, int arg1, java.lang.String arg2, int arg3, int arg4)  {
        boolean returnV = argThis.regionMatches(arg0, arg1, arg2, arg3, arg4);
        FlowLogNG.log("String.regionMatches", returnV, argThis, arg0, arg1, arg2, arg3, arg4);
        return returnV;
    }
    public static boolean startsWith(java.lang.String argThis, java.lang.String arg0, int arg1)  {
        boolean returnV = argThis.startsWith(arg0, arg1);
        FlowLogNG.log("String.startsWith", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static boolean startsWith(java.lang.String argThis, java.lang.String arg0)  {
        boolean returnV = argThis.startsWith(arg0);
        FlowLogNG.log("String.startsWith", returnV, argThis, arg0);
        return returnV;
    }
    public static boolean endsWith(java.lang.String argThis, java.lang.String arg0)  {
        boolean returnV = argThis.endsWith(arg0);
        FlowLogNG.log("String.endsWith", returnV, argThis, arg0);
        return returnV;
    }
    public static int hashCode(java.lang.String argThis)  {
        int returnV = argThis.hashCode();
        FlowLogNG.log("String.hashCode", returnV, argThis);
        return returnV;
    }
    public static int indexOf(java.lang.String argThis, int arg0)  {
        int returnV = argThis.indexOf(arg0);
        FlowLogNG.log("String.indexOf", returnV, argThis, arg0);
        return returnV;
    }
    public static int indexOf(java.lang.String argThis, int arg0, int arg1)  {
        int returnV = argThis.indexOf(arg0, arg1);
        FlowLogNG.log("String.indexOf", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static int lastIndexOf(java.lang.String argThis, int arg0)  {
        int returnV = argThis.lastIndexOf(arg0);
        FlowLogNG.log("String.lastIndexOf", returnV, argThis, arg0);
        return returnV;
    }
    public static int lastIndexOf(java.lang.String argThis, int arg0, int arg1)  {
        int returnV = argThis.lastIndexOf(arg0, arg1);
        FlowLogNG.log("String.lastIndexOf", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static int indexOf(java.lang.String argThis, java.lang.String arg0)  {
        int returnV = argThis.indexOf(arg0);
        FlowLogNG.log("String.indexOf", returnV, argThis, arg0);
        return returnV;
    }
    public static int indexOf(java.lang.String argThis, java.lang.String arg0, int arg1)  {
        int returnV = argThis.indexOf(arg0, arg1);
        FlowLogNG.log("String.indexOf", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static int lastIndexOf(java.lang.String argThis, java.lang.String arg0)  {
        int returnV = argThis.lastIndexOf(arg0);
        FlowLogNG.log("String.lastIndexOf", returnV, argThis, arg0);
        return returnV;
    }
    public static int lastIndexOf(java.lang.String argThis, java.lang.String arg0, int arg1)  {
        int returnV = argThis.lastIndexOf(arg0, arg1);
        FlowLogNG.log("String.lastIndexOf", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static java.lang.String substring(java.lang.String argThis, int arg0)  {
        java.lang.String returnV = argThis.substring(arg0);
        FlowLogNG.log("String.substring", returnV, argThis, arg0);
        return returnV;
    }
    public static java.lang.String substring(java.lang.String argThis, int arg0, int arg1)  {
        java.lang.String returnV = argThis.substring(arg0, arg1);
        FlowLogNG.log("String.substring", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static java.lang.CharSequence subSequence(java.lang.String argThis, int arg0, int arg1)  {
        java.lang.CharSequence returnV = argThis.subSequence(arg0, arg1);
        FlowLogNG.log("String.subSequence", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static java.lang.String concat(java.lang.String argThis, java.lang.String arg0)  {
        java.lang.String returnV = argThis.concat(arg0);
        FlowLogNG.log("String.concat", returnV, argThis, arg0);
        return returnV;
    }
    public static java.lang.String replace(java.lang.String argThis, char arg0, char arg1)  {
        java.lang.String returnV = argThis.replace(arg0, arg1);
        FlowLogNG.log("String.replace", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static boolean matches(java.lang.String argThis, java.lang.String arg0)  {
        boolean returnV = argThis.matches(arg0);
        FlowLogNG.log("String.matches", returnV, argThis, arg0);
        return returnV;
    }
    public static boolean contains(java.lang.String argThis, java.lang.CharSequence arg0)  {
        boolean returnV = argThis.contains(arg0);
        FlowLogNG.log("String.contains", returnV, argThis, arg0);
        return returnV;
    }
    public static java.lang.String replaceFirst(java.lang.String argThis, java.lang.String arg0, java.lang.String arg1)  {
        java.lang.String returnV = argThis.replaceFirst(arg0, arg1);
        FlowLogNG.log("String.replaceFirst", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static java.lang.String replaceAll(java.lang.String argThis, java.lang.String arg0, java.lang.String arg1)  {
        java.lang.String returnV = argThis.replaceAll(arg0, arg1);
        FlowLogNG.log("String.replaceAll", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static java.lang.String replace(java.lang.String argThis, java.lang.CharSequence arg0, java.lang.CharSequence arg1)  {
        java.lang.String returnV = argThis.replace(arg0, arg1);
        FlowLogNG.log("String.replace", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static java.lang.String[] split(java.lang.String argThis, java.lang.String arg0, int arg1)  {
        java.lang.String[] returnV = argThis.split(arg0, arg1);
        FlowLogNG.log("String.split", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static java.lang.String[] split(java.lang.String argThis, java.lang.String arg0)  {
        java.lang.String[] returnV = argThis.split(arg0);
        FlowLogNG.log("String.split", returnV, argThis, arg0);
        return returnV;
    }
    public static java.lang.String join(java.lang.CharSequence arg0, java.lang.CharSequence... arg1)  {
        java.lang.String returnV = java.lang.String.join(arg0, arg1);
        FlowLogNG.log("String.join", returnV, arg0, arg1);
        return returnV;
    }
    public static java.lang.String join(java.lang.CharSequence arg0, java.lang.Iterable<? extends java.lang.CharSequence> arg1)  {
        java.lang.String returnV = java.lang.String.join(arg0, arg1);
        FlowLogNG.log("String.join", returnV, arg0, arg1);
        return returnV;
    }
    public static java.lang.String toLowerCase(java.lang.String argThis, java.util.Locale arg0)  {
        java.lang.String returnV = argThis.toLowerCase(arg0);
        FlowLogNG.log("String.toLowerCase", returnV, argThis, arg0);
        return returnV;
    }
    public static java.lang.String toLowerCase(java.lang.String argThis)  {
        java.lang.String returnV = argThis.toLowerCase();
        FlowLogNG.log("String.toLowerCase", returnV, argThis);
        return returnV;
    }
    public static java.lang.String toUpperCase(java.lang.String argThis, java.util.Locale arg0)  {
        java.lang.String returnV = argThis.toUpperCase(arg0);
        FlowLogNG.log("String.toUpperCase", returnV, argThis, arg0);
        return returnV;
    }
    public static java.lang.String toUpperCase(java.lang.String argThis)  {
        java.lang.String returnV = argThis.toUpperCase();
        FlowLogNG.log("String.toUpperCase", returnV, argThis);
        return returnV;
    }
    public static java.lang.String trim(java.lang.String argThis)  {
        java.lang.String returnV = argThis.trim();
        FlowLogNG.log("String.trim", returnV, argThis);
        return returnV;
    }
    public static java.lang.String toString(java.lang.String argThis)  {
        java.lang.String returnV = argThis.toString();
        FlowLogNG.log("String.toString", returnV, argThis);
        return returnV;
    }
    public static char[] toCharArray(java.lang.String argThis)  {
        char[] returnV = argThis.toCharArray();
        FlowLogNG.log("String.toCharArray", returnV, argThis);
        return returnV;
    }
    public static java.lang.String format(java.lang.String arg0, java.lang.Object... arg1)  {
        java.lang.String returnV = java.lang.String.format(arg0, arg1);
        FlowLogNG.log("String.format", returnV, arg0, arg1);
        return returnV;
    }
    public static java.lang.String format(java.util.Locale arg0, java.lang.String arg1, java.lang.Object... arg2)  {
        java.lang.String returnV = java.lang.String.format(arg0, arg1, arg2);
        FlowLogNG.log("String.format", returnV, arg0, arg1, arg2);
        return returnV;
    }
    public static java.lang.String valueOf(java.lang.Object arg0)  {
        java.lang.String returnV = java.lang.String.valueOf(arg0);
        FlowLogNG.log("String.valueOf", returnV, arg0);
        return returnV;
    }
    public static java.lang.String valueOf(char[] arg0)  {
        java.lang.String returnV = java.lang.String.valueOf(arg0);
        FlowLogNG.log("String.valueOf", returnV, arg0);
        return returnV;
    }
    public static java.lang.String valueOf(char[] arg0, int arg1, int arg2)  {
        java.lang.String returnV = java.lang.String.valueOf(arg0, arg1, arg2);
        FlowLogNG.log("String.valueOf", returnV, arg0, arg1, arg2);
        return returnV;
    }
    public static java.lang.String copyValueOf(char[] arg0, int arg1, int arg2)  {
        java.lang.String returnV = java.lang.String.copyValueOf(arg0, arg1, arg2);
        FlowLogNG.log("String.copyValueOf", returnV, arg0, arg1, arg2);
        return returnV;
    }
    public static java.lang.String copyValueOf(char[] arg0)  {
        java.lang.String returnV = java.lang.String.copyValueOf(arg0);
        FlowLogNG.log("String.copyValueOf", returnV, arg0);
        return returnV;
    }
    public static java.lang.String valueOf(boolean arg0)  {
        java.lang.String returnV = java.lang.String.valueOf(arg0);
        FlowLogNG.log("String.valueOf", returnV, arg0);
        return returnV;
    }
    public static java.lang.String valueOf(char arg0)  {
        java.lang.String returnV = java.lang.String.valueOf(arg0);
        FlowLogNG.log("String.valueOf", returnV, arg0);
        return returnV;
    }
    public static java.lang.String valueOf(int arg0)  {
        java.lang.String returnV = java.lang.String.valueOf(arg0);
        FlowLogNG.log("String.valueOf", returnV, arg0);
        return returnV;
    }
    public static java.lang.String valueOf(long arg0)  {
        java.lang.String returnV = java.lang.String.valueOf(arg0);
        FlowLogNG.log("String.valueOf", returnV, arg0);
        return returnV;
    }
    public static java.lang.String valueOf(float arg0)  {
        java.lang.String returnV = java.lang.String.valueOf(arg0);
        FlowLogNG.log("String.valueOf", returnV, arg0);
        return returnV;
    }
    public static java.lang.String valueOf(double arg0)  {
        java.lang.String returnV = java.lang.String.valueOf(arg0);
        FlowLogNG.log("String.valueOf", returnV, arg0);
        return returnV;
    }
    public  static java.lang.String intern(java.lang.String argThis)  {
        java.lang.String returnV = argThis.intern();
        FlowLogNG.log("String.intern", returnV, argThis);
        return returnV;
    }
    public static int compareTo(java.lang.String argThis, java.lang.Object arg0)  {
        int returnV = argThis.compareTo((String)arg0);
        FlowLogNG.log("String.compareTo", returnV, argThis, arg0);
        return returnV;
    }
}