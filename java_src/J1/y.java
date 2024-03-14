package J1;

import android.os.Bundle;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$ContentType;
/* loaded from: classes.dex */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    public H f837a;

    /* renamed from: b  reason: collision with root package name */
    public String f838b;

    /* renamed from: c  reason: collision with root package name */
    public SuggestParcelables$ContentType f839c;

    /* renamed from: d  reason: collision with root package name */
    public int f840d;

    /* renamed from: e  reason: collision with root package name */
    public String f841e;

    /* renamed from: f  reason: collision with root package name */
    public int f842f;

    /* renamed from: g  reason: collision with root package name */
    public int f843g;

    /* renamed from: h  reason: collision with root package name */
    public int f844h;

    public y() {
    }

    public y(Bundle bundle) {
        SuggestParcelables$ContentType suggestParcelables$ContentType = null;
        if (bundle.containsKey("rect")) {
            Bundle bundle2 = bundle.getBundle("rect");
            if (bundle2 == null) {
                this.f837a = null;
            } else {
                this.f837a = new H(bundle2);
            }
        }
        if (bundle.containsKey("text")) {
            this.f838b = bundle.getString("text");
        }
        if (bundle.containsKey("contentType")) {
            Bundle bundle3 = bundle.getBundle("contentType");
            if (bundle3 == null) {
                this.f839c = null;
            } else {
                int i4 = bundle3.getInt("value");
                if (i4 == 0) {
                    suggestParcelables$ContentType = SuggestParcelables$ContentType.CONTENT_TYPE_UNKNOWN;
                } else if (i4 == 1) {
                    suggestParcelables$ContentType = SuggestParcelables$ContentType.CONTENT_TYPE_TEXT;
                } else if (i4 == 2) {
                    suggestParcelables$ContentType = SuggestParcelables$ContentType.CONTENT_TYPE_IMAGE;
                }
                this.f839c = suggestParcelables$ContentType;
            }
        }
        if (bundle.containsKey("lineId")) {
            this.f840d = bundle.getInt("lineId");
        }
        if (bundle.containsKey("contentUri")) {
            this.f841e = bundle.getString("contentUri");
        }
        if (bundle.containsKey("contentGroupIndex")) {
            this.f842f = bundle.getInt("contentGroupIndex");
        }
        if (bundle.containsKey("beginChar")) {
            this.f843g = bundle.getInt("beginChar");
        }
        if (bundle.containsKey("endChar")) {
            this.f844h = bundle.getInt("endChar");
        }
    }

    public final Bundle a() {
        Bundle bundle = new Bundle();
        H h4 = this.f837a;
        if (h4 == null) {
            bundle.putBundle("rect", null);
        } else {
            bundle.putBundle("rect", h4.a());
        }
        bundle.putString("text", this.f838b);
        SuggestParcelables$ContentType suggestParcelables$ContentType = this.f839c;
        if (suggestParcelables$ContentType == null) {
            bundle.putBundle("contentType", null);
        } else {
            suggestParcelables$ContentType.getClass();
            Bundle bundle2 = new Bundle();
            bundle2.putInt("value", suggestParcelables$ContentType.value);
            bundle.putBundle("contentType", bundle2);
        }
        bundle.putInt("lineId", this.f840d);
        bundle.putString("contentUri", this.f841e);
        bundle.putInt("contentGroupIndex", this.f842f);
        bundle.putInt("beginChar", this.f843g);
        bundle.putInt("endChar", this.f844h);
        return bundle;
    }
}
