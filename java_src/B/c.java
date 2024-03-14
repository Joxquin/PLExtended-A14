package B;

import D.n;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f105a = new Object();

    public static ColorStateList a(int i4, Context context) {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        D.i iVar;
        Resources resources = context.getResources();
        Resources.Theme theme = context.getTheme();
        D.j jVar = new D.j(resources, theme);
        synchronized (n.f280c) {
            SparseArray sparseArray = (SparseArray) n.f279b.get(jVar);
            colorStateList = null;
            if (sparseArray != null && sparseArray.size() > 0 && (iVar = (D.i) sparseArray.get(i4)) != null) {
                if (!iVar.f270b.equals(resources.getConfiguration()) || (!(theme == null && iVar.f271c == 0) && (theme == null || iVar.f271c != theme.hashCode()))) {
                    sparseArray.remove(i4);
                } else {
                    colorStateList2 = iVar.f269a;
                }
            }
            colorStateList2 = null;
        }
        if (colorStateList2 != null) {
            return colorStateList2;
        }
        ThreadLocal threadLocal = n.f278a;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        boolean z4 = true;
        resources.getValue(i4, typedValue, true);
        int i5 = typedValue.type;
        if (!((i5 < 28 || i5 > 31) ? false : false)) {
            try {
                colorStateList = D.c.a(resources, resources.getXml(i4), theme);
            } catch (Exception e4) {
                Log.w("ResourcesCompat", "Failed to inflate ColorStateList, leaving it to the framework", e4);
            }
        }
        if (colorStateList != null) {
            synchronized (n.f280c) {
                WeakHashMap weakHashMap = n.f279b;
                SparseArray sparseArray2 = (SparseArray) weakHashMap.get(jVar);
                if (sparseArray2 == null) {
                    sparseArray2 = new SparseArray();
                    weakHashMap.put(jVar, sparseArray2);
                }
                sparseArray2.append(i4, new D.i(colorStateList, jVar.f272a.getConfiguration(), theme));
            }
            return colorStateList;
        }
        return resources.getColorStateList(i4, theme);
    }
}
