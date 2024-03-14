package l2;

import Q.i;
import android.view.View;
import androidx.core.view.C0186x;
import androidx.core.view.J;
import com.google.android.material.behavior.SwipeDismissBehavior;
import java.util.WeakHashMap;
/* renamed from: l2.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1292f implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final View f11564d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f11565e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ SwipeDismissBehavior f11566f;

    public RunnableC1292f(SwipeDismissBehavior swipeDismissBehavior, View view, boolean z4) {
        this.f11566f = swipeDismissBehavior;
        this.f11564d = view;
        this.f11565e = z4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        i iVar = this.f11566f.f7740a;
        if (iVar == null || !iVar.g()) {
            if (this.f11565e) {
                this.f11566f.getClass();
                return;
            }
            return;
        }
        View view = this.f11564d;
        WeakHashMap weakHashMap = J.f3079a;
        C0186x.j(view, this);
    }
}
