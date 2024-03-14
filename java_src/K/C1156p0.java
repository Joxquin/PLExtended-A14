package k;

import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import java.lang.reflect.Method;
/* renamed from: k.p0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1156p0 {

    /* renamed from: a  reason: collision with root package name */
    public static final Method f10946a;

    /* renamed from: b  reason: collision with root package name */
    public static final Method f10947b;

    /* renamed from: c  reason: collision with root package name */
    public static final Method f10948c;

    /* renamed from: d  reason: collision with root package name */
    public static final boolean f10949d;

    static {
        try {
            Class cls = Integer.TYPE;
            Class cls2 = Float.TYPE;
            Method declaredMethod = AbsListView.class.getDeclaredMethod("positionSelector", cls, View.class, Boolean.TYPE, cls2, cls2);
            f10946a = declaredMethod;
            declaredMethod.setAccessible(true);
            Method declaredMethod2 = AdapterView.class.getDeclaredMethod("setSelectedPositionInt", cls);
            f10947b = declaredMethod2;
            declaredMethod2.setAccessible(true);
            Method declaredMethod3 = AdapterView.class.getDeclaredMethod("setNextSelectedPositionInt", cls);
            f10948c = declaredMethod3;
            declaredMethod3.setAccessible(true);
            f10949d = true;
        } catch (NoSuchMethodException e4) {
            e4.printStackTrace();
        }
    }
}
