package n2;

import android.view.View;
import androidx.core.view.C0186x;
import androidx.core.view.J;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public int f11817a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f11818b;

    /* renamed from: c  reason: collision with root package name */
    public final i f11819c = new i(this);

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f11820d;

    public j(BottomSheetBehavior bottomSheetBehavior) {
        this.f11820d = bottomSheetBehavior;
    }

    public final void a(int i4) {
        BottomSheetBehavior bottomSheetBehavior = this.f11820d;
        WeakReference weakReference = bottomSheetBehavior.f7768S;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f11817a = i4;
        if (this.f11818b) {
            return;
        }
        WeakHashMap weakHashMap = J.f3079a;
        C0186x.j((View) bottomSheetBehavior.f7768S.get(), this.f11819c);
        this.f11818b = true;
    }
}
