package com.xlab.lodgehog;
import java.util.Map;

public class MaskMap{
    public static boolean containsKey(Map m, Object key){
        boolean returnV = m.containsKey(key);
        FridaCaller.preCall("Map.containsKey", returnV, m, key);
        return returnV;
    }
    public static Object get(Map m, Object key){
        Object returnV = m.get(key);
        FridaCaller.preCall("Map.get", returnV, m, key);
        return returnV;
    }
    public static Object getOrDefault(Map m, Object key, Object defaultValue){
        Object returnV = m.getOrDefault(key, defaultValue);
        FridaCaller.preCall("Map.getOrDefault", returnV, m, key, defaultValue);
        return returnV;
    }
}
