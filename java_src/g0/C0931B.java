package g0;

import android.view.ViewGroup;
import com.android.systemui.shared.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import q.C1355f;
/* renamed from: g0.B  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0931B {

    /* renamed from: a  reason: collision with root package name */
    public static final C0932a f9363a = new C0932a();

    /* renamed from: b  reason: collision with root package name */
    public static final ThreadLocal f9364b = new ThreadLocal();

    /* renamed from: c  reason: collision with root package name */
    public static final ArrayList f9365c = new ArrayList();

    public static void a(ViewGroup viewGroup, x xVar) {
        ArrayList arrayList = f9365c;
        if (arrayList.contains(viewGroup)) {
            return;
        }
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        if (androidx.core.view.A.c(viewGroup)) {
            arrayList.add(viewGroup);
            if (xVar == null) {
                xVar = f9363a;
            }
            x clone = xVar.clone();
            ArrayList arrayList2 = (ArrayList) b().get(viewGroup);
            if (arrayList2 != null && arrayList2.size() > 0) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((x) it.next()).y(viewGroup);
                }
            }
            if (clone != null) {
                clone.i(viewGroup, true);
            }
            if (((C0946o) viewGroup.getTag(R.id.transition_current_scene)) != null) {
                throw null;
            }
            viewGroup.setTag(R.id.transition_current_scene, null);
            if (clone != null) {
                ViewTreeObserver$OnPreDrawListenerC0930A viewTreeObserver$OnPreDrawListenerC0930A = new ViewTreeObserver$OnPreDrawListenerC0930A(viewGroup, clone);
                viewGroup.addOnAttachStateChangeListener(viewTreeObserver$OnPreDrawListenerC0930A);
                viewGroup.getViewTreeObserver().addOnPreDrawListener(viewTreeObserver$OnPreDrawListenerC0930A);
            }
        }
    }

    public static C1355f b() {
        C1355f c1355f;
        ThreadLocal threadLocal = f9364b;
        WeakReference weakReference = (WeakReference) threadLocal.get();
        if (weakReference == null || (c1355f = (C1355f) weakReference.get()) == null) {
            C1355f c1355f2 = new C1355f();
            threadLocal.set(new WeakReference(c1355f2));
            return c1355f2;
        }
        return c1355f;
    }
}
