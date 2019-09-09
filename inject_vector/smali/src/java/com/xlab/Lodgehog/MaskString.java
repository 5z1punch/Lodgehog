package com.xlab.lodgehog;
public final class MaskString {
    public static int length(java.lang.String argThis)  {
        int returnV = argThis.length();
        FridaCaller.preCall("String.length", returnV, argThis);
        return returnV;
    }
    public static boolean isEmpty(java.lang.String argThis)  {
        boolean returnV = argThis.isEmpty();
        FridaCaller.preCall("String.isEmpty", returnV, argThis);
        return returnV;
    }
    public static char charAt(java.lang.String argThis, int arg0)  {
        char returnV = argThis.charAt(arg0);
        FridaCaller.preCall("String.charAt", returnV, argThis, arg0);
        return returnV;
    }
    public static int codePointAt(java.lang.String argThis, int arg0)  {
        int returnV = argThis.codePointAt(arg0);
        FridaCaller.preCall("String.codePointAt", returnV, argThis, arg0);
        return returnV;
    }
    public static int codePointBefore(java.lang.String argThis, int arg0)  {
        int returnV = argThis.codePointBefore(arg0);
        FridaCaller.preCall("String.codePointBefore", returnV, argThis, arg0);
        return returnV;
    }
    public static int codePointCount(java.lang.String argThis, int arg0, int arg1)  {
        int returnV = argThis.codePointCount(arg0, arg1);
        FridaCaller.preCall("String.codePointCount", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static int offsetByCodePoints(java.lang.String argThis, int arg0, int arg1)  {
        int returnV = argThis.offsetByCodePoints(arg0, arg1);
        FridaCaller.preCall("String.offsetByCodePoints", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static void getChars(java.lang.String argThis, int arg0, int arg1, char[] arg2, int arg3)  {
        argThis.getChars(arg0, arg1, arg2, arg3);
        FridaCaller.preCall("String.getChars", "__VOID__", argThis, arg0, arg1, arg2, arg3);
    }
    public static void getBytes(java.lang.String argThis, int arg0, int arg1, byte[] arg2, int arg3)  {
        argThis.getBytes(arg0, arg1, arg2, arg3);
        FridaCaller.preCall("String.getBytes", "__VOID__", argThis, arg0, arg1, arg2, arg3);
    }
    public static byte[] getBytes(java.lang.String argThis, java.lang.String arg0)  throws java.io.UnsupportedEncodingException {
        byte[] returnV = argThis.getBytes(arg0);
        FridaCaller.preCall("String.getBytes", returnV, argThis, arg0);
        return returnV;
    }
    public static byte[] getBytes(java.lang.String argThis, java.nio.charset.Charset arg0)  {
        byte[] returnV = argThis.getBytes(arg0);
        FridaCaller.preCall("String.getBytes", returnV, argThis, arg0);
        return returnV;
    }
    public static byte[] getBytes(java.lang.String argThis)  {
        byte[] returnV = argThis.getBytes();
        FridaCaller.preCall("String.getBytes", returnV, argThis);
        return returnV;
    }
    public static boolean equals(java.lang.String argThis, java.lang.Object arg0)  {
        boolean returnV = argThis.equals(arg0);
        FridaCaller.preCall("String.equals", returnV, argThis, arg0);
        return returnV;
    }
    public static boolean contentEquals(java.lang.String argThis, java.lang.StringBuffer arg0)  {
        boolean returnV = argThis.contentEquals(arg0);
        FridaCaller.preCall("String.contentEquals", returnV, argThis, arg0);
        return returnV;
    }
    public static boolean contentEquals(java.lang.String argThis, java.lang.CharSequence arg0)  {
        boolean returnV = argThis.contentEquals(arg0);
        FridaCaller.preCall("String.contentEquals", returnV, argThis, arg0);
        return returnV;
    }
    public static boolean equalsIgnoreCase(java.lang.String argThis, java.lang.String arg0)  {
        boolean returnV = argThis.equalsIgnoreCase(arg0);
        FridaCaller.preCall("String.equalsIgnoreCase", returnV, argThis, arg0);
        return returnV;
    }
    public static int compareTo(java.lang.String argThis, java.lang.String arg0)  {
        int returnV = argThis.compareTo(arg0);
        FridaCaller.preCall("String.compareTo", returnV, argThis, arg0);
        return returnV;
    }
    public static int compareToIgnoreCase(java.lang.String argThis, java.lang.String arg0)  {
        int returnV = argThis.compareToIgnoreCase(arg0);
        FridaCaller.preCall("String.compareToIgnoreCase", returnV, argThis, arg0);
        return returnV;
    }
    public static boolean regionMatches(java.lang.String argThis, int arg0, java.lang.String arg1, int arg2, int arg3)  {
        boolean returnV = argThis.regionMatches(arg0, arg1, arg2, arg3);
        FridaCaller.preCall("String.regionMatches", returnV, argThis, arg0, arg1, arg2, arg3);
        return returnV;
    }
    public static boolean regionMatches(java.lang.String argThis, boolean arg0, int arg1, java.lang.String arg2, int arg3, int arg4)  {
        boolean returnV = argThis.regionMatches(arg0, arg1, arg2, arg3, arg4);
        FridaCaller.preCall("String.regionMatches", returnV, argThis, arg0, arg1, arg2, arg3, arg4);
        return returnV;
    }
    public static boolean startsWith(java.lang.String argThis, java.lang.String arg0, int arg1)  {
        boolean returnV = argThis.startsWith(arg0, arg1);
        FridaCaller.preCall("String.startsWith", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static boolean startsWith(java.lang.String argThis, java.lang.String arg0)  {
        boolean returnV = argThis.startsWith(arg0);
        FridaCaller.preCall("String.startsWith", returnV, argThis, arg0);
        return returnV;
    }
    public static boolean endsWith(java.lang.String argThis, java.lang.String arg0)  {
        boolean returnV = argThis.endsWith(arg0);
        FridaCaller.preCall("String.endsWith", returnV, argThis, arg0);
        return returnV;
    }
    public static int hashCode(java.lang.String argThis)  {
        int returnV = argThis.hashCode();
        FridaCaller.preCall("String.hashCode", returnV, argThis);
        return returnV;
    }
    public static int indexOf(java.lang.String argThis, int arg0)  {
        int returnV = argThis.indexOf(arg0);
        FridaCaller.preCall("String.indexOf", returnV, argThis, arg0);
        return returnV;
    }
    public static int indexOf(java.lang.String argThis, int arg0, int arg1)  {
        int returnV = argThis.indexOf(arg0, arg1);
        FridaCaller.preCall("String.indexOf", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static int lastIndexOf(java.lang.String argThis, int arg0)  {
        int returnV = argThis.lastIndexOf(arg0);
        FridaCaller.preCall("String.lastIndexOf", returnV, argThis, arg0);
        return returnV;
    }
    public static int lastIndexOf(java.lang.String argThis, int arg0, int arg1)  {
        int returnV = argThis.lastIndexOf(arg0, arg1);
        FridaCaller.preCall("String.lastIndexOf", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static int indexOf(java.lang.String argThis, java.lang.String arg0)  {
        int returnV = argThis.indexOf(arg0);
        FridaCaller.preCall("String.indexOf", returnV, argThis, arg0);
        return returnV;
    }
    public static int indexOf(java.lang.String argThis, java.lang.String arg0, int arg1)  {
        int returnV = argThis.indexOf(arg0, arg1);
        FridaCaller.preCall("String.indexOf", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static int lastIndexOf(java.lang.String argThis, java.lang.String arg0)  {
        int returnV = argThis.lastIndexOf(arg0);
        FridaCaller.preCall("String.lastIndexOf", returnV, argThis, arg0);
        return returnV;
    }
    public static int lastIndexOf(java.lang.String argThis, java.lang.String arg0, int arg1)  {
        int returnV = argThis.lastIndexOf(arg0, arg1);
        FridaCaller.preCall("String.lastIndexOf", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static java.lang.String substring(java.lang.String argThis, int arg0)  {
        java.lang.String returnV = argThis.substring(arg0);
        FridaCaller.preCall("String.substring", returnV, argThis, arg0);
        return returnV;
    }
    public static java.lang.String substring(java.lang.String argThis, int arg0, int arg1)  {
        java.lang.String returnV = argThis.substring(arg0, arg1);
        FridaCaller.preCall("String.substring", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static java.lang.CharSequence subSequence(java.lang.String argThis, int arg0, int arg1)  {
        java.lang.CharSequence returnV = argThis.subSequence(arg0, arg1);
        FridaCaller.preCall("String.subSequence", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static java.lang.String concat(java.lang.String argThis, java.lang.String arg0)  {
        java.lang.String returnV = argThis.concat(arg0);
        FridaCaller.preCall("String.concat", returnV, argThis, arg0);
        return returnV;
    }
    public static java.lang.String replace(java.lang.String argThis, char arg0, char arg1)  {
        java.lang.String returnV = argThis.replace(arg0, arg1);
        FridaCaller.preCall("String.replace", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static boolean matches(java.lang.String argThis, java.lang.String arg0)  {
        boolean returnV = argThis.matches(arg0);
        FridaCaller.preCall("String.matches", returnV, argThis, arg0);
        return returnV;
    }
    public static boolean contains(java.lang.String argThis, java.lang.CharSequence arg0)  {
        boolean returnV = argThis.contains(arg0);
        FridaCaller.preCall("String.contains", returnV, argThis, arg0);
        return returnV;
    }
    public static java.lang.String replaceFirst(java.lang.String argThis, java.lang.String arg0, java.lang.String arg1)  {
        java.lang.String returnV = argThis.replaceFirst(arg0, arg1);
        FridaCaller.preCall("String.replaceFirst", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static java.lang.String replaceAll(java.lang.String argThis, java.lang.String arg0, java.lang.String arg1)  {
        java.lang.String returnV = argThis.replaceAll(arg0, arg1);
        FridaCaller.preCall("String.replaceAll", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static java.lang.String replace(java.lang.String argThis, java.lang.CharSequence arg0, java.lang.CharSequence arg1)  {
        java.lang.String returnV = argThis.replace(arg0, arg1);
        FridaCaller.preCall("String.replace", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static java.lang.String[] split(java.lang.String argThis, java.lang.String arg0, int arg1)  {
        java.lang.String[] returnV = argThis.split(arg0, arg1);
        FridaCaller.preCall("String.split", returnV, argThis, arg0, arg1);
        return returnV;
    }
    public static java.lang.String[] split(java.lang.String argThis, java.lang.String arg0)  {
        java.lang.String[] returnV = argThis.split(arg0);
        FridaCaller.preCall("String.split", returnV, argThis, arg0);
        return returnV;
    }
    public static java.lang.String join(java.lang.CharSequence arg0, java.lang.CharSequence... arg1)  {
        java.lang.String returnV = java.lang.String.join(arg0, arg1);
        FridaCaller.preCall("String.join", returnV, arg0, arg1);
        return returnV;
    }
    public static java.lang.String join(java.lang.CharSequence arg0, java.lang.Iterable<? extends java.lang.CharSequence> arg1)  {
        java.lang.String returnV = java.lang.String.join(arg0, arg1);
        FridaCaller.preCall("String.join", returnV, arg0, arg1);
        return returnV;
    }
    public static java.lang.String toLowerCase(java.lang.String argThis, java.util.Locale arg0)  {
        java.lang.String returnV = argThis.toLowerCase(arg0);
        FridaCaller.preCall("String.toLowerCase", returnV, argThis, arg0);
        return returnV;
    }
    public static java.lang.String toLowerCase(java.lang.String argThis)  {
        java.lang.String returnV = argThis.toLowerCase();
        FridaCaller.preCall("String.toLowerCase", returnV, argThis);
        return returnV;
    }
    public static java.lang.String toUpperCase(java.lang.String argThis, java.util.Locale arg0)  {
        java.lang.String returnV = argThis.toUpperCase(arg0);
        FridaCaller.preCall("String.toUpperCase", returnV, argThis, arg0);
        return returnV;
    }
    public static java.lang.String toUpperCase(java.lang.String argThis)  {
        java.lang.String returnV = argThis.toUpperCase();
        FridaCaller.preCall("String.toUpperCase", returnV, argThis);
        return returnV;
    }
    public static java.lang.String trim(java.lang.String argThis)  {
        java.lang.String returnV = argThis.trim();
        FridaCaller.preCall("String.trim", returnV, argThis);
        return returnV;
    }
    public static java.lang.String toString(java.lang.String argThis)  {
        java.lang.String returnV = argThis.toString();
        FridaCaller.preCall("String.toString", returnV, argThis);
        return returnV;
    }
    public static char[] toCharArray(java.lang.String argThis)  {
        char[] returnV = argThis.toCharArray();
        FridaCaller.preCall("String.toCharArray", returnV, argThis);
        return returnV;
    }
    public static java.lang.String format(java.lang.String arg0, java.lang.Object... arg1)  {
        java.lang.String returnV = java.lang.String.format(arg0, arg1);
        FridaCaller.preCall("String.format", returnV, arg0, arg1);
        return returnV;
    }
    public static java.lang.String format(java.util.Locale arg0, java.lang.String arg1, java.lang.Object... arg2)  {
        java.lang.String returnV = java.lang.String.format(arg0, arg1, arg2);
        FridaCaller.preCall("String.format", returnV, arg0, arg1, arg2);
        return returnV;
    }
    public static java.lang.String valueOf(java.lang.Object arg0)  {
        java.lang.String returnV = java.lang.String.valueOf(arg0);
        FridaCaller.preCall("String.valueOf", returnV, arg0);
        return returnV;
    }
    public static java.lang.String valueOf(char[] arg0)  {
        java.lang.String returnV = java.lang.String.valueOf(arg0);
        FridaCaller.preCall("String.valueOf", returnV, arg0);
        return returnV;
    }
    public static java.lang.String valueOf(char[] arg0, int arg1, int arg2)  {
        java.lang.String returnV = java.lang.String.valueOf(arg0, arg1, arg2);
        FridaCaller.preCall("String.valueOf", returnV, arg0, arg1, arg2);
        return returnV;
    }
    public static java.lang.String copyValueOf(char[] arg0, int arg1, int arg2)  {
        java.lang.String returnV = java.lang.String.copyValueOf(arg0, arg1, arg2);
        FridaCaller.preCall("String.copyValueOf", returnV, arg0, arg1, arg2);
        return returnV;
    }
    public static java.lang.String copyValueOf(char[] arg0)  {
        java.lang.String returnV = java.lang.String.copyValueOf(arg0);
        FridaCaller.preCall("String.copyValueOf", returnV, arg0);
        return returnV;
    }
    public static java.lang.String valueOf(boolean arg0)  {
        java.lang.String returnV = java.lang.String.valueOf(arg0);
        FridaCaller.preCall("String.valueOf", returnV, arg0);
        return returnV;
    }
    public static java.lang.String valueOf(char arg0)  {
        java.lang.String returnV = java.lang.String.valueOf(arg0);
        FridaCaller.preCall("String.valueOf", returnV, arg0);
        return returnV;
    }
    public static java.lang.String valueOf(int arg0)  {
        java.lang.String returnV = java.lang.String.valueOf(arg0);
        FridaCaller.preCall("String.valueOf", returnV, arg0);
        return returnV;
    }
    public static java.lang.String valueOf(long arg0)  {
        java.lang.String returnV = java.lang.String.valueOf(arg0);
        FridaCaller.preCall("String.valueOf", returnV, arg0);
        return returnV;
    }
    public static java.lang.String valueOf(float arg0)  {
        java.lang.String returnV = java.lang.String.valueOf(arg0);
        FridaCaller.preCall("String.valueOf", returnV, arg0);
        return returnV;
    }
    public static java.lang.String valueOf(double arg0)  {
        java.lang.String returnV = java.lang.String.valueOf(arg0);
        FridaCaller.preCall("String.valueOf", returnV, arg0);
        return returnV;
    }
    public  static java.lang.String intern(java.lang.String argThis)  {
        java.lang.String returnV = argThis.intern();
        FridaCaller.preCall("String.intern", returnV, argThis);
        return returnV;
    }
    public static int compareTo(java.lang.String argThis, java.lang.Object arg0)  {
        int returnV = argThis.compareTo((String)arg0);
        FridaCaller.preCall("String.compareTo", returnV, argThis, arg0);
        return returnV;
    }
}