package J1;

import android.os.Bundle;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$IntentParamType;
/* loaded from: classes.dex */
public final class G {

    /* renamed from: a  reason: collision with root package name */
    public String f688a;

    /* renamed from: b  reason: collision with root package name */
    public SuggestParcelables$IntentParamType f689b;

    /* renamed from: c  reason: collision with root package name */
    public String f690c;

    /* renamed from: d  reason: collision with root package name */
    public int f691d;

    /* renamed from: e  reason: collision with root package name */
    public float f692e;

    /* renamed from: f  reason: collision with root package name */
    public long f693f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f694g;

    /* renamed from: h  reason: collision with root package name */
    public F f695h;

    /* renamed from: i  reason: collision with root package name */
    public String f696i;

    public G() {
    }

    public G(Bundle bundle) {
        SuggestParcelables$IntentParamType suggestParcelables$IntentParamType;
        if (bundle.containsKey("name")) {
            this.f688a = bundle.getString("name");
        }
        if (bundle.containsKey("type")) {
            Bundle bundle2 = bundle.getBundle("type");
            if (bundle2 == null) {
                this.f689b = null;
            } else {
                int i4 = bundle2.getInt("value");
                if (i4 == 0) {
                    suggestParcelables$IntentParamType = SuggestParcelables$IntentParamType.INTENT_PARAM_TYPE_UNKNOWN;
                } else if (i4 == 1) {
                    suggestParcelables$IntentParamType = SuggestParcelables$IntentParamType.INTENT_PARAM_TYPE_STRING;
                } else if (i4 == 2) {
                    suggestParcelables$IntentParamType = SuggestParcelables$IntentParamType.INTENT_PARAM_TYPE_INT;
                } else if (i4 == 3) {
                    suggestParcelables$IntentParamType = SuggestParcelables$IntentParamType.INTENT_PARAM_TYPE_FLOAT;
                } else if (i4 == 4) {
                    suggestParcelables$IntentParamType = SuggestParcelables$IntentParamType.INTENT_PARAM_TYPE_LONG;
                } else if (i4 == 5) {
                    suggestParcelables$IntentParamType = SuggestParcelables$IntentParamType.INTENT_PARAM_TYPE_INTENT;
                } else if (i4 == 6) {
                    suggestParcelables$IntentParamType = SuggestParcelables$IntentParamType.INTENT_PARAM_TYPE_CONTENT_URI;
                } else {
                    suggestParcelables$IntentParamType = i4 == 7 ? SuggestParcelables$IntentParamType.INTENT_PARAM_TYPE_BOOL : null;
                }
                this.f689b = suggestParcelables$IntentParamType;
            }
        }
        if (bundle.containsKey("strValue")) {
            this.f690c = bundle.getString("strValue");
        }
        if (bundle.containsKey("intValue")) {
            this.f691d = bundle.getInt("intValue");
        }
        if (bundle.containsKey("floatValue")) {
            this.f692e = bundle.getFloat("floatValue");
        }
        if (bundle.containsKey("longValue")) {
            this.f693f = bundle.getLong("longValue");
        }
        if (bundle.containsKey("boolValue")) {
            this.f694g = bundle.getBoolean("boolValue");
        }
        if (bundle.containsKey("intentValue")) {
            Bundle bundle3 = bundle.getBundle("intentValue");
            if (bundle3 == null) {
                this.f695h = null;
            } else {
                this.f695h = new F(bundle3);
            }
        }
        if (bundle.containsKey("contentUri")) {
            this.f696i = bundle.getString("contentUri");
        }
    }
}
