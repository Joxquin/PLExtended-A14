package e;

import android.view.View;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import i.InterfaceC0969a;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class P extends androidx.core.view.Q {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f8870a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ T f8871b;

    public /* synthetic */ P(T t4, int i4) {
        this.f8870a = i4;
        this.f8871b = t4;
    }

    @Override // androidx.core.view.P
    public final void a() {
        View view;
        int i4 = this.f8870a;
        T t4 = this.f8871b;
        switch (i4) {
            case 0:
                if (t4.f8895p && (view = t4.f8886g) != null) {
                    view.setTranslationY(0.0f);
                    t4.f8883d.setTranslationY(0.0f);
                }
                t4.f8883d.setVisibility(8);
                ActionBarContainer actionBarContainer = t4.f8883d;
                actionBarContainer.f2516d = false;
                actionBarContainer.setDescendantFocusability(262144);
                t4.f8899t = null;
                InterfaceC0969a interfaceC0969a = t4.f8890k;
                if (interfaceC0969a != null) {
                    interfaceC0969a.c(t4.f8889j);
                    t4.f8889j = null;
                    t4.f8890k = null;
                }
                ActionBarOverlayLayout actionBarOverlayLayout = t4.f8882c;
                if (actionBarOverlayLayout != null) {
                    WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
                    androidx.core.view.B.c(actionBarOverlayLayout);
                    return;
                }
                return;
            default:
                t4.f8899t = null;
                t4.f8883d.requestLayout();
                return;
        }
    }
}
