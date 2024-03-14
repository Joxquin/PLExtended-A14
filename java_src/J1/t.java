package J1;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$InteractionType;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    public H f791a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f792b;

    /* renamed from: c  reason: collision with root package name */
    public int f793c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f794d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f795e;

    /* renamed from: f  reason: collision with root package name */
    public int f796f;

    /* renamed from: g  reason: collision with root package name */
    public List f797g;

    /* renamed from: h  reason: collision with root package name */
    public SuggestParcelables$InteractionType f798h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f799i;

    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putLong("screenSessionId", 0L);
        H h4 = this.f791a;
        if (h4 == null) {
            bundle.putBundle("focusRect", null);
        } else {
            bundle.putBundle("focusRect", h4.a());
        }
        bundle.putBoolean("expandFocusRect", this.f792b);
        bundle.putInt("focusRectExpandPx", this.f793c);
        bundle.putBundle("previousContents", null);
        bundle.putBoolean("requestStats", false);
        bundle.putBoolean("requestDebugInfo", false);
        bundle.putBoolean("isRtlContent", this.f794d);
        bundle.putBoolean("disallowCopyPaste", this.f795e);
        bundle.putInt("versionCode", this.f796f);
        if (this.f797g == null) {
            bundle.putParcelableArrayList("interactionEvents", null);
        } else {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.f797g.size());
            for (u uVar : this.f797g) {
                if (uVar == null) {
                    arrayList.add(null);
                } else {
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt("action", uVar.f800a);
                    bundle2.putInt("actionButton", uVar.f801b);
                    bundle2.putInt("actionIndex", uVar.f802c);
                    bundle2.putInt("actionMasked", uVar.f803d);
                    bundle2.putInt("buttonState", uVar.f804e);
                    bundle2.putInt("deviceId", uVar.f805f);
                    bundle2.putLong("downTimeMs", uVar.f806g);
                    bundle2.putInt("edgeFlags", uVar.f807h);
                    bundle2.putInt("motionEventFlags", uVar.f808i);
                    bundle2.putFloat("orientation", uVar.f809j);
                    bundle2.putFloat("rawX", uVar.f810k);
                    bundle2.putFloat("rawY", uVar.f811l);
                    bundle2.putInt("source", uVar.f812m);
                    bundle2.putFloat("toolMajor", uVar.f813n);
                    bundle2.putFloat("toolMinor", uVar.f814o);
                    bundle2.putFloat("x", uVar.f815p);
                    bundle2.putFloat("y", uVar.f816q);
                    bundle2.putFloat("xPrecision", uVar.f817r);
                    bundle2.putFloat("yPrecision", uVar.f818s);
                    H h5 = uVar.f819t;
                    if (h5 == null) {
                        bundle2.putBundle("bitmapCropRect", null);
                    } else {
                        bundle2.putBundle("bitmapCropRect", h5.a());
                    }
                    bundle2.putFloat("bitmapScaleX", uVar.f820u);
                    bundle2.putFloat("bitmapScaleY", uVar.f821v);
                    bundle2.putLong("eventTimeMs", uVar.f822w);
                    arrayList.add(bundle2);
                }
            }
            bundle.putParcelableArrayList("interactionEvents", arrayList);
        }
        SuggestParcelables$InteractionType suggestParcelables$InteractionType = this.f798h;
        if (suggestParcelables$InteractionType == null) {
            bundle.putBundle("interactionType", null);
        } else {
            bundle.putBundle("interactionType", suggestParcelables$InteractionType.c());
        }
        bundle.putBoolean("isPrimaryTask", this.f799i);
        return bundle;
    }
}
