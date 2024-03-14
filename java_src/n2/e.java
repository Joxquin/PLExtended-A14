package n2;

import M.r;
import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
/* loaded from: classes.dex */
public final class e implements r {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11809a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f11810b;

    public e(BottomSheetBehavior bottomSheetBehavior, int i4) {
        this.f11810b = bottomSheetBehavior;
        this.f11809a = i4;
    }

    @Override // M.r
    public final boolean a(View view) {
        this.f11810b.B(this.f11809a);
        return true;
    }
}
