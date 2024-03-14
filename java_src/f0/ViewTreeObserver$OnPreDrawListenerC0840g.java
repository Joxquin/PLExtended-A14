package f0;

import android.view.ViewTreeObserver;
import androidx.slice.widget.GridRowView;
/* renamed from: f0.g  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewTreeObserver$OnPreDrawListenerC0840g implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ GridRowView f9183d;

    public ViewTreeObserver$OnPreDrawListenerC0840g(GridRowView gridRowView) {
        this.f9183d = gridRowView;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        GridRowView gridRowView = this.f9183d;
        gridRowView.f4101w = gridRowView.u();
        this.f9183d.x();
        this.f9183d.getViewTreeObserver().removeOnPreDrawListener(this);
        this.f9183d.f4097s = false;
        return true;
    }
}
