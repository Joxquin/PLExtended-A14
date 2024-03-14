package androidx.lifecycle;

import android.view.View;
import android.view.ViewParent;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class W {
    public static final InterfaceC0251q a(View view) {
        kotlin.jvm.internal.h.e(view, "<this>");
        kotlin.sequences.c cVar = new kotlin.sequences.c(kotlin.sequences.j.b(kotlin.sequences.n.a(view, new m3.l() { // from class: androidx.lifecycle.ViewTreeLifecycleOwner$findViewTreeLifecycleOwner$1
            @Override // m3.l
            public final Object invoke(Object obj) {
                View currentView = (View) obj;
                kotlin.jvm.internal.h.e(currentView, "currentView");
                ViewParent parent = currentView.getParent();
                if (parent instanceof View) {
                    return (View) parent;
                }
                return null;
            }
        }), new m3.l() { // from class: androidx.lifecycle.ViewTreeLifecycleOwner$findViewTreeLifecycleOwner$2
            @Override // m3.l
            public final Object invoke(Object obj) {
                View viewParent = (View) obj;
                kotlin.jvm.internal.h.e(viewParent, "viewParent");
                Object tag = viewParent.getTag(R.id.view_tree_lifecycle_owner);
                if (tag instanceof InterfaceC0251q) {
                    return (InterfaceC0251q) tag;
                }
                return null;
            }
        }));
        return (InterfaceC0251q) (!cVar.hasNext() ? null : cVar.next());
    }

    public static final void b(View view, InterfaceC0251q interfaceC0251q) {
        kotlin.jvm.internal.h.e(view, "<this>");
        view.setTag(R.id.view_tree_lifecycle_owner, interfaceC0251q);
    }
}
