package j;

import android.view.CollapsibleActionView;
import android.view.View;
import android.widget.FrameLayout;
import i.InterfaceC0971c;
/* loaded from: classes.dex */
public final class u extends FrameLayout implements InterfaceC0971c {

    /* renamed from: d  reason: collision with root package name */
    public final CollapsibleActionView f10625d;

    public u(View view) {
        super(view.getContext());
        this.f10625d = (CollapsibleActionView) view;
        addView(view);
    }

    @Override // i.InterfaceC0971c
    public final void a() {
        this.f10625d.onActionViewExpanded();
    }

    @Override // i.InterfaceC0971c
    public final void b() {
        this.f10625d.onActionViewCollapsed();
    }
}
