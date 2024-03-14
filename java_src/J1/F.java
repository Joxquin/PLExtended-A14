package J1;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$IntentParamType;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$IntentType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class F {

    /* renamed from: a  reason: collision with root package name */
    public List f680a;

    /* renamed from: b  reason: collision with root package name */
    public String f681b;

    /* renamed from: c  reason: collision with root package name */
    public String f682c;

    /* renamed from: d  reason: collision with root package name */
    public String f683d;

    /* renamed from: e  reason: collision with root package name */
    public String f684e;

    /* renamed from: f  reason: collision with root package name */
    public String f685f;

    /* renamed from: g  reason: collision with root package name */
    public int f686g;

    /* renamed from: h  reason: collision with root package name */
    public SuggestParcelables$IntentType f687h;

    public F(Bundle bundle) {
        SuggestParcelables$IntentType suggestParcelables$IntentType = null;
        if (bundle.containsKey("intentParams")) {
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("intentParams");
            if (parcelableArrayList == null) {
                this.f680a = null;
            } else {
                this.f680a = new ArrayList(parcelableArrayList.size());
                Iterator it = parcelableArrayList.iterator();
                while (it.hasNext()) {
                    Bundle bundle2 = (Bundle) it.next();
                    if (bundle2 == null) {
                        ((ArrayList) this.f680a).add(null);
                    } else {
                        ((ArrayList) this.f680a).add(new G(bundle2));
                    }
                }
            }
        }
        if (bundle.containsKey("packageName")) {
            this.f681b = bundle.getString("packageName");
        }
        if (bundle.containsKey("className")) {
            this.f682c = bundle.getString("className");
        }
        if (bundle.containsKey("action")) {
            this.f683d = bundle.getString("action");
        }
        if (bundle.containsKey("uri")) {
            this.f684e = bundle.getString("uri");
        }
        if (bundle.containsKey("mimeType")) {
            this.f685f = bundle.getString("mimeType");
        }
        if (bundle.containsKey("flags")) {
            this.f686g = bundle.getInt("flags");
        }
        if (bundle.containsKey("intentType")) {
            Bundle bundle3 = bundle.getBundle("intentType");
            if (bundle3 == null) {
                this.f687h = null;
                return;
            }
            int i4 = bundle3.getInt("value");
            if (i4 == 0) {
                suggestParcelables$IntentType = SuggestParcelables$IntentType.DEFAULT;
            } else if (i4 == 1) {
                suggestParcelables$IntentType = SuggestParcelables$IntentType.COPY_TEXT;
            } else if (i4 == 2) {
                suggestParcelables$IntentType = SuggestParcelables$IntentType.SHARE_IMAGE;
            } else if (i4 == 3) {
                suggestParcelables$IntentType = SuggestParcelables$IntentType.LENS;
            } else if (i4 == 4) {
                suggestParcelables$IntentType = SuggestParcelables$IntentType.SAVE;
            } else if (i4 == 5) {
                suggestParcelables$IntentType = SuggestParcelables$IntentType.COPY_IMAGE;
            } else if (i4 == 6) {
                suggestParcelables$IntentType = SuggestParcelables$IntentType.SMART_REC;
            } else if (i4 == 7) {
                suggestParcelables$IntentType = SuggestParcelables$IntentType.IMAGE_SEARCH;
            }
            this.f687h = suggestParcelables$IntentType;
        }
    }

    public final Bundle a() {
        Bundle bundle = new Bundle();
        if (this.f680a == null) {
            bundle.putParcelableArrayList("intentParams", null);
        } else {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(((ArrayList) this.f680a).size());
            Iterator it = ((ArrayList) this.f680a).iterator();
            while (it.hasNext()) {
                G g4 = (G) it.next();
                if (g4 == null) {
                    arrayList.add(null);
                } else {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("name", g4.f688a);
                    SuggestParcelables$IntentParamType suggestParcelables$IntentParamType = g4.f689b;
                    if (suggestParcelables$IntentParamType == null) {
                        bundle2.putBundle("type", null);
                    } else {
                        Bundle bundle3 = new Bundle();
                        bundle3.putInt("value", suggestParcelables$IntentParamType.value);
                        bundle2.putBundle("type", bundle3);
                    }
                    bundle2.putString("strValue", g4.f690c);
                    bundle2.putInt("intValue", g4.f691d);
                    bundle2.putFloat("floatValue", g4.f692e);
                    bundle2.putLong("longValue", g4.f693f);
                    bundle2.putBoolean("boolValue", g4.f694g);
                    F f4 = g4.f695h;
                    if (f4 == null) {
                        bundle2.putBundle("intentValue", null);
                    } else {
                        bundle2.putBundle("intentValue", f4.a());
                    }
                    bundle2.putString("contentUri", g4.f696i);
                    arrayList.add(bundle2);
                }
            }
            bundle.putParcelableArrayList("intentParams", arrayList);
        }
        bundle.putString("packageName", this.f681b);
        bundle.putString("className", this.f682c);
        bundle.putString("action", this.f683d);
        bundle.putString("uri", this.f684e);
        bundle.putString("mimeType", this.f685f);
        bundle.putInt("flags", this.f686g);
        SuggestParcelables$IntentType suggestParcelables$IntentType = this.f687h;
        if (suggestParcelables$IntentType == null) {
            bundle.putBundle("intentType", null);
        } else {
            suggestParcelables$IntentType.getClass();
            Bundle bundle4 = new Bundle();
            bundle4.putInt("value", suggestParcelables$IntentType.value);
            bundle.putBundle("intentType", bundle4);
        }
        return bundle;
    }
}
