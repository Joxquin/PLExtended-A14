package K2;

import android.os.SystemClock;
import com.google.android.systemui.smartspace.IcuDateTextView;
/* loaded from: classes.dex */
public final /* synthetic */ class H implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ IcuDateTextView f947d;

    @Override // java.lang.Runnable
    public final void run() {
        IcuDateTextView icuDateTextView = this.f947d;
        int i4 = IcuDateTextView.f8360t;
        icuDateTextView.a(false);
        if (icuDateTextView.f8367q != null) {
            long uptimeMillis = SystemClock.uptimeMillis();
            icuDateTextView.f8367q.postAtTime(icuDateTextView.f8366p, (1000 - (uptimeMillis % 1000)) + uptimeMillis);
        }
    }
}
