package com.xlab.lodgehog;
import java.util.Map;

public class MaskMap{
    public static boolean containsKey(Map m, Object key){
        boolean returnV = m.containsKey(key);
        FlowLogNG.log("Map.containsKey", returnV, m, key);
        return returnV;
    }
    public static Object get(Map m, Object key){
        Object returnV = m.get(key);
        FlowLogNG.log("Map.get", returnV, m, key);
        return returnV;
    }
    public static Object getOrDefault(Map m, Object key, Object defaultValue){
        Object returnV = m.getOrDefault(key, defaultValue);
        FlowLogNG.log("Map.getOrDefault", returnV, m, key, defaultValue);
        return returnV;
    }
}
