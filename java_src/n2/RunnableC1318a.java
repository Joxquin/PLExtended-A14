package n2;

import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
/* renamed from: n2.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1318a implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ View f11802d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ int f11803e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f11804f;

    public RunnableC1318a(BottomSheetBehavior bottomSheetBehavior, View view, int i4) {
        this.f11804f = bottomSheetBehavior;
        this.f11802d = view;
        this.f11803e = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11804f.E(this.f11802d, this.f11803e, false);
    }
}
