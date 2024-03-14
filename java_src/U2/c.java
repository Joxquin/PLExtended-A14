package U2;

import java.lang.reflect.InvocationTargetException;
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    public volatile int f1777a = -1;

    public int a() {
        return 0;
    }

    public final int b() {
        int a4 = a();
        this.f1777a = a4;
        return a4;
    }

    public final Object clone() {
        return (c) super.clone();
    }

    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            d.b(null, this, new StringBuffer(), stringBuffer);
            return stringBuffer.toString();
        } catch (IllegalAccessException e4) {
            return "Error printing proto: " + e4.getMessage();
        } catch (InvocationTargetException e5) {
            return "Error printing proto: " + e5.getMessage();
        }
    }
}
