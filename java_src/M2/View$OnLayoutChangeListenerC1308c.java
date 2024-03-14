package m2;

import android.view.View;
import com.google.android.material.bottomappbar.BottomAppBar$Behavior;
import w2.g;
/* renamed from: m2.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class View$OnLayoutChangeListenerC1308c implements View.OnLayoutChangeListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ BottomAppBar$Behavior f11734d;

    public View$OnLayoutChangeListenerC1308c(BottomAppBar$Behavior bottomAppBar$Behavior) {
        this.f11734d = bottomAppBar$Behavior;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
        if (((C1311f) this.f11734d.f7748g.get()) == null || !(view instanceof g)) {
            view.removeOnLayoutChangeListener(this);
            return;
        }
        g gVar = (g) view;
        this.f11734d.f7747f.set(0, 0, gVar.getMeasuredWidth(), gVar.getMeasuredHeight());
        throw null;
    }
}
