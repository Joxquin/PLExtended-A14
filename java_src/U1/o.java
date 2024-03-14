package U1;

import android.app.ActivityOptions;
import android.content.Intent;
import com.google.android.apps.nexuslauncher.overlay.SwipeTransition;
/* loaded from: classes.dex */
public final class o implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ SwipeTransition f1770d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Intent f1771e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ ActivityOptions f1772f;

    public o(SwipeTransition swipeTransition, Intent intent, ActivityOptions activityOptions) {
        this.f1770d = swipeTransition;
        this.f1771e = intent;
        this.f1772f = activityOptions;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f1770d.getContext().startActivity(this.f1771e, this.f1772f.toBundle());
    }
}
