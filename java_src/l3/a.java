package l3;

import kotlin.jvm.internal.h;
import r3.c;
/* loaded from: classes.dex */
public final class a {
    public static final Class a(c cVar) {
        h.e(cVar, "<this>");
        Class a4 = ((kotlin.jvm.internal.c) cVar).a();
        if (a4.isPrimitive()) {
            String name = a4.getName();
            switch (name.hashCode()) {
                case -1325958191:
                    return !name.equals("double") ? a4 : Double.class;
                case 104431:
                    return !name.equals("int") ? a4 : Integer.class;
                case 3039496:
                    return !name.equals("byte") ? a4 : Byte.class;
                case 3052374:
                    return !name.equals("char") ? a4 : Character.class;
                case 3327612:
                    return !name.equals("long") ? a4 : Long.class;
                case 3625364:
                    return !name.equals("void") ? a4 : Void.class;
                case 64711720:
                    return !name.equals("boolean") ? a4 : Boolean.class;
                case 97526364:
                    return !name.equals("float") ? a4 : Float.class;
                case 109413500:
                    return !name.equals("short") ? a4 : Short.class;
                default:
                    return a4;
            }
        }
        return a4;
    }
}
