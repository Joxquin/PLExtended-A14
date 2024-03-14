package J1;

import android.os.Bundle;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode;
/* loaded from: classes.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public String f753a;

    /* renamed from: b  reason: collision with root package name */
    public String f754b;

    /* renamed from: c  reason: collision with root package name */
    public int f755c;

    /* renamed from: d  reason: collision with root package name */
    public FeedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode f756d;

    /* renamed from: e  reason: collision with root package name */
    public F f757e;

    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putString("id", this.f753a);
        bundle.putString("displayName", this.f754b);
        bundle.putInt("invokeRankIndex", this.f755c);
        FeedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode feedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode = this.f756d;
        if (feedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode == null) {
            bundle.putBundle("displayMode", null);
        } else {
            feedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode.getClass();
            Bundle bundle2 = new Bundle();
            bundle2.putInt("value", feedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode.value);
            bundle.putBundle("displayMode", bundle2);
        }
        F f4 = this.f757e;
        if (f4 == null) {
            bundle.putBundle("actionIntent", null);
        } else {
            bundle.putBundle("actionIntent", f4.a());
        }
        return bundle;
    }
}
