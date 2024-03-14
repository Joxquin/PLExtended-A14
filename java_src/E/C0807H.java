package e;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import java.lang.reflect.Constructor;
import k.C1160s;
import k.C1164u;
import k.C1166v;
/* renamed from: e.H  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0807H {

    /* renamed from: b  reason: collision with root package name */
    public static final Class[] f8848b = {Context.class, AttributeSet.class};

    /* renamed from: c  reason: collision with root package name */
    public static final int[] f8849c = {16843375};

    /* renamed from: d  reason: collision with root package name */
    public static final String[] f8850d = {"android.widget.", "android.view.", "android.webkit."};

    /* renamed from: e  reason: collision with root package name */
    public static final q.m f8851e = new q.m();

    /* renamed from: a  reason: collision with root package name */
    public final Object[] f8852a = new Object[2];

    public C1160s a(Context context, AttributeSet attributeSet) {
        return new C1160s(context, attributeSet);
    }

    public C1164u b(Context context, AttributeSet attributeSet) {
        return new C1164u(context, attributeSet);
    }

    public C1166v c(Context context, AttributeSet attributeSet) {
        return new C1166v(context, attributeSet);
    }

    public k.M d(Context context, AttributeSet attributeSet) {
        return new k.M(context, attributeSet);
    }

    public AppCompatTextView e(Context context, AttributeSet attributeSet) {
        return new AppCompatTextView(context, attributeSet);
    }

    public final View f(Context context, String str, String str2) {
        String concat;
        q.m mVar = f8851e;
        Constructor constructor = (Constructor) mVar.get(str);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    concat = str2.concat(str);
                } catch (Exception unused) {
                    return null;
                }
            } else {
                concat = str;
            }
            constructor = Class.forName(concat, false, context.getClassLoader()).asSubclass(View.class).getConstructor(f8848b);
            mVar.put(str, constructor);
        }
        constructor.setAccessible(true);
        return (View) constructor.newInstance(this.f8852a);
    }

    public final void g(View view, String str) {
        if (view != null) {
            return;
        }
        throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
    }
}
