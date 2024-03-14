package m2;

import android.view.View;
import androidx.appcompat.widget.ActionMenuView;
import k.W0;
import x2.C1485w;
/* renamed from: m2.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1306a implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ActionMenuView f11729d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ int f11730e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ boolean f11731f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ C1311f f11732g;

    public RunnableC1306a(C1311f c1311f, ActionMenuView actionMenuView, int i4, boolean z4) {
        this.f11732g = c1311f;
        this.f11729d = actionMenuView;
        this.f11730e = i4;
        this.f11731f = z4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ActionMenuView actionMenuView = this.f11729d;
        C1311f c1311f = this.f11732g;
        int i4 = this.f11730e;
        boolean z4 = this.f11731f;
        c1311f.getClass();
        int i5 = 0;
        if (i4 == 1 && z4) {
            boolean a4 = C1485w.a(c1311f);
            int measuredWidth = a4 ? c1311f.getMeasuredWidth() : 0;
            for (int i6 = 0; i6 < c1311f.getChildCount(); i6++) {
                View childAt = c1311f.getChildAt(i6);
                if ((childAt.getLayoutParams() instanceof W0) && (((W0) childAt.getLayoutParams()).f8905a & 8388615) == 8388611) {
                    measuredWidth = a4 ? Math.min(measuredWidth, childAt.getLeft()) : Math.max(measuredWidth, childAt.getRight());
                }
            }
            i5 = measuredWidth - ((a4 ? actionMenuView.getRight() : actionMenuView.getLeft()) + 0);
        }
        actionMenuView.setTranslationX(i5);
    }
}
